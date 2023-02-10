"use strict";

import { TransactionModel } from '../models/transaction.model';

export class AccountService {

    constructor() { }

    transaction_aggregate(data: { id: Number }) {
        return new Promise((resolve, reject) => {
            TransactionModel.aggregate([
                {
                    $match: { $expr: { $eq: ["$account_id", data.id] } } 
                },
                {
                    $unwind: "$transactions"
                },
                {
                    "$group": {
                      "_id": "$account_id",
                      "total_amount_bought": {
                        "$sum": {
                          "$cond": [
                            { "$eq": [ "$transactions.transaction_code", "buy" ] },
                            "$transactions.amount",
                            0
                          ]
                        }
                      },
                      "total_amount_sold": {
                        "$sum": {
                          "$cond": [
                            { "$eq": [ "$transactions.transaction_code", "sell" ] },
                            "$transactions.amount",
                            0
                          ]
                        }
                      }
                    }
                }
            ]).then(data => {
                resolve(data[0])
            }).catch(error => {
                reject(error)
            })
        })
    }

}

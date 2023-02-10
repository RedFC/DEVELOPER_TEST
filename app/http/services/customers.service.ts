"use strict";

import { CustomerModel } from '../models/customer.model';

export class CustomerService {

    constructor() { }

    customer_aggregate(data: { username: String }) {
        return new Promise((resolve, reject) => {
            CustomerModel.aggregate([
                {
                    $match: { $expr: { $eq: ["$username", data.username] } }
                },
                {
                    $lookup: {
                        "from": 'accounts',
                        "let": { "account_ids": "$accounts" },
                        "pipeline": [
                            {
                                $match: {
                                    $expr: { $in: ["$account_id", "$$account_ids"] }
                                }
                            },
                            {
                                $lookup: {
                                    "from": 'transactions',
                                    "let": { "accountID": "$account_id" },
                                    "pipeline": [
                                        {
                                            $match: {
                                                $expr: { $eq: ["$account_id", "$$accountID"] }
                                            }
                                        },
                                        {
                                            $project: {
                                                transaction_count: 1
                                            }
                                        }
                                    ],
                                    "as": "transactions"
                                }
                            },
                            { $unwind: "$transactions" },
                            {
                                $addFields: {
                                    "transaction_count": "$transactions.transaction_count"
                                }
                            }
                        ],
                        "as": "accounts"
                    }
                },
                {
                    $project: {
                        name: 1,
                        birthdate: 1,
                        email: 1,
                        accounts: {
                            account_id: 1,
                            limit: 1,
                            transaction_count: 1
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

"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.CustomerService = void 0;
const customer_model_1 = require("../models/customer.model");
class CustomerService {
    constructor() { }
    customer_aggregate(data) {
        return new Promise((resolve, reject) => {
            customer_model_1.CustomerModel.aggregate([
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
                resolve(data[0]);
            }).catch(error => {
                reject(error);
            });
        });
    }
}
exports.CustomerService = CustomerService;
//# sourceMappingURL=customers.service.js.map
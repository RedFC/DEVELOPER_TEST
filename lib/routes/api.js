"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = __importDefault(require("express"));
const Customer_1 = require("../app/http/controller/api/Customer");
const Accounts_1 = require("../app/http/controller/api/Accounts");
const app = express_1.default();
app.use("/customer", Customer_1.CustomerRouter);
app.use("/account", Accounts_1.AccountsRouter);
module.exports = app;
//# sourceMappingURL=api.js.map
"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.CustomerRouter = void 0;
const express_1 = __importDefault(require("express"));
exports.CustomerRouter = express_1.default.Router();
const customer_controller_1 = require("./customer.controller");
let customer_controller = new customer_controller_1.customerController();
exports.CustomerRouter.post('/', customer_controller.customer_data_by_username);
//# sourceMappingURL=index.js.map
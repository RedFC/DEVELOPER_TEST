import express from 'express';
export const CustomerRouter = express.Router();
import { customerController } from './customer.controller'
let customer_controller = new customerController();

CustomerRouter.post('/', customer_controller.customer_data_by_username);
import express from 'express';
export const AccountsRouter = express.Router();
import { AccountsController } from './accounts.controller'
let accounts_controller = new AccountsController();

AccountsRouter.post('/', accounts_controller.account_data_by_id);
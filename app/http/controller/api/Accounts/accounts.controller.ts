import { AccountService } from "../../../services/accounts.service";

export class AccountsController {

    async account_data_by_id(req, res) {
        try {
            let accountService = new AccountService();
            let data = await accountService.transaction_aggregate({ id: parseInt(req.body.account_id) });
            delete data['_id'];
            return res.send(data)
        } catch (error) {
            return res.send(error)
        }
    }

}

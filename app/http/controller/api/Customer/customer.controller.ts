import * as _ from "lodash";
import * as fs from "fs";
import moment from "../../../../modules/moment";
import short from 'short-uuid';
import { Cloudinary } from "../../../../constants/cloudinary";
import { CustomerService } from "../../../services/customers.service";
import { AccountService } from "../../../services/accounts.service";
export class customerController {

    async customer_data_by_username(req,res){
        try {
            let customerService = new CustomerService();
            let data = await customerService.customer_aggregate({username : req.body.username});
            return res.send(data)
        } catch (error) {
            return res.send(error)
        }
    }

}

import mongoose from 'mongoose';

let AccountSchema = new mongoose.Schema({
    'account_id': Number,
    'limit': Number,
    'products': [String]
});

const AccountModel = mongoose.model('accounts',AccountSchema);

export {AccountModel};
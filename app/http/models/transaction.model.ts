import mongoose from 'mongoose';

let TransactionSchema = new mongoose.Schema({
    'Transaction_id': Number,
    'transaction_count': Number,
    'bucket_start_date': Date,
    'bucket_end_date': Date,
    'transactions': [{
        date:Date,
        amount: Number,
        transaction_code:String,
        symbol:String,
        price: String,
        total: String
    }]
});

const TransactionModel = mongoose.model('transactions', TransactionSchema);

export { TransactionModel };
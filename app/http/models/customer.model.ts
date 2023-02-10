import mongoose from 'mongoose';

let CustomerSchema = new mongoose.Schema({
    'username': String,
    'name': String,
    'address': String,
    'birthdate': Date,
    'email': String,
    'active': Boolean,
    'accounts': [Number],
    'tier_and_details': {
        ['id']: {
            'tier': String,
            'id': String,
            'active': Boolean,
            'benefits': [String]
        }
    }
});

const CustomerModel = mongoose.model('customers', CustomerSchema);

export { CustomerModel };
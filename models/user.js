const mongoose = require('mongoose');
const config = require('./config/database');
const bcrypt = require('bcryptjs');

//user schema
const UserSchema = mongoose.Schema({
    name: {
        type: String
    },
    email: {
        type: String,
        required: true
    },
    username: {
        type: String,
        required: true
    },
    password: {
        type: String,
        required: true
    }

});
const User = module.exports = mongoose.model('User',UserSchema);

module.exports.getUserById = function(id, callback){
    user.findById(id,callback);
}
module.exports.getUserByName = function(username, callback){
    const query = {username: username}
    User.findOne(query,callback);
}
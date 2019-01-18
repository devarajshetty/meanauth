const express = require('express');
const path = require('path');
const bodyParser = require('body-parser');
const cors = require('cors');
const passport = require('passport');
const mongoose = require('mongoose');
const config = require('./config/database')

mongoose.connect(config.database);
mongoose.connection.on('connected',() => {
    console.log('database connected');
});

mongoose.connection.on('error',(err) => {
    console.log('database connected'+err);
});
const app = express();

const users =require('./routes/users')

const port = 3000;
//cors
app.use(cors());

//static folder

app.use(express.static(path.join(__dirname,'public')));

//bodyparser
app.use(bodyParser.json());


app.get('/' ,(req,res) => {
    res.send('invalid endpoint');
});

app.use('/user',  users)

app.listen(port, () => {
    console.log('server started')
});
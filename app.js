const express = require('express');
const path = require('path');
const bodyParser = require('body-parser');
const cors = require('cors');
const passport = require('passport');
const mongoose = require('mongoose');

const app = express();

const users =require('./routes/users')

const port = 3000;
//cors
app.use(cors());

//bodyparser
app.use(bodyParser.json());


app.get('/' ,(req,res) => {
    res.send('invalid endpoint');
});

app.use('/user',  users)

app.listen(port, () => {
    console.log('server started')
});
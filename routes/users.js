const express = require('express');
const router =express.Router();

//register
router.get('/register' ,(req,res,next) => {
    res.send('User Register');
});
//authentication
router.get('/authentication' ,(req,res,next) => {
    res.send('authentication');
});

//profile
router.get('/profile' ,(req,res,next) => {
    res.send('profile');
});
//validate
router.get('/validate' ,(req,res,next) => {
    res.send('validate');
});
module.exports = router;
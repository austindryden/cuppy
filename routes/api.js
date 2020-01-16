const express = require('express');
const router = express.Router();

router.get('/testing', (req, res)=>{
    res.send('yeet');
});

router.get('/', (req,res)=>{
    res.render('api');
});


//returns name and id for all shops
router.get('/shops', (req,res)=>{
    res.json("");
});

//returns full info for given shop, and all roasters using/used
router.get('/shops/:id', (req,res)=>{
    res.json("");
});

//returns name and id for all whole bean coffees
router.get('/bean', (req,res)=>{
    res.json("");
});

//returns full info for given whole bean coffee
router.get('/bean/:id', (req,res)=>{
    res.json("");
});


//returns name and id for all roasters
router.get('/roasters', (req,res)=>{
    res.json("");
});

//returns full info for given roaster, including list of cafes using
router.get('/roasters/:id', (req,res)=>{
    res.json("");
});

//returns full info for all green coffees.
router.get('/green', (req,res)=>{
    res.json("");
});

//returns full info for given green coffee id.
router.get('/green/:id', (req,res)=>{
    res.json("");
});


module.exports = router;
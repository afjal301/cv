const router=require('express').Router()
const {addSpecialite,getAllSpecialite}=require('../controllers/specialiteController')
router.get('/getAllSpecialite',getAllSpecialite)
router.post('/addSpecialite',addSpecialite)
module.exports =router 
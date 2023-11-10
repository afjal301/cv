const express = require('express');
const router = express.Router();
const clientController = require('../controllers/clientController');
const multer =require('multer')
const storage = multer.diskStorage({
    destination: (req, file, cb) => {
      cb(null, 'public/'); // Répertoire où les photos seront sauvegardées
    },
    filename: (req, file, cb) => {
      cb(null, file.originalname);
    }
});
const upload = multer({ storage : storage });

// Créer un utilisateur
/*clientController.createClient*/
router.post('/createCv', upload.single('file'), (req,res)=>{
  const valuejson=JSON.parse(req.body.data)
    console.log(valuejson)
  clientController.createClient(valuejson)
});
//router.get('/getCom', userController.getUser);
//router.put('/utilisateurs/:idup', userController.updateUserById);
router.get('/getAllCV',clientController.getAllCV)

module.exports = router;

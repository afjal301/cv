const db = require('../config/database');
exports.getAllSpecialite=(req,res)=>{
    db.query("SELECT * FROM specialite",(err,result)=>{
        if(err){
            res.status(404).send("il y a une erreur de serveur")
        }else{
            res.status(200).json(result)
        }
    })
}
exports.addSpecialite=(req,res)=>{
    if(req.body.nom){
        db.query("INSERT INTO specialite(nom) VALUES(?) ",[req.body.nom],(err,result)=>{
            if(err){
                res.status(404).send("il y a une erreur de serveur")
            }else{
                res.status(200).json("ajout bien resussit")
            }
        })
    }
    else{
        res.status(403).send("veuiller verifier bien l'erreur ")
    }
}
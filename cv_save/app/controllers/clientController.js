const db = require('../config/database');

// Créer un user Client
exports.createClient = (dataItem) => {
  const { Nom, Prenom,Reference, Nationalite,Mail, Specialite, Nom_fichier,Date_ajout,entreprise,experience} = dataItem;
  const sql = 'INSERT INTO Client (Nom, Prenom,Reference, Nationalite,Mail, Specialite, Nom_fichier,Date_ajout,entreprise,experience) VALUES (?, ?, ?,?,?,?,?,?,?,?)';
  db.query(sql, [Nom, Prenom,Reference, Nationalite,Mail, Specialite, Nom_fichier,Date_ajout,entreprise,experience], (err, result) => {
    if (err) {
      return err;
    } else {
      return "okey";
    }
  });
};
exports.getAllCV=(req,res)=>{
  const sql = 'SELECT * FROM Client';
  db.query(sql, (err, result) => {
    if (err) {
      res.status(500).json({ message: 'Erreur lors de la création de l\'utilisateur' });
    } else {
      res.status(200).send(result);
    }
  });
}


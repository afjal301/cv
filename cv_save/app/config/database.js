const mysql = require('mysql2');

const db = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'afjal',
  database: 'cv_db'
});

db.connect((err) => {
  if (err) {
    console.error('Erreur lors de la connexion à la base de données :', err);
  } else {
    console.log('Connecté à la base de données');
  }
});

module.exports = db;

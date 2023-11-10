const express = require('express');
const app = express();
const userRoutes = require('./app/routes/userRoutes');
const specialiteRoute =require('./app/routes/specialiteRoute')
const port = 3000;
const cors =require('cors')

// Middleware pour analyser le JSON
app.use(express.json());
app.use(cors())

// Servez les fichiers statiques depuis un répertoire (par exemple, "public")
app.use(express.static('public'));
app.use(express.static('data'));

// Utilisation des routes utilisateur
app.use('/api', userRoutes);
//utilisation des routes de Specialite 
app.use('/api',specialiteRoute)
// Lancer le serveur
app.listen(port, () => {
  console.log(`Serveur en cours d'écoute sur le port ${port}`);
});


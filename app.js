// Dieser Code ist eine Node.js-Anwendung, die das Express-Framework verwendet

// Package Express importieren
const express = require('express'); // In dieser Zeile wird das Express-Framework in die Variable express importiert

// init app
const port = 3000; // Hier wird die Portnummer definiert, auf der die Express-Anwendung lauschen wird.
const app = express(); // Hier wird eine Express-Anwendung initialisiert.

app.get('/', (req, res) => res.send('Hello From DockerHub!'));

app.listen(port, () => console.log(`App listening on port ${port}`));

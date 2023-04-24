import express from "express";


import climaRuta from './ruta/clima-ruta.js'


const app = express()
app.use(express.json())
app.use((req, res, next) => {
    res.setHeader('Access-Control-Allow-Origin', '*');
    res.setHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE');
    res.setHeader('Access-Control-Allow-Headers', 'Content-Type');
    next();
});

app.use('/api',climaRuta)


app.listen(4000)

console.log("server runninf on port 4000")

require('dotenv').config()
const http= require('http')
const express =require('express')
const db = require('./query')

const path = require('path')
const cors = require('cors')
let app = express();
const bodyParser =require('body-parser')
app.use(express.json())
app.use(express.urlencoded({extended : true}))
app.use(cors())
app.get('/', function(req, res) {
  res.send('hello world');
});

app.get('/voo/:origem/:destino',db.getVoosOD)
app.get('/voo/:origem/:destino/:dataPartida',db.getVoosODDp)
app.get('/voo/:origem/:destino/:dataPartida/:preco',db.getVoosODDpP)
app.post('/reserva',db.cadReservaVoos)
app.put('/reserva/:reserva',db.updateReservaVoos)
app.delete('/reserva/:reserva',db.deleteReservaVoos)
app.listen(3003)

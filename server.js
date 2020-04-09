require('dotenv').config()
var porta = process.env.PORT || 8080;
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
  res.json({"a":"hello world"});
});

app.get('/voo/:origem/:destino',db.getVoosOD)
app.get('/voo/:origem/:destino/:dataPartida',db.getVoosODDp)
app.get('/voo/:origem/:destino/:dataPartida/:preco',db.getVoosODDpP)
app.post('/reserva',db.cadReservaVoos)
app.put('/reserva/:reserva',db.updateReservaVoos)
app.delete('/reserva/:reserva',db.deleteReservaVoos)
app.listen(porta)

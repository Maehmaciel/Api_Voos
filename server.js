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

app.get('/pedidos',db.getVoosOD)
app.get('/pedidos/:cod',db.getVoosODDp)
app.get('/caminhoes',db.getVoosODDpP)
app.post('/login',db.cadReservaVoos)
app.post('/cadCaminhao',db.cadReservaVoos)
app.post('/cadUser',db.cadReservaVoos)
app.post('/pedido',db.cadReservaVoos)
app.put('/reserva/:reserva',db.updateReservaVoos)
app.delete('/reserva/:reserva',db.deleteReservaVoos)
app.listen(porta)

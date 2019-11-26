const porta=3003
const http= require('http')
const express =require('express')
const db = require('./query')
let app = express();
const bodyParser =require('body-parser')
app.use(bodyParser.json())

app.get('/voo/:origem/:destino',db.getVoosOD)
app.get('/voo/:origem/:destino/:dataPartida',db.getVoosODDp)
app.get('/voo/:origem/:destino/:dataPartida/:preco',db.getVoosODDpP)
app.post('/reserva',db.cadReservaVoos)
app.put('/reserva/:reserva',db.updateReservaVoos)
app.delete('/reserva/:reserva',db.deleteReservaVoos)

http.createServer(app).listen(porta, () => {
   
console.log('Porta:'+porta)
})
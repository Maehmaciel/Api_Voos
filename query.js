require('dotenv').config()
const Pool = require('pg').Pool
const pool = new Pool({
  user: process.env.DB_USER,
  host: process.env.DB_HOST,
  database: process.env.DB_DATABASE,
  password: process.env.DB_PASSWORD,
  port: process.env.DB_PORT,
})

const getVoosOD= (request, response) => {
  const text = "SELECT v.preco, v.partida, v.chegada, a.prefixoAero aviao, p.nome piloto, c.nome companhia, o.nome origem,d.nome destino FROM voo v INNER JOIN aviao a ON v.aviao_id  = a.id INNER JOIN piloto p ON v.piloto_id  = p.id INNER JOIN companhia c ON v.companhia_id  = c.id INNER JOIN cidade o ON v.origem_id  = o.id INNER JOIN cidade d ON v.destino_id  = d.id where d.nome=$1 AND o.nome=$2 "
const values = [request.params.destino,request.params.origem]
pool.query(text, values, (err, res) => {
  if (err) {
    response.status(200).json('Opa,errinho')
  } else {
    response.status(200).json(res.rows[0])
   
  }
})
    
  }
 

  const getVoosODDp= (request, response) => {
    const text = "SELECT v.preco, v.partida, v.chegada, a.prefixoAero aviao, p.nome piloto, c.nome companhia, o.nome origem,d.nome destino FROM voo v INNER JOIN aviao a ON v.aviao_id  = a.id INNER JOIN piloto p ON v.piloto_id  = p.id INNER JOIN companhia c ON v.companhia_id  = c.id INNER JOIN cidade o ON v.origem_id  = o.id INNER JOIN cidade d ON v.destino_id  = d.id where d.nome=$1 AND o.nome=$2 AND CAST(v.partida AS DATE) =$3"
const values = [request.params.destino,request.params.origem,request.params.dataPartida]
pool.query(text, values, (err, res) => {
  if (err) {
    response.status(200).json('Opa,errinho')
  } else {
    response.status(200).json(res.rows[0])
   
  }
})
    
  }
 
  const getVoosODDpP= (request, response) => {
    const text="SELECT v.preco, v.partida, v.chegada, a.prefixoAero aviao, p.nome piloto, c.nome companhia, o.nome origem,d.nome destino FROM voo v INNER JOIN aviao a ON v.aviao_id  = a.id INNER JOIN piloto p ON v.piloto_id  = p.id INNER JOIN companhia c ON v.companhia_id  = c.id INNER JOIN cidade o ON v.origem_id  = o.id INNER JOIN cidade d ON v.destino_id  = d.id where d.nome=$1 AND o.nome=$2 AND CAST(v.partida AS DATE) =$3 AND preco=$4"
    const values = [request.params.destino,request.params.origem,request.params.dataPartida, request.params.preco]
    pool.query(text, values, (err, res) => {
      if (err) {
        response.status(200).json('Opa,errinho')
      } else {
        response.status(200).json(res.rows[0])
       
      }
    })
        
  }

  const cadReservaVoos= (request, response) => {
    const text = 'insert into reserva (economica,voo_id,cliente_id) VALUES($1, $2,$3) RETURNING *'
const values = [request.body.economica,request.body.voo_id,request.body.cliente_id]

pool.query(text, values, (err, res) => {
  if (err) {
    response.status(200).json('Opa,errinho')
  } else {
    response.status(200).json(res.rows[0])
   
  }
})
    
  }

  const updateReservaVoos= (request, response) => {
    const text = 'update reserva set economica=$1 where id= $2 RETURNING *'
const values = [request.body.economica,request.params.reserva]

pool.query(text, values, (err, res) => {
  if (err) {
    response.status(200).json('Opa,errinho')
  } else {
    response.status(200).json(res.rows[0])
   
  }
})
    
  }


  const deleteReservaVoos= (request, response) => {
    const text = 'delete from reserva where id= $1'
const values = [request.params.reserva]

pool.query(text, values, (err, res) => {
  if (err) {
    response.status(200).json('Opa,errinho')
  } else {
    response.status(200).json(res.rows[0])
   
  }
})
    
  }

  module.exports = {
    getVoosOD,
    getVoosODDp,
    getVoosODDpP,
    cadReservaVoos,
    updateReservaVoos,
    deleteReservaVoos
   
  }
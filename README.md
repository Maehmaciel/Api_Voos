# Api_Voos
Trabalho da disciplina de Sistemas distribuidos

## Banco de dados
voos_db

## Variaveis de ambiente
.env

DB_HOST=localhost



DB_PORT=5432


// usuario do Banco
DB_USER=

// senha do Banco
DB_PASSWORD=

// nome do Banco
DB_DATABASE=


## Rodando a aplicação
// instala as dependencias, (node_modules)
npm install

//inicia o servidor
npm start


## Rotas

get('/voo/:origem/:destino')


get('/voo/:origem/:destino/:dataPartida')


get('/voo/:origem/:destino/:dataPartida/:preco')


post('/reserva')


put('/reserva/:reserva')


delete('/reserva/:reserva')

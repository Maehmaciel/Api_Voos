# Api_Voos
Trabalho da disciplina de Sistemas distribuidos

## Banco de dados
voos.db

## Variaveis de ambiente
.env

DB_HOST=localhost
&nbsp;
DB_PORT=5432
&nbsp;
DB_USER=
DB_PASSWORD=
DB_DATABASE=


## Rodando a aplicação
npm install
npm start


## Rotas

get('/voo/:origem/:destino')
get('/voo/:origem/:destino/:dataPartida')
get('/voo/:origem/:destino/:dataPartida/:preco')


post('/reserva')
put('/reserva/:reserva')
delete('/reserva/:reserva')

import mysql from "mysql"

export const db = mysql.createConnection({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_NAME
});

db.connect((err) => {
    if (err) {
        console.error('Erro ao conectar ao banco de dados:', err);
        process.exit(1); // Encerra a aplicação se a conexão falhar
    } else {
        console.log('Conectado ao banco de dados!');
    }
});
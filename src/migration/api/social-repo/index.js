const app = require('./src/app');
const pool = require('./src/pool');

pool
    .connect({
        user: 'postgres',
        host: 'localhost',
        database: 'socialnetwork',
        password: 'admin',
        port: 5432
    })
    .then(() => {
        app().listen(8000, ()=>{
            console.log('Server is running..')
        });
    })
    .catch(err => console.error(err.stack));



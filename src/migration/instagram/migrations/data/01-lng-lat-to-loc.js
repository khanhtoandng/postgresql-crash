const {Pool} = require('pg');

const pool = new Pool({
    user: 'postgres',
    host: 'localhost',
    database: 'socialnetwork',
    password: 'admin',
    port: 5432,
})

pool.query(`
    UPDATE posts
    SET loc = POINT(lng,lat)
    WHERE loc ISNULL;
`, (err, res) => {
    if(!err) {
        console.log('Update complete');
        pool.end;
    } else {
        console.log(err.stack);
    }
})

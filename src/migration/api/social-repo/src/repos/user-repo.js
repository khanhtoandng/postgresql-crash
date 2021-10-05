const pool = require('../pool');
const toCamelCase = require('./utils/to-CamelCase');

class UserRepo {
    static async find() {
        const {rows} = await pool.query('SELECT * FROM users;')

        return toCamelCase(rows)
    }

    static async findById(id) {
        const {row} = await pool.query(`SELECT * FROM users WHERE id = ${id};`)

        return toCamelCase(rows)[0];
    
    }

    static insert(user) {

    }
}

module.exports = UserRepo;
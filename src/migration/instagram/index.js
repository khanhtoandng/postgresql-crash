const express = require('express');
const {Pool} = require('pg');

const app = express();

const pool = new Pool({
    user: 'postgres',
    host: 'localhost',
    database: 'socialnetwork',
    password: 'admin',
    port: 5432,
})

app.use(express.urlencoded({extended: true}));

app.get('/posts', async (req, res) => {
    const {rows} = await pool.query(`
        SELECT * FROM posts;
    `)
    res.send(`
    <table>
    <thead>
      <tr>
        <th>id</th>
        <th>lng</th>
        <th>lat</th>
      </tr>
    </thead>
    <tbody>
      ${rows
        .map((row) => {
          return `
          <tr>
            <td>${row.id}</td>
            <td>${row.loc.x}</td>
            <td>${row.lox.y}</td>
          </tr>
        `;
        })
        .join('')}
    </tbody>
  </table>
  <form method="POST">
    <h3>Create Post</h3>
    <div>
      <label>Lng</label>
      <input name="lng" />
    </div>
    <div>
      <label>Lat</label>
      <input name="lat" />
    </div>
    <button type="submit">Create</button>
  </form>
    `);
});

app.post('/posts', async (req, res) => {
    const { lng, lat } = req.body;
  
    await pool.query('INSERT INTO posts (loc) VALUES ($1);', 
    [`(${lat}, ${lng})`]);
  
    res.redirect('/posts');
});

app.listen(8000, () => {
    console.log(`Server is running...`);
});
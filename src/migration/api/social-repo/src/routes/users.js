const express = require('express');
const UserRepo = require('../repos/user-repo')
const router = express.Router();

router.get('/users', async (req, res) => {
    const users = await UserRepo.find()

    res.send(users)
});

router.get('/users/:id', async (req, res) => {
    const {id} = req.params;

    const user = await UserRepo.fingById(id);

    if(user) {
        res.send(user);
    } else {
        res.sendStatus(404);
    }
});

router.post('/users', async (req, res) => {});
router.put('/users', async (req, res) => {});
router.delete('/users/:id', async (req, res) => {});

module.exports = router;


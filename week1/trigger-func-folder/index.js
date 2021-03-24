const express = require('express');
const app = express();
app.use(express.json());

app.post('/', (req, res) => {
    console.log('received a post req with body: ', req.body);
    res.sendStatus(200);
    // res.send(`Hello`);
});

const port = process.env.PORT || 8081;
app.listen(port, () => {
    console.log('listening on port', port);
});
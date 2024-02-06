const express = require('express');

const app = new express();

const port = process.env.PORT || 8080;

app.get('/', (req, res)=>{
    res.send('Tech With Nani');
});

app.listen(port, ()=>{
    console.log(`Server is running on port ${port}`);
})
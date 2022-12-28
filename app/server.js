const express = require('express');
const app = express();
require('dotenv').config();

app.get('/', (req, res) => {
  res.send({
    status: true,
    msg: "Hello World!"
  });
});
console.log(process.env.PORT)
app.listen(process.env.PORT, () => {
  console.log(`Example app listening on port ${process.env.PORT}`);
});

const express = require('express')
const app = express()
const port = 3003

app.get('/hi', (req, res) => {
  res.send('I am listening...')
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})

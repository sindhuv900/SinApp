const express = require("express");
const os = require("os");
const app = express();
const port = 3000;

app.get("/", (req, res) => {
  let data = `Node Version :${process.version},` + `\nHostname: ${os.hostname}`;
  res.send(`${data}`);
});

app.listen(port, () => {
  console.log(`Node Version :${process.version}`, `Hostname: ${os.hostname}`);
});

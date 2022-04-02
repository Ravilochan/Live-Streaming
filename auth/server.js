const express = require("express");
const cors = require("cors");
const helmet = require("helmet");
const logger = require("morgan");
const app = express();

app.use(logger("dev"));
app.use(cors());
app.use(helmet());
app.use(express.json());
app.use(express.urlencoded({ extended: false }));

app.post("/auth", function (req, res) {
  /* This server is only available to nginx */
  const streamkey = req.body.key;

  /* You can make a database of users instead :) */
  if (streamkey === "supersecret") {
    res.status(200).send();
    return;
  }

  /* Reject the stream */
  res.status(403).send();
});

app.listen(8000, function () {
  console.log("Listening on port 8000!");
});

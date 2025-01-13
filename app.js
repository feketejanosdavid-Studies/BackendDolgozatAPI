const express = require("express");
const movieRouter = require("./routers/movies");
const cors = require("cors");
const bodyParser = require("body-parser");
const app = express();

require ("dotenv").config();

app.use(express.json());
app.use(cors());
app.use(bodyParser.json());
app.use("/movies", movieRouter);

app.get("/", (req, res) => {
    res.json({message: "Ok, working..."});
})

app.use((err, req, res, next) => {
    console.log("Something wrong...",err.message, err.stack);
    res.status(500).json({message: err.message});
    return
})

app.listen(3000, () => console.log("Server running on port 3000"));
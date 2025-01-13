const express = require("express");

const app = express();

app.get("/", (req, res) => {
    res.json({message: "Ok, working..."});
})

app.use((err, req, res, next) => {
    console.log("Something wrong...",err.message, err.stack);
    return res.status(500).json({message: err.message});
})

app.listen(3000, () => console.log("Server running on port 3000"));
const express = require("express");
const router = express.Router();
const movies = require("../services/movies");

router.get("/", async function(req, res, next) {
    try {
        res.json(await movies.getDatas());
    }
    catch (err) {
        next(err);
    }
})

module.exports = router;
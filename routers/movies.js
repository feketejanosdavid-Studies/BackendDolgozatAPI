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

router.get("/:id", async function(req, res, next) {
    try {
        res.json(await movies.getMovie(req.params.id));
    }
    catch (err) {
        next(err);
    }
})

router.post("/", async function (req, res, next) {
    console.log("Post Movie", req.body);
    try {
        res.json(await movies.createMovie(req.body))
    }
    catch (err) {
        next(err);
    }
})

router.delete("/:id", async function (req, res, next) {
    try {
        res.json(await movies.deleteMovie(req.params.id))
    }
    catch (err) {
        next(err);
    }
})

module.exports = router;
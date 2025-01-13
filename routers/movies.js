const express = require("express");
const router = express.Router();
const movies = require("../services/movies");

router.get("/", async function(req, res, next) {
    try {
        res.json(await movies.getMovies());
    }
    catch (err) {
        next(err);
    }
})

router.get("/:id", async function(req, res, next) {
    try {
        res.json(await movies.getMovieByID(req.params.id));
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

router.put("/:id", async function (req, res, next) {
    try {
        res.json(await movies.updateMovie(req.params.id, req.body))
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

router.patch("/:id", async function (req, res, next) {
    try {
        res.json(await movies.patchMovie(req.params.id, req.body))
    }
    catch (err) {
        next(err);
    }
})

module.exports = router;
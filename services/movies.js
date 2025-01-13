const db = require("./db");

async function getMovies() {
    const rows = await db.query(
        `SELECT * FROM movies`
    )
    return rows?rows:[];
}

async function getMovieByID(id) {
    const rows = await db.query(
        `SELECT * FROM movies WHERE id = ?`,
        [id]
    )
    return rows?rows[0]:{};
}

async function createMovie(movie) {
    console.log("Movie: ", movie);
    const result =await db.query(
        `INSERT INTO movies (title, director, genre, release_year, poster)
        VALUES (?, ?, ?, ?, ?)`,
        [movie.title, movie.director, movie.genre, movie.release_year, movie.poster]
    )
    let message = "movie not created"
    if (result.affectedRows) {
        message = "movie created"
    }
    return {message}
}

async function updateMovie(id, movie) {
    const result = await db.query(
        `UPDATE movies SET title = ?, director = ?, genre = ?, release_year = ?, poster = ? WHERE id = ?`,
        [movie.title, movie.director, movie.genre, movie.release_year, movie.poster, id]
    )
    let message = "movie not updated"
    if (result.affectedRows) {
        message = "movie updated"
    }
    return {message}
}

async function deleteMovie(id) {
    const result = await db.query(
        `DELETE FROM movies WHERE id = ?`,
        [id]
    )
    let message = "movie not deleted"
    if (result.affectedRows) {
        message = "movie deleted"
    }
    return {message}
}



module.exports = {
    getMovies,
    getMovieByID,
    createMovie,
    updateMovie,
    deleteMovie
};
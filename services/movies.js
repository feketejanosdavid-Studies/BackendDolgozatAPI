const db = require("./db");

async function getDatas() {
    const rows = await db.query(
        `SELECT * FROM movies`
    )
    return rows?rows:[];
}

module.exports = {
    getDatas
};
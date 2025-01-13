import express from "express";

const app = express();

app.listen(3300, () => {
    console.log("Server is running on port http://localhost/3300");
});
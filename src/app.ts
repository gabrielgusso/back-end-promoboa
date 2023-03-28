import express, { application, Request, Response } from "express";
import { authenticationRouter } from "./routes/auth.router.js";
import cors from "cors"

const server = express();

server
.use(express.json())
.use(cors())
.use(authenticationRouter)
.get("/health", (req, res) => res.send("Ok"))

server.listen(4000, () => {
  console.log("Server listening on port 4000");
});

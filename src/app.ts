import express, { application, Request, Response } from "express";
import { authenticationRouter } from "./routes/auth.router.js";
import cors from "cors"
import { connection } from "./config/database.js";

const server = express();

server
.use(express.json())
.use(cors())
.use(authenticationRouter)

server.get("/healt", async (req: Request, res: Response) => {
  return res.send('Ok')
});

server.listen(4000, () => {
  console.log("Server listening on port 4000");
});

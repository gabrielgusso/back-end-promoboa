import express, { application, Request, Response } from "express";
import { authenticationRouter } from "./routes/auth.router.js";
import cors from "cors"
import { productsRouter } from "./routes/products.router.js";

const server = express();

server
.use(express.json())
.use(cors())
.use(authenticationRouter)
.use(productsRouter)
.get("/health", (req, res) => res.send("Ok"))

server.listen(4000, () => {
  console.log("Server listening on port 4000");
});

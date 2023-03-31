import express, { application, Request, Response } from "express";
import { authenticationRouter } from "./routes/auth.router.js";
import cors from "cors"
import { productsRouter } from "./routes/products.router.js";

const server = express();

server
.use(express.json())
.use(cors())
.get("/health", (req, res) => res.send("Ok"))
.use(authenticationRouter)
.use(productsRouter)


server.listen(4000, () => {
  console.log("Server listening on port 4000");
});

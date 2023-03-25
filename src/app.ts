import express, { Request, Response } from "express";

const server = express();

server.get("/healt", (req: Request, res: Response) => {
  res.send("ok");
});

server.listen(4000, () => {
  console.log("Server listening on port 4000");
});

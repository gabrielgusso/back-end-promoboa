import { Router } from "express"
import { validateBody } from "../middlewares/validation.middleware.js"
import { createUserSchema, loginSchema } from "../schemas/auth.schema.js"
import { loginWithToken, singInPost, singUpPost } from "../controllers/auth.controller.js"

export const authenticationRouter = Router()

authenticationRouter
.post("/sign-up", validateBody(createUserSchema), singUpPost)
.post("/sign-in", validateBody(loginSchema), singInPost)
.get("/sign-in", loginWithToken)



import { Router } from "express"
import { validateBody } from "../middlewares/validation.middleware.js"
import { createUserSchema, loginSchema } from "../schemas/auth.schema.js"
import { singInPost, singUpPost } from "../controllers/auth.controller.js"

export const authenticationRouter = Router()

authenticationRouter.post("/sign-up", validateBody(createUserSchema), singUpPost)

authenticationRouter.post("/sign-in", validateBody(loginSchema), singInPost)



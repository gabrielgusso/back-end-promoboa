import { Router } from "express"
import { getProducts, postProducts, searchProducts } from "../controllers/products.controller.js"
import { validateBody } from "../middlewares/validation.middleware.js"
import { productSchema } from "../schemas/product.schema.js"
import { authenticateToken } from "../middlewares/authentication.middleware.js"

export const productsRouter = Router()

productsRouter.get("/products", getProducts)

productsRouter.post("/products", authenticateToken ,validateBody(productSchema), postProducts)

productsRouter.get("/search/:name", searchProducts)



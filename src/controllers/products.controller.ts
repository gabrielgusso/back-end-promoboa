import { Request, Response } from 'express'
import { AuthenticatedRequest } from '../middlewares/authentication.middleware.js'
import { ProductBody } from '../protocols.js'
import productsService from '../service/products.service.js'

export async function getProducts(req: Request, res: Response) {
  try {
    const result = await productsService.getProducts()
    res.status(200).send(result)
  } catch (error) {
    res.status(400).send(error)
  }
}

export async function postProducts(req: AuthenticatedRequest, res: Response) {
  const { userId } = req
  const productData = req.body as ProductBody

  try {
    const result = await productsService.postProduct(productData, userId)
    res.status(200).send("Ok")
  } catch (error) {
    res.status(400).send(error)
  }
}
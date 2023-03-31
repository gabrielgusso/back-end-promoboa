import { Request, Response } from 'express'
import productsService from '../service/products.service.js'

export async function getProducts(req: Request, res: Response) {
  try {
    const result = await productsService.getProducts()
    res.status(200).send(result)
  } catch (error) {
    res.status(400).send(error)
  }
}

export async function postProducts(req: Request, res: Response) {
  
  try {
    const result = await productsService.getProducts()
    res.status(200).send(result)
  } catch (error) {
    res.status(400).send(error)
  }
}
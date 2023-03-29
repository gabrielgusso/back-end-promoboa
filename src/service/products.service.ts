import { Product } from '../protocols'
import productsRepository from '../repository/products.repository.js'

async function getProducts(): Promise<Product> {
  const products = await productsRepository.getProducts()
  return products
}

const productsService = {
  getProducts,
}

export default productsService

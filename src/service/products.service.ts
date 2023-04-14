import { Product, ProductBody } from '../protocols'
import productsRepository from '../repository/products.repository.js'

async function getProducts() {
  const products = await productsRepository.getProducts()
  return products
}

async function postProduct(productData: ProductBody, userId: number) {
  const product = {...productData, userId} 
  return await productsRepository.createProduct(product)
}

const productsService = {
  getProducts,
  postProduct
}

export default productsService

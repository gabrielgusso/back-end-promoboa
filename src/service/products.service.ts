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

async function searchProducts(search: string) {
  const products = await productsRepository.searcProduct(search)
  return products
}

const productsService = {
  getProducts,
  postProduct,
  searchProducts
}

export default productsService

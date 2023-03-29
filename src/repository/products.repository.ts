import { connection } from '../config/database.js'
import { QueryResult } from 'pg'
import { Product } from '../protocols.js'

async function getProducts(): Promise<QueryResult<Product>> {
  const { rows } = await connection.query(`SELECT * FROM products`)
  return rows
}

const productsRepository = {
  getProducts,
}

export default productsRepository

import { connection } from '../config/database.js'
import { QueryResult } from 'pg'
import { Product } from '../protocols.js'

async function getProducts(): Promise<QueryResult<Product>> {
  const { rows } = await connection.query(`
  SELECT p.id, u.name as "userName", COUNT(c.text) as comments, COUNT(l.id) as likes, p.name, 
  p.url, p.description, p.image, p.store, p.coupon, p."normalPrice", p."discountPrice", p."createdAt" 
  FROM products p
  JOIN users u
  ON u.id = p."userId"
  LEFT JOIN comments c
  ON p.id = c."productId"
  LEFT JOIN likes l
  ON p.id = l."productId"
  GROUP BY u.id, p.id
  ORDER BY p.id DESC
  `)
  return rows
}

async function createProduct(
  productData: ProductInsert
): Promise<QueryResult<Product>> {
  const {
    userId,
    name,
    url,
    description,
    image,
    store,
    coupon,
    normalPrice,
    discountPrice,
  } = productData
  await connection.query(
    `
    INSERT INTO products 
    ("userId", name, url, description, image, store, coupon, "normalPrice", "discountPrice") 
    VALUES 
    ($1, $2, $3, $4, $5, $6, $7, $8, $9)`,
    [
      userId,
      name,
      url,
      description,
      image,
      store,
      coupon,
      normalPrice,
      discountPrice,
    ]
  )
}

export async function searcProduct(search: string) {
  const {rows}  = await connection.query(
    `SELECT * FROM products WHERE name ILIKE $1`,
    [`%${search}%`]
  )
  return rows
}

export type ProductInsert = Omit<Product, 'id' | 'createdAt'>

const productsRepository = {
  getProducts,
  createProduct,
  searcProduct
}

export default productsRepository

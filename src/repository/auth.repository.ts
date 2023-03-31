import { connection } from '../config/database.js'
import { QueryResult } from 'pg'
import { Session, UserData } from '../protocols.js'

async function signUp(userData: CreateUser): Promise<QueryResult<CreateUser>> {
  const { email, password, name } = userData
  const rows = await connection.query(
    `INSERT INTO users (name, email, password) VALUES ($1, $2, $3)`,
    [name, email, password]
  )
  return rows
}

async function findByEmail(email: string): Promise<QueryResult<UserData>> {
  const { rows } = await connection.query(
    `SELECT * FROM users WHERE email=$1`,
    [email]
  )

  return rows[0]
}

async function session(userId: number, token: string): Promise<QueryResult<Session>> {
  const { rows } = await connection.query(
    `INSERT INTO session (token, "userId") VALUES ($1, $2)`,
    [token, userId]
  )

  return rows[0]
}

async function getUser(userId: number): Promise<QueryResult<UserData>> {
  const { rows } = await connection.query(
    `SELECT * FROM users WHERE id=$1`,
    [userId]
  )

  return rows[0]
}

async function getSession(token: string): Promise<QueryResult<Session>> {
  const { rows } = await connection.query(
    `SELECT * FROM session WHERE token=$1`,
    [token]
  )

  return rows[0]
}

export type CreateUser = Omit<UserData, 'id'>

export type UserEmail = Pick<CreateUser, 'email'>

const authRepository = {
  signUp,
  findByEmail,
  session,
  getUser,
  getSession
}

export default authRepository

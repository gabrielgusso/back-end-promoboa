import { NextFunction, Request, Response } from 'express'
import * as jwt from 'jsonwebtoken'
import authRepository from '../repository/auth.repository.js'

export async function authenticateToken(
  req: AuthenticatedRequest,
  res: Response,
  next: NextFunction
) {
  const authHeader = req.header('Authorization')
  if (!authHeader) {
    return sendSignedError(res)
  }

  const token = authHeader.split(' ')[1]
  if (!token) {
    return sendSignedError(res)
  }

  try {
    const { userId } = jwt.verify(token, process.env.JWT_SECRET) as JWTPayload

    const session = await authRepository.getSession(token)

    if (!session) {
      return sendSignedError(res)
    }

    req.userId = userId
    
    return next()
  } catch (err) {
      return sendSignedError(res)
  }
}

function sendSignedError(res: Response){
  return res.status(401).send('You must be signed in to continue')
}

export type AuthenticatedRequest = Request & JWTPayload

type JWTPayload = {
  userId: number
}

import { Request, Response } from 'express'
import { CreateUser } from '../repository/auth.repository.js'
import authService from '../service/auth.service.js'

export async function singUpPost(req: Request, res: Response) {
  const userData = req.body as CreateUser

  try {
    const result = await authService.createUser(userData)
    return res.status(200).send(result)
  } catch (error) {
    if (error.name === 'Conflit') {
      return res.status(409).send(error)
    }
    if (error.name === 'Unauthorized') {
      return res.status(401).send(error)
    }
    return res.status(400).send(error)
  }
}

export async function singInPost(req: Request, res: Response) {
  const loginData = req.body as LoginUser

  try {
    const result = await authService.login(loginData)
    return res.status(200).send(result)
  } catch (error) {
    if (error.name === 'Unauthorized') {
      return res.status(401).send(error)
    }
    if (error.name === 'Not Found') {
      return res.status(404).send(error)
    }
    return res.status(400).send(error)
  }
}

export async function loginWithToken(req: Request, res: Response) {
  const { authorization } = req.headers

  try {
    const result = await authService.getSession(authorization)
    return res.status(200).send(result)
  } catch (error) {
    if (error.name === 'Unauthorized') {
      return res.status(401).send(error)
    }
    return res.status(400).send(error)
  }
}

export type LoginUser = Omit<CreateUser, 'name'>

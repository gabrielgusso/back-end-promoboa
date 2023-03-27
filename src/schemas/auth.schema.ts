import { CreateUser } from '../repository/auth.repository'
import Joi from 'joi'
import { LoginUser } from '../controllers/auth.controller'

export const createUserSchema = Joi.object<CreateUser>({
  email: Joi.string().email().required(),
  password: Joi.string().min(6).required(),
  name: Joi.string().required(),
})

export const loginSchema = Joi.object<LoginUser>({
  email: Joi.string().email().required(),
  password: Joi.string().min(6).required(),
})
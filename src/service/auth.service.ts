import bcrypt from 'bcrypt'
import jwt from 'jsonwebtoken'
import { LoginUser } from '../controllers/auth.controller.js'
import { UserData } from '../protocols.js'
import authRepository, { CreateUser } from '../repository/auth.repository.js'

async function createUser({
  email,
  password,
  name,
}: CreateUser): Promise<CreateUser> {
  await validateUniqueEmailOrFail(email)

  const hashedPassword = await bcrypt.hash(password, 12)
  console.log(hashedPassword)
  return authRepository.signUp({
    email,
    password: hashedPassword,
    name,
  })
}

async function login({ email, password }: LoginUser): Promise<LoginResult> {
  const user = await getUserOrFail(email)

  await validatePasswordOrFail(password, user.password)

  const token = await createSession(user.id)

  delete user.password

  return {
    user,
    token,
  }
}

async function validateUniqueEmailOrFail(email: string) {
  const userWithSameEmail = await authRepository.findByEmail(email)
  if (userWithSameEmail) {
    throw {
      name: 'Conflit',
      message: 'There is already an user with given email',
    }
  }
}

async function  getUserOrFail(email: string): Promise<UserData> {
  const user = await authRepository.findByEmail(email)
  if (!user) {
    throw {
      name: 'Not Found',
      message: 'Invalid email or password',
    }
  }
  return user
}

async function validatePasswordOrFail(password: string, userPassword: string) {
  const isPasswordValid = await bcrypt.compare(password, userPassword)
  if (!isPasswordValid) {
    throw {
      name: 'Not Found',
      message: 'Invalid email or password',
    }
  }
}

async function createSession(userId: number) {
  const token = jwt.sign({ userId }, process.env.JWT_SECRET)
  await authRepository.session(userId, token)

  return token
}

export type LoginResult = {
  user: Pick<UserData, 'id' | 'email' | 'name'>
  token: string
}

const authService = {
  createUser,
  login,
}

export default authService

import Joi from 'joi'
import { ProductBody } from '../protocols'

export const productSchema = Joi.object<ProductBody>({
  name: Joi.string().required(),
  url: Joi.string().required(),
  description: Joi.string().required(),
  image: Joi.string().required(),
  store: Joi.string().required(),
  coupon: Joi.string().allow(null).allow(''),
  normalPrice: Joi.number().required(),
  discountPrice: Joi.number().required(),
})
import { NextFunction, Request, Response } from 'express'
import { ObjectSchema } from 'joi'

export function validateBody(schema: ObjectSchema): ValidationMiddleware {
    return validate(schema, 'body')
}

function validate(schema: ObjectSchema, type: 'body' | 'params') {
    return (req: Request, res: Response, next: NextFunction) => {
        const { error } = schema.validate(req[type], {
            abortEarly: false,
        })

        if (!error) {
            next()
        } else {
            res.status(400).send(error.details.map((d) => d.message))
        }
    }
}

type ValidationMiddleware = (req: Request, res: Response, next: NextFunction) => void
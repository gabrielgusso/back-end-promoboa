export type UserData = {
    id: number; 
    name: string;
    email: string;
    password: string
} 

export type Session = {
    id: number;
    token: string;
    userId: number;
}

export type Product = {
    id: number;
    userId: number;
    name: string;
    url: string;
    description: string;
    store: string;
    coupon: string
    createdAt: string
}
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
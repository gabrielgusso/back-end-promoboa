CREATE TABLE "products" (
	"id" serial NOT NULL PRIMARY KEY,
	"userId" integer NOT NULL,
	"name" TEXT NOT NULL,
	"url" TEXT NOT NULL,
	"description" TEXT,
	"store" TEXT NOT NULL,
	"cupon" TEXT NOT NULL,
	"createdAt" timestamp with time zone NOT NULL DEFAULT 'NOW()'
);



CREATE TABLE "users" (
	"id" serial NOT NULL PRIMARY KEY,
	"name" TEXT NOT NULL,
	"email" TEXT NOT NULL,
	"password" TEXT NOT NULL
);



CREATE TABLE "likes" (
	"id" serial NOT NULL PRIMARY KEY,
	"userId" integer NOT NULL,
	"productId" integer NOT NULL
);



CREATE TABLE "comments" (
	"id" serial NOT NULL PRIMARY KEY,
	"userId" integer NOT NULL,
	"productId" integer NOT NULL,
	"text" TEXT NOT NULL
);


ALTER TABLE "products" ADD CONSTRAINT "products_fk0" FOREIGN KEY ("userId") REFERENCES "users"("id");

ALTER TABLE "likes" ADD CONSTRAINT "likes_fk0" FOREIGN KEY ("userId") REFERENCES "users"("id");
ALTER TABLE "likes" ADD CONSTRAINT "likes_fk1" FOREIGN KEY ("productId") REFERENCES "products"("id");

ALTER TABLE "comments" ADD CONSTRAINT "comments_fk0" FOREIGN KEY ("userId") REFERENCES "users"("id");
ALTER TABLE "comments" ADD CONSTRAINT "comments_fk1" FOREIGN KEY ("productId") REFERENCES "products"("id");





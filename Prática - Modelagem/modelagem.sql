CREATE DATABASE "clothes";

CREATE TABLE "users" (
	"id" SERIAL PRIMARY KEY,
	"name" VARCHAR(50) NOT NULL,
  "email" TEXT UNIQUE NOT NULL,
	"password" TEXT NOT NULL,
  "createdAt" TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE "adresses" (
	"id" SERIAL PRIMARY KEY,
  "userId" INTEGER NOT NULL REFERENCES "users"("id"),
	"addressStreat" TEXT NOT NULL,
  "number" INTEGER NOT NULL,
  "zipCode" INTEGER NOT NULL,
  "city" TEXT NOT NULL,
  "stateProvince" TEXT NOT NULL,
	"createdAt" TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE "cart" (
  "id" SERIAL PRIMARY KEY,
	"userId" INTEGER NOT NULL REFERENCES "users"("id"),
  "productId" INTEGER NOT NULL REFERENCES "products"("id"),
  "quantity" INTEGER NOT NULL DEFAULT 0,
	"addressId" INTEGER NOT NULL REFERENCES "adresses"("id"),
  "statusId" INTEGER NOT NULL REFERENCES "purchaseStatus"("id"),
  "createdAt" TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE "purchaseStatus" (
  "id" SERIAL PRIMARY KEY,
	"name" TEXT NOT NULL,
  "createdAt" TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE "products" (
	"id" SERIAL PRIMARY KEY,
  "name" TEXT NOT NULL,
  "sizeId" INTEGER NOT NULL REFERENCES "sizes"("id"),
  "price" INTEGER NOT NULL DEFAULT 0,
  "stock" INTEGER NOT NULL DEFAULT 0,
	"createdAt" TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE "sizes" (
  "id" SERIAL PRIMARY KEY,
	"name" TEXT NOT NULL,
  "createdAt" TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE "productsPhotos" (
  "id" SERIAL PRIMARY KEY,
	"productId" INTEGER NOT NULL REFERENCES "products"("id"),
	"photoId" INTEGER NOT NULL REFERENCES "photos"("id"),
  "isMain" BOOLEAN NOT NULL DEFAULT FALSE,
  "createdAt" TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE "photos" (
  "id" SERIAL PRIMARY KEY,
	"photo" TEXT NOT NULL,
  "createdAt" TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE "productsCategories" (
  "id" SERIAL PRIMARY KEY,
	"productId" INTEGER NOT NULL REFERENCES "products"("id"),
	"categoryId" INTEGER NOT NULL REFERENCES "categories"("id"),
  "createdAt" TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE "categories" (
  "id" SERIAL PRIMARY KEY,
	"name" TEXT NOT NULL,
  "createdAt" TIMESTAMP NOT NULL DEFAULT NOW()
);
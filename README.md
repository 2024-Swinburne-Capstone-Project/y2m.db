# You2Mentor Database as Code Repository
This repository contains the database schema defined as code using Prisma. Prisma is an ORM that allows you to define your database schema in a type-safe manner, and provides an automated migration system.

## Defining the Data Models
The `schema.prisma` file is where you [define your data models](https://www.prisma.io/docs/orm/prisma-schema/postgresql-extensions), which represent the tables in your database. Here's an example:

```prisma
model Post {
  id        Int     @id @default(autoincrement())
  createdAt DateTime @default(now())
  updatedAt DateTime @updatedAt
  title     String  @db.VarChar(255)
  content   String?
  published Boolean @default(false)
  author    User    @relation(fields: [authorId], references: [id])
  authorId  Int
}


model Profile {
  id     Int    @id @default(autoincrement())
  bio    String?
  user   User   @relation(fields: [userId], references: [id])
  userId Int    @unique
}

model User {
  id      Int      @id @default(autoincrement())
  email   String   @unique
  name    String?
  posts   Post[]
  profile Profile?
}
```

## Migrating the Database Schema
After defining your data models, you can migrate the changes to your database using the `prisma migrate` command. This will create a new migration file and apply the changes to your database.

```bash
npx prisma migrate dev --name init
```

## Making Changes to the Database Schema
To make changes to the database schema, you can modify the `schema.prisma` file and then run the `prisma migrate dev` command again. Prisma will detect the changes and create a new migration file with the necessary SQL statements to apply the changes to your database.

```bash
npx prisma migrate dev --name "add-new-field"
```

## Generating the Prisma Client
Prisma provides a type-safe query builder called Prisma Client, which you can use in your application code to interact with your database. To generate the Prisma Client based on your data models, run the following command:

For more information on using the Prisma Client, refer to the [Prisma documentation](https://www.prisma.io/docs).
/*
  Warnings:

  - You are about to drop the column `menteeInterests` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `mentorAreas` on the `User` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "User" DROP COLUMN "menteeInterests",
DROP COLUMN "mentorAreas";

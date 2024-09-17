/*
  Warnings:

  - You are about to drop the column `userId` on the `MilestoneComment` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "MilestoneComment" DROP CONSTRAINT "MilestoneComment_userId_fkey";

-- AlterTable
ALTER TABLE "MilestoneComment" DROP COLUMN "userId";

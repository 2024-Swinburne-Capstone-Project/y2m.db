/*
  Warnings:

  - Added the required column `sessionId` to the `AccountNotification` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "AccountNotification" ADD COLUMN     "sessionId" TEXT NOT NULL;

/*
  Warnings:

  - Added the required column `type` to the `Notification` table without a default value. This is not possible if the table is not empty.

*/
-- CreateEnum
CREATE TYPE "NotificationType" AS ENUM ('MENTORSHIP_REQUEST', 'NEW_MESSAGE');

-- AlterTable
ALTER TABLE "Notification" ADD COLUMN     "type" "NotificationType" NOT NULL;

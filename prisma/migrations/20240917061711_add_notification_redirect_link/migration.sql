/*
  Warnings:

  - The values [MENTORSHIP_REQUEST] on the enum `NotificationType` will be removed. If these variants are still used in the database, this will fail.
  - Added the required column `redirectLink` to the `Notification` table without a default value. This is not possible if the table is not empty.

*/
-- AlterEnum
BEGIN;
CREATE TYPE "NotificationType_new" AS ENUM ('NEW_MENTORSHIP_REQUEST', 'NEW_MESSAGE', 'ACCEPTED_MENTORSHIP_REQUEST', 'REJECTED_MENTORSHIP_REQUEST');
ALTER TABLE "Notification" ALTER COLUMN "type" TYPE "NotificationType_new" USING ("type"::text::"NotificationType_new");
ALTER TYPE "NotificationType" RENAME TO "NotificationType_old";
ALTER TYPE "NotificationType_new" RENAME TO "NotificationType";
DROP TYPE "NotificationType_old";
COMMIT;

-- AlterTable
ALTER TABLE "Notification" ADD COLUMN     "redirectLink" TEXT NOT NULL;

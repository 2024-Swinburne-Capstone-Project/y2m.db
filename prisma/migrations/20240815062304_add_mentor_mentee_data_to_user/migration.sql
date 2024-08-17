-- AlterTable
ALTER TABLE "User" ADD COLUMN     "availability" TEXT,
ADD COLUMN     "isMentee" BOOLEAN NOT NULL DEFAULT false,
ADD COLUMN     "isMentor" BOOLEAN NOT NULL DEFAULT false,
ADD COLUMN     "menteeInterests" TEXT[],
ADD COLUMN     "mentorAreas" TEXT[];

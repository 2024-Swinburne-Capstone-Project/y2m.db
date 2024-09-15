-- AlterTable
ALTER TABLE "User" ADD COLUMN     "overallRating" DOUBLE PRECISION NOT NULL DEFAULT 0;

-- CreateTable
CREATE TABLE "MentorFeedback" (
    "id" SERIAL NOT NULL,
    "mentorId" TEXT NOT NULL,
    "menteeId" TEXT NOT NULL,
    "rating" INTEGER NOT NULL,
    "feedback" TEXT NOT NULL,
    "receivedDate" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "MentorFeedback_pkey" PRIMARY KEY ("id")
);

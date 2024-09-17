-- CreateEnum
CREATE TYPE "MentorshipNotificationType" AS ENUM ('NEW_MENTORSHIP_REQUEST', 'ACCEPTED_MENTORSHIP_REQUEST', 'REJECTED_MENTORSHIP_REQUEST');

-- CreateTable
CREATE TABLE "MentorshipNotification" (
    "id" SERIAL NOT NULL,
    "userId" TEXT NOT NULL,
    "message" TEXT NOT NULL,
    "type" "MentorshipNotificationType" NOT NULL,
    "redirectLink" TEXT NOT NULL,
    "receivedDate" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "read" BOOLEAN NOT NULL DEFAULT false,

    CONSTRAINT "MentorshipNotification_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MessageNotification" (
    "id" SERIAL NOT NULL,
    "userId" TEXT NOT NULL,
    "chatId" INTEGER NOT NULL,
    "receivedDate" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "read" BOOLEAN NOT NULL DEFAULT false,

    CONSTRAINT "MessageNotification_pkey" PRIMARY KEY ("id")
);

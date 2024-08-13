/*
  Warnings:

  - You are about to drop the `mentor_mentee` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "mentor_mentee" DROP CONSTRAINT "mentor_mentee_menteeId_fkey";

-- DropForeignKey
ALTER TABLE "mentor_mentee" DROP CONSTRAINT "mentor_mentee_mentorId_fkey";

-- DropTable
DROP TABLE "mentor_mentee";

-- CreateTable
CREATE TABLE "MentorMentee" (
    "mentorId" TEXT NOT NULL,
    "menteeId" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "MentorMentee_pkey" PRIMARY KEY ("mentorId","menteeId")
);

-- CreateIndex
CREATE UNIQUE INDEX "MentorMentee_mentorId_menteeId_key" ON "MentorMentee"("mentorId", "menteeId");

-- AddForeignKey
ALTER TABLE "MentorMentee" ADD CONSTRAINT "MentorMentee_menteeId_fkey" FOREIGN KEY ("menteeId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MentorMentee" ADD CONSTRAINT "MentorMentee_mentorId_fkey" FOREIGN KEY ("mentorId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

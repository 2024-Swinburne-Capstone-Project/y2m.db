-- AlterTable
ALTER TABLE "MentorFeedback" ADD COLUMN     "endorsedSkill" TEXT;

-- AlterTable
ALTER TABLE "Skill" ADD COLUMN     "endorsements" INTEGER NOT NULL DEFAULT 0;

-- AddForeignKey
ALTER TABLE "MentorFeedback" ADD CONSTRAINT "MentorFeedback_mentorId_fkey" FOREIGN KEY ("mentorId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MentorFeedback" ADD CONSTRAINT "MentorFeedback_menteeId_fkey" FOREIGN KEY ("menteeId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

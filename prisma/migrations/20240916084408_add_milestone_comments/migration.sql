-- AlterTable
ALTER TABLE "MilestoneStep" ADD COLUMN     "dueDate" TIMESTAMP(3);

-- CreateTable
CREATE TABLE "MilestoneComment" (
    "id" SERIAL NOT NULL,
    "milestoneId" INTEGER NOT NULL,
    "userId" TEXT NOT NULL,
    "content" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "MilestoneComment_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "MilestoneComment" ADD CONSTRAINT "MilestoneComment_milestoneId_fkey" FOREIGN KEY ("milestoneId") REFERENCES "Milestone"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MilestoneComment" ADD CONSTRAINT "MilestoneComment_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

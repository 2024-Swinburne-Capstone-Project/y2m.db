-- CreateTable
CREATE TABLE "mentor_mentee" (
    "mentorId" TEXT NOT NULL,
    "menteeId" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "mentor_mentee_pkey" PRIMARY KEY ("mentorId","menteeId")
);

-- CreateIndex
CREATE UNIQUE INDEX "mentor_mentee_mentorId_menteeId_key" ON "mentor_mentee"("mentorId", "menteeId");

-- AddForeignKey
ALTER TABLE "mentor_mentee" ADD CONSTRAINT "mentor_mentee_menteeId_fkey" FOREIGN KEY ("menteeId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "mentor_mentee" ADD CONSTRAINT "mentor_mentee_mentorId_fkey" FOREIGN KEY ("mentorId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- CreateTable
CREATE TABLE "GetInTouch" (
    "id" SERIAL NOT NULL,
    "demo" BOOLEAN NOT NULL DEFAULT false,
    "message" TEXT NOT NULL,
    "firstName" TEXT NOT NULL,
    "lastName" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "receivedDate" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "feedback" BOOLEAN DEFAULT false,
    "question" BOOLEAN DEFAULT false,

    CONSTRAINT "GetInTouch_pkey" PRIMARY KEY ("id")
);

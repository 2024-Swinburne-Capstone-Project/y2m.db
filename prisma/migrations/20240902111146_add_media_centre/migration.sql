-- CreateTable
CREATE TABLE "MediaRelease" (
    "id" SERIAL NOT NULL,
    "title" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "imagePath" TEXT NOT NULL,
    "href" TEXT NOT NULL,

    CONSTRAINT "MediaRelease_pkey" PRIMARY KEY ("id")
);

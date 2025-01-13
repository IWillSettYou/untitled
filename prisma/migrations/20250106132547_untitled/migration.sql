-- CreateTable
CREATE TABLE `Movie` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nev` VARCHAR(255) NOT NULL,
    `kiadas_ev` DATE NOT NULL,
    `rendezo_id` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Rendezo` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nev` VARCHAR(255) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Szinesz` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nev` VARCHAR(255) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `SzineszOnMovie` (
    `movie_id` INTEGER NOT NULL,
    `szinesz_id` INTEGER NOT NULL,

    PRIMARY KEY (`movie_id`, `szinesz_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Movie` ADD CONSTRAINT `Movie_rendezo_id_fkey` FOREIGN KEY (`rendezo_id`) REFERENCES `Rendezo`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `SzineszOnMovie` ADD CONSTRAINT `SzineszOnMovie_movie_id_fkey` FOREIGN KEY (`movie_id`) REFERENCES `Movie`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `SzineszOnMovie` ADD CONSTRAINT `SzineszOnMovie_szinesz_id_fkey` FOREIGN KEY (`szinesz_id`) REFERENCES `Szinesz`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

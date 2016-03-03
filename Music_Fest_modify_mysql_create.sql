CREATE TABLE `Fest` (
	`id` int NOT NULL AUTO_INCREMENT,
	`name` char(20) NOT NULL,
	`city` char(20) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Song` (
	`id` int NOT NULL AUTO_INCREMENT,
	`name` char(20) NOT NULL,
	`nuber_album` int NOT NULL,
	`lyrics` char(200) NOT NULL,
	`composer_id` int NOT NULL,
	`author_id` int NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Album` (
	`id` int NOT NULL AUTO_INCREMENT,
	`name` char(20) NOT NULL,
	`type_id` int NOT NULL,
	`arist_name` char(50) NOT NULL,
	`genre` char(20) NOT NULL,
	`release_year` DATE NOT NULL,
	`group_id` int NOT NULL,
	`artist_id` int NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Disc` (
	`id` int NOT NULL AUTO_INCREMENT,
	`album_id` int NOT NULL,
	`name` char(20) NOT NULL,
	`date_release` DATE NOT NULL,
	`public` char(50) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Fest_albums` (
	`album_id` int NOT NULL,
	`fest_id` int NOT NULL
);

CREATE TABLE `Fest_song` (
	`song_id` int NOT NULL,
	`fest_id` int NOT NULL
);

CREATE TABLE `Album_song` (
	`album_id` int NOT NULL,
	`song_id` int NOT NULL
);

CREATE TABLE `Artist` (
	`id` int NOT NULL AUTO_INCREMENT,
	`group_id` int NOT NULL,
	`name` char(20) NOT NULL,
	`city` char(20) NOT NULL,
	`role` char(50) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Type` (
	`id` int NOT NULL AUTO_INCREMENT,
	`short_name` char(1) NOT NULL,
	`full_name` char(50) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Group` (
	`id` int NOT NULL AUTO_INCREMENT,
	`name` char(20) NOT NULL,
	`city` char(20) NOT NULL,
	`date_basement` DATE NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `Song` ADD CONSTRAINT `Song_fk0` FOREIGN KEY (`composer_id`) REFERENCES `Artist`(`id`);

ALTER TABLE `Song` ADD CONSTRAINT `Song_fk1` FOREIGN KEY (`author_id`) REFERENCES `Artist`(`id`);

ALTER TABLE `Album` ADD CONSTRAINT `Album_fk0` FOREIGN KEY (`type_id`) REFERENCES `Type`(`id`);

ALTER TABLE `Album` ADD CONSTRAINT `Album_fk1` FOREIGN KEY (`group_id`) REFERENCES `Group`(`id`);

ALTER TABLE `Album` ADD CONSTRAINT `Album_fk2` FOREIGN KEY (`artist_id`) REFERENCES `Artist`(`id`);

ALTER TABLE `Disc` ADD CONSTRAINT `Disc_fk0` FOREIGN KEY (`album_id`) REFERENCES `Album`(`id`);

ALTER TABLE `Fest_albums` ADD CONSTRAINT `Fest_albums_fk0` FOREIGN KEY (`album_id`) REFERENCES `Album`(`id`);

ALTER TABLE `Fest_albums` ADD CONSTRAINT `Fest_albums_fk1` FOREIGN KEY (`fest_id`) REFERENCES `Fest`(`id`);

ALTER TABLE `Fest_song` ADD CONSTRAINT `Fest_song_fk0` FOREIGN KEY (`song_id`) REFERENCES `Song`(`id`);

ALTER TABLE `Fest_song` ADD CONSTRAINT `Fest_song_fk1` FOREIGN KEY (`fest_id`) REFERENCES `Fest`(`id`);

ALTER TABLE `Album_song` ADD CONSTRAINT `Album_song_fk0` FOREIGN KEY (`album_id`) REFERENCES `Album`(`id`);

ALTER TABLE `Album_song` ADD CONSTRAINT `Album_song_fk1` FOREIGN KEY (`song_id`) REFERENCES `Song`(`id`);

ALTER TABLE `Artist` ADD CONSTRAINT `Artist_fk0` FOREIGN KEY (`group_id`) REFERENCES `Group`(`id`);


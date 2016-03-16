CREATE TABLE 'Fest' (
    'id' int NOT NULL ,
    'name' varchar(20) NOT NULL,
    'city' varchar(20) NOT NULL,
    'date_of_occurance' DATE NOT NULL,
    PRIMARY KEY ('id')
);

CREATE TABLE 'Song' (
    'id' int NOT NULL ,
    'name' varchar(100) NOT NULL,
    'number_in_album' int NOT NULL,
    'lyrics' char(200) NOT NULL,
    PRIMARY KEY ('id')
);

CREATE TABLE 'Album' (
    'id' int NOT NULL ,
    'type_of_performance_id' int NOT NULL,
    'name' varchar(100) NOT NULL,
    'genre' varchar(100) NOT NULL,
    'year_of_release' int NOT NULL,
    'arist_name' varchar(20) NOT NULL,
    PRIMARY KEY ('id')
);

CREATE TABLE 'Disc' (
    'id' int NOT NULL ,
    'name' varchar(100) NOT NULL,
    'year_of_release' int NOT NULL,
    'publisher' varchar(20) NOT NULL,
    PRIMARY KEY ('id')
);

CREATE TABLE 'Fest_albums' (
    'Fest_id' int NOT NULL,
    'Album_id' int NOT NULL
);

CREATE TABLE 'Fest_song' (
    'Fest_id' int NOT NULL,
    'Song_id' int NOT NULL
);

CREATE TABLE 'Album_song' (
    'Song_id' int NOT NULL,
    'Album_id' int NOT NULL
);

CREATE TABLE 'Album_type' (
    'id' int NOT NULL ,
    'short_name' char(1) NOT NULL,
    'full_name' char(50) NOT NULL,
    PRIMARY KEY ('id')
);

CREATE TABLE 'Album_DIsk' (
    'album_id' int NOT NULL,
    'disk_id' int NOT NULL
);

CREATE TABLE 'Album_group_member' (
    'album_id' int NOT NULL,
    'group_member_id' varchar(20) NOT NULL
);

CREATE TABLE 'Group_member' (
    'id' int NOT NULL ,
    'name' varchar(20) NOT NULL,
    'city_of_birth' varchar(20) NOT NULL,
    'role_in_group' char(1) NOT NULL,
    'most_famous_song_id' int NOT NULL,
    'most_famous_song_id' int NOT NULL,
    PRIMARY KEY ('id')
);

ALTER TABLE 'Album' ADD CONSTRAINT 'Album_fk0' FOREIGN KEY ('type_of_performance_id') REFERENCES 'Album_type'('id');

ALTER TABLE 'Fest_albums' ADD CONSTRAINT 'Fest_albums_fk0' FOREIGN KEY ('Fest_id') REFERENCES 'Fest'('id');

ALTER TABLE 'Fest_albums' ADD CONSTRAINT 'Fest_albums_fk1' FOREIGN KEY ('Album_id') REFERENCES 'Album'('id');

ALTER TABLE 'Fest_song' ADD CONSTRAINT 'Fest_song_fk0' FOREIGN KEY ('Fest_id') REFERENCES 'Fest'('id');

ALTER TABLE 'Fest_song' ADD CONSTRAINT 'Fest_song_fk1' FOREIGN KEY ('Song_id') REFERENCES 'Song'('id');

ALTER TABLE 'Album_song' ADD CONSTRAINT 'Album_song_fk0' FOREIGN KEY ('Song_id') REFERENCES 'Song'('id');

ALTER TABLE 'Album_song' ADD CONSTRAINT 'Album_song_fk1' FOREIGN KEY ('Album_id') REFERENCES 'Album'('id');

ALTER TABLE 'Album_DIsk' ADD CONSTRAINT 'Album_DIsk_fk0' FOREIGN KEY ('album_id') REFERENCES 'Album'('id');

ALTER TABLE 'Album_DIsk' ADD CONSTRAINT 'Album_DIsk_fk1' FOREIGN KEY ('disk_id') REFERENCES 'Disc'('id');

ALTER TABLE 'Album_group_member' ADD CONSTRAINT 'Album_group_member_fk0' FOREIGN KEY ('album_id') REFERENCES 'Album'('id');

ALTER TABLE 'Album_group_member' ADD CONSTRAINT 'Album_group_member_fk1' FOREIGN KEY ('group_member_id') REFERENCES 'Group_member'('id');


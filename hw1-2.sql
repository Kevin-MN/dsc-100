CREATE TABLE Albums(
	AlbumId INTEGER PRIMARY KEY,
	ArtistId INTEGER,
	Title VARCHAR(50),
	Released DATE,
	FOREIGN KEY(ArtistId) REFERENCES Artists(ArtistId)
	);

PRAGMA foreign_keys = ON;
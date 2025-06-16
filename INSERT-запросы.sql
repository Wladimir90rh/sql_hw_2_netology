INSERT INTO Artists (artistName) VALUES
('The Rolling Stones'),
('Miles Davis'),
('Taylor Swift'),
('Kendrick Lamar');

INSERT INTO Genres (genreName) VALUES
('Rock'),
('Jazz'),
('Pop'),
('Hip-Hop');

INSERT INTO ArtistGenres (artistID, genreID) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4);

INSERT INTO Albums (albumName, year) VALUES
('Let It Bleed', 1969),
('Kind of Blue', 1959),
('1989', 2014),
('To Pimp a Butterfly', 2015);

INSERT INTO ArtistAlbums (artistID, albumID) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4);

INSERT INTO Tracks (trackName, duration, albumID) VALUES
('Gimme Shelter', 270, 1),
('You Can’t Always Get...', 240, 1),
('So What', 540, 2),
('Freddie Freeloader', 620, 2),
('Blank Space', 231, 3),
('Alright', 210, 4); 

INSERT INTO Songbooks (songbookName, year) VALUES
('Rock Legends', 2000),
('Jazz Greats', 1990),
('Pop Anthems', 2018),
('Conscious Rap Collection', 2021);

INSERT INTO TrackSongbooks (trackID, songbookID) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 2),
(5, 3),
(6, 4);
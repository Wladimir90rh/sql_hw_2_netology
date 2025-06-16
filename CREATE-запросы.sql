CREATE TABLE Genres (
    genreID SERIAL PRIMARY KEY,
    genreName VARCHAR(100) NOT NULL
);

CREATE TABLE Artists (
    artistID SERIAL PRIMARY KEY,
    artistName VARCHAR(100) NOT NULL
);

CREATE TABLE Albums (
    albumID SERIAL PRIMARY KEY,
    albumName VARCHAR(100) NOT NULL,
    year INT
);

CREATE TABLE Tracks (
    trackID SERIAL PRIMARY KEY,
    trackName VARCHAR(100) NOT NULL,
    duration INT,
    albumID INT,
    FOREIGN KEY (albumID) REFERENCES Albums(albumID)
);

CREATE TABLE Songbooks (
    songbookID SERIAL PRIMARY KEY,
    songbookName VARCHAR(100) NOT NULL,
    year INT
);

CREATE TABLE ArtistGenres (
    artistID INT,
    genreID INT,
    PRIMARY KEY (artistID, genreID),
    FOREIGN KEY (artistID) REFERENCES Artists(artistID),
    FOREIGN KEY (genreID) REFERENCES Genres(genreID)
);

CREATE TABLE ArtistAlbums (
    artistID INT,
    albumID INT,
    PRIMARY KEY (artistID, albumID),
    FOREIGN KEY (artistID) REFERENCES Artists(artistID),
    FOREIGN KEY (albumID) REFERENCES Albums(albumID)
);

CREATE TABLE TrackSongbooks (
    trackID INT,
    songbookID INT,
    PRIMARY KEY (trackID, songbookID),
    FOREIGN KEY (trackID) REFERENCES Tracks(trackID),
    FOREIGN KEY (songbookID) REFERENCES Songbooks(songbookID)
);


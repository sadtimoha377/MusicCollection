CREATE TABLE Disks (
    Id INT IDENTITY PRIMARY KEY,
    Name NVARCHAR(100),
    Publisher NVARCHAR(100),
    Style NVARCHAR(100),
    SongsCount INT,
    ReleaseDate DATE
)
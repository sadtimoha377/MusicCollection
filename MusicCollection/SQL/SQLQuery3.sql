CREATE PROCEDURE GetAllDisks
AS
BEGIN
    SELECT *
    FROM Disks
END
GO

CREATE PROCEDURE GetDisksByPublisher
    @Publisher NVARCHAR(100)
AS
BEGIN
    SELECT *
    FROM Disks
    WHERE Publisher = @Publisher
END
GO

CREATE PROCEDURE GetMostPopularStyle
AS
BEGIN
    SELECT TOP 1
        Style,
        COUNT(*) AS TotalDisks
    FROM Disks
    GROUP BY Style
    ORDER BY TotalDisks DESC
END
GO

CREATE PROCEDURE GetDiskWithMaxSongsByStyle
    @Style NVARCHAR(100)
AS
BEGIN
    IF @Style = 'all'
    BEGIN
        SELECT TOP 1 *
        FROM Disks
        ORDER BY SongsCount DESC
    END
    ELSE
    BEGIN
        SELECT TOP 1 *
        FROM Disks
        WHERE Style = @Style
        ORDER BY SongsCount DESC
    END
END
GO

CREATE PROCEDURE DeleteDisksByStyle
    @Style NVARCHAR(100)
AS
BEGIN
    DELETE FROM Disks
    WHERE Style = @Style

    SELECT @@ROWCOUNT AS DeletedCount
END
GO

CREATE PROCEDURE GetOldestAndNewestAlbum
AS
BEGIN
    SELECT TOP 1 *
    FROM Disks
    ORDER BY ReleaseDate ASC

    SELECT TOP 1 *
    FROM Disks
    ORDER BY ReleaseDate DESC
END
GO

CREATE PROCEDURE DeleteDisksByWord
    @Word NVARCHAR(100)
AS
BEGIN
    DELETE FROM Disks
    WHERE Name LIKE '%' + @Word + '%'

    SELECT @@ROWCOUNT AS DeletedCount
END
GO
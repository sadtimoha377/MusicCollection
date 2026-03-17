
CREATE TABLE Manufacturers (
    Id INT IDENTITY PRIMARY KEY,
    Name NVARCHAR(100)
)


CREATE TABLE Products (
    Id INT IDENTITY PRIMARY KEY,
    Name NVARCHAR(100),
    Type NVARCHAR(100),
    ManufacturerId INT,
    Price DECIMAL(10,2),
    Quantity INT,
    FOREIGN KEY (ManufacturerId) REFERENCES Manufacturers(Id)
)


CREATE TABLE Clients (
    Id INT IDENTITY PRIMARY KEY,
    Name NVARCHAR(100),
    RegistrationDate DATE
)


CREATE TABLE Sellers (
    Id INT IDENTITY PRIMARY KEY,
    Name NVARCHAR(100)
)


CREATE TABLE Orders (
    Id INT IDENTITY PRIMARY KEY,
    ProductId INT,
    SellerId INT,
    Quantity INT,
    TotalAmount DECIMAL(10,2),
    OrderDate DATE,
    FOREIGN KEY (ProductId) REFERENCES Products(Id),
    FOREIGN KEY (SellerId) REFERENCES Sellers(Id)
)
INSERT INTO Manufacturers (Name) VALUES 
('Nike'), ('Adidas')

INSERT INTO Products (Name, Type, ManufacturerId, Price, Quantity) VALUES
('Sneakers', 'Shoes', 1, 100, 5),
('T-shirt', 'Clothing', 2, 40, 10)

INSERT INTO Clients (Name, RegistrationDate) VALUES
('Ivan', '2020-01-01'),
('Anna', '2019-05-05'),
('Oleg', '2022-03-03')

INSERT INTO Sellers (Name) VALUES
('Sergey'), ('Maria')

INSERT INTO Orders (ProductId, SellerId, Quantity, TotalAmount, OrderDate) VALUES
(1, 1, 2, 200, '2023-01-01'),
(2, 2, 1, 40, '2023-02-01')
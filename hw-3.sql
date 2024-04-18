
-- Задача 1. Вывести данные о товарах (проекция: названиетовара, цена, названиекатегории, названиекомпаниипоставщика)
    SELECT
    Products.ProductName,
    Products.Price,
    Categories.CategoryName,
    Suppliers.Suppliername
    FROM Products
    JOIN Suppliers ON Suppliers.SupplierID = Products.SupplierID
    JOIN Categories ON Products.CategoryID = Categories.CategoryID

-- Задача 2. Вывести список стран, которые поставляют морепродукты

    SELECT
    Suppliers.Country
    FROM Products
    JOIN Suppliers ON Suppliers.SupplierID = Products.SupplierID
    JOIN Categories ON Products.CategoryID = Categories.CategoryID
    WHERE
    Categories.CategoryID = 8

-- Задача 3. Вывести два самых дорогих товара из категории Beverages из USA

    SELECT
    Products.ProductName,
    Products.Price,
    Suppliers.Country,
    Categories.CategoryName

    FROM Products
    JOIN Suppliers ON Suppliers.SupplierID = Products.SupplierID
    JOIN Categories ON Products.CategoryID = Categories.CategoryID

    WHERE
    Categories.CategoryName = "Beverages"
    AND
    Suppliers.Country = "USA"

    Order BY Price DESC
    LIMIT 2

-- Задача 4. Вывести название и стоимость в USD одного самого дорогого проданного товара

    SELECT
    Products.ProductName,
    Products.Price * 1.08 AS Price_USD
    FROM Products
    Join OrderDetails ON Products.ProductID = OrderDetails.ProductID
    Order by Price Desc
    Limit 1

-- Задача 5. Дайте короткий ответ на вопрос: в чем отличие БД от СУБД

БД - набор данных, а СУБД - система для работы с этими данными.


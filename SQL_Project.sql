
-- 1) Retrieve all books in the "Fiction" genre:
SELECT * FROM Books 
WHERE Genre='Fiction';


-- 2) Find books published after the year 1950:
SELECT * FROM Books 
WHERE Published_year>1950;


-- 3) List all customers from the Canada:
SELECT * FROM Customers 
WHERE country='Canada';


-- 4) Show orders placed in November 2023:
SELECT * FROM Orders 
WHERE order_date BETWEEN '2023-11-01' AND '2023-11-30';


-- 5) Retrieve the total stock of books available:
SELECT SUM(stock) AS Total_Stock
From Books;


-- 6) Find the details of the most expensive book:
-- 
SELECT TOP 1 *
FROM Books
ORDER BY Price DESC;


-- 7) Show all customers who ordered more than 1 quantity of a book:
SELECT * FROM Orders 
WHERE quantity>1;


-- 8) Retrieve all orders where the total amount exceeds $20:
SELECT * FROM Orders 
WHERE total_amount>20;


-- 9) List all genres available in the Books table:
SELECT DISTINCT genre FROM Books;


-- 10) Find the book with the lowest stock:
SELECT TOP 1 * 
FROM Books 
ORDER BY stock; 

-- 11) List customers in alphabetical order by name.
SELECT * FROM Customers
ORDER BY Name ASC;

--12) Find the total number of books in stock.
SELECT SUM(Stock) AS Total_Stock 
FROM Books;

--13) Calculate total sales amount from all orders.
SELECT SUM(Total_Amount) AS Total_Sales
FROM Orders;

-- 14) Find Average Price of Books
SELECT AVG(Price) AS AVG_Book_Price
FROM Books;

--15) Find Total Sales per customer
SELECT Customer_ID, SUM(Total_Amount) AS Total_Sales
FROM Orders
GROUP BY Customer_ID;


--16) Find how many books are in each genre 
SELECT Genre, COUNT(*) AS Books_Count
FROM Books
GROUP BY Genre;


-- Advance Questions : 

-- 1) Retrieve the total number of books sold for each genre:
SELECT * FROM ORDERS;

SELECT b.Genre, SUM(o.Quantity) AS Total_Books_sold
FROM Orders o
Join Books b ON o.book_id = b.book_id
GROUP BY b.Genre


-- 2) Find the average price of books in the "Fantasy" genre:
SELECT AVG(price) AS Average_Price
FROM Books
Where Genre = 'Fantasy';


-- 3) List customers who have placed at least 2 order
SELECT o.customer_id, c.name, COUNT(o.Order_id) AS ORDER_COUNT
FROM orders o
JOIN customers c ON o.customer_id=c.customer_id
GROUP BY o.customer_id, c.name
HAVING COUNT(Order_id) >=2;


--4) Find the most freqently ordered book 
SELECT TOP 1  
o.Book_id, b.title, COUNT(o.order_id) AS ORDER_COUNT
FROM orders o
JOIN books b ON o.book_id=b.book_id
GROUP BY o.book_id, b.title
ORDER BY ORDER_COUNT DESC 


-- 5) Show the top 3 most expensive books of 'Fantasy' Genre :
SELECT TOP 1 * 
FROM books
WHERE genre ='Fantasy'
ORDER BY price DESC 

-- 6) Retrieve the total quantity of books sold by each author:
SELECT b.author, SUM(o.quantity) AS Total_Books_Sold
FROM orders o
JOIN books b ON o.book_id=b.book_id
GROUP BY b.Author;


-- 7) List the cities where customers who spent over $30 are located:
SELECT DISTINCT c.city, total_amount
FROM orders o
JOIN customers c ON o.customer_id=c.customer_id
WHERE o.total_amount > 30;


-- 8) Find the customer who spent the most on orders:
SELECT TOP 1 
    c.customer_id, 
    c.name, 
    SUM(o.total_amount) AS Total_Spent
FROM orders o
JOIN customers c 
    ON o.customer_id = c.customer_id
GROUP BY c.customer_id, c.name
ORDER BY Total_Spent DESC;




# 📚 Bookstore SQL Queries

This project contains **SQL queries** designed to work on a bookstore database with three tables:

* **Books** – Contains details about each book.
* **Customers** – Contains details about customers.
* **Orders** – Contains details about orders placed by customers.

The queries demonstrate **basic**, **intermediate**, and **advanced** SQL operations including filtering, sorting, aggregation, grouping, and joining tables.

---

## 📂 Dataset Structure

### **Books Table**

| Column          | Description                     |
| --------------- | ------------------------------- |
| book\_id        | Unique identifier for each book |
| title           | Title of the book               |
| author          | Author's name                   |
| genre           | Genre/category of the book      |
| published\_year | Year the book was published     |
| price           | Price of the book               |
| stock           | Number of copies available      |

### **Customers Table**

| Column       | Description                         |
| ------------ | ----------------------------------- |
| customer\_id | Unique identifier for each customer |
| name         | Customer's full name                |
| country      | Country of residence                |
| city         | City of residence                   |

### **Orders Table**

| Column        | Description                          |
| ------------- | ------------------------------------ |
| order\_id     | Unique identifier for each order     |
| customer\_id  | Customer who placed the order        |
| book\_id      | Book that was ordered                |
| order\_date   | Date when the order was placed       |
| quantity      | Quantity ordered                     |
| total\_amount | Total order value (price × quantity) |

---

## 📝 SQL Queries

### **Basic Queries**

1. Retrieve all books in the "Fiction" genre.
2. Find books published after the year 1950.
3. List all customers from Canada.
4. Show orders placed in November 2023.
5. Retrieve the total stock of books available.
6. Find the details of the most expensive book.
7. Show all customers who ordered more than 1 quantity of a book.
8. Retrieve all orders where the total amount exceeds \$20.
9. List all unique genres available in the Books table.
10. Find the book with the lowest stock.
11. List customers in alphabetical order by name.
12. Find the total number of books in stock.
13. Calculate the total sales amount from all orders.
14. Find the average price of books.
15. Find total sales per customer.
16. Find how many books are in each genre.

---

### **Advanced Queries**

1. Retrieve the total number of books sold for each genre.
2. Find the average price of books in the "Fantasy" genre.
3. List customers who have placed at least 2 orders.
4. Find the most frequently ordered book.
5. Show the top 3 most expensive books of the 'Fantasy' genre.
6. Retrieve the total quantity of books sold by each author.
7. List the cities where customers who spent over \$30 are located.
8. Find the customer who spent the most on orders.

---

## ⚙️ How to Run

1. Import the CSV files (**Books.csv**, **Customers.csv**, **Orders.csv**) into your SQL database (e.g., MySQL, SQL Server, or PostgreSQL).
2. Ensure table names match the queries (`Books`, `Customers`, `Orders`).
3. Run the queries in your SQL environment.

---

## 💡 Key SQL Features Used

* **`WHERE`** – Filtering rows.
* **`ORDER BY`** – Sorting results.
* **`GROUP BY`** – Aggregating data by category.
* **`HAVING`** – Filtering aggregated data.
* **`JOIN`** – Combining data from multiple tables.
* **Aggregate Functions** – `SUM`, `COUNT`, `AVG`, `DISTINCT`, `TOP`.

---

## 📌 Example Output


```sql
SELECT TOP 1 *
FROM Books
ORDER BY Price DESC;
```

| book\_id | title     | author   | genre   | published\_year | price | stock |
| -------- | --------- | -------- | ------- | --------------- | ----- | ----- |
| 12       | The Elite | Sarah J. | Fantasy | 2018            | 45.99 | 8     |

---


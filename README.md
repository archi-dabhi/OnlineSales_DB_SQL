
** Online Sales Database **
  
  ‣ File: OnlineSales_DB.sql
  ‣ Purpose: Create a sample sales database, insert 2023–2024 order data, and run basic analysis queries.

◘ Steps

1. Create Database & Table

    CREATE DATABASE Online_sales;
    USE Online_sales;
    CREATE TABLE orders (
        order_id INT,
        order_date DATE,
        amount DECIMAL(10,2),
        product_name VARCHAR(100)
    );


2. Insert Sample Data

  • Adds orders for the years 2023–2024 with:
      ‣ order_id
      ‣ order_date
      ‣ amount
      ‣ product_name


3. Queries Included

    ‣ Extract month: SELECT EXTRACT(MONTH FROM order_date) ...
    ‣ Group by year/month
    ‣ Total revenue: SUM(amount)
    ‣ Order volume: COUNT(DISTINCT order_id)
    ‣ Sort by date: ORDER BY order_date
    ‣ Filter by date range: WHERE order_date BETWEEN ...

➼ Usage

   • Open in MySQL Workbench → Run script → View outputs.


-- MySQL Queries for Converting and Altering Date & Time Columns

-- Convert 'transaction_date' column values to proper DATE format (DD-MM-YYYY)
UPDATE coffee
SET transaction_date = STR_TO_DATE(transaction_date, '%d-%m-%Y');

-- Alter 'transaction_date' column to DATE data type
ALTER TABLE coffee
MODIFY COLUMN transaction_date DATE;

-- Convert 'transaction_time' column values to proper TIME format (HH:MM:SS)
UPDATE coffee
SET transaction_time = STR_TO_DATE(transaction_time, '%H:%i:%s');

-- Alter 'transaction_time' column to have TIME data type
ALTER TABLE coffee
MODIFY COLUMN transaction_time TIME;

-- Display the data types of all columns in the 'coffee_shop_sales' table
DESCRIBE coffee;


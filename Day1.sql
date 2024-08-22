# 1757. Recyclable and Low Fat Products

# Write your MySQL query statement below
SELECT product_id
FROM products
WHERE low_fats = "Y" AND recyclable = "Y";



# 584. Find Customer Referee
# Write your MySQL query statement below
SELECT NAME
FROM CUSTOMER
WHERE
REFEREE_ID != 2 OR REFEREE_ID IS NULL;
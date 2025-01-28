--S1-solution 1 AS1- Alternate solution 1
-- Q1. Write an SQL query to find the name of the product with the highest price in each country. 
-- use Rank function to display all of the highest price products and Join to combine both the tables
S1:
with CTE_RP as (select p.*,s.supplier_id AS supplier_id_supplier,s.country,dense_rank() over(partition by s.country order by p.price desc) as rank_price from products p join suppliers s on p.supplier_id=s.supplier_id)
select * from CTE_RP where rank_price=1;

AS1:
SELECT *
FROM (
    SELECT 
        p.*, 
        s.supplier_id AS supplier_id_supplier,
        s.country, 
        DENSE_RANK() OVER(PARTITION BY s.country ORDER BY p.price DESC) AS rank_price
    FROM 
        products p
    JOIN 
        suppliers s 
        ON p.supplier_id = s.supplier_id
) ranked_products
WHERE rank_price = 1;

-- Q.2 Write a SQL query to find total transaction amt group by each customer filter with current year 
-- put where condition to check if the transaction are current year
S2:
SELECT 
    c.customer_id,c.customer_name, 
    SUM(t.amount) AS total_txn_amnt
FROM 
    customers c
JOIN 
    transaction t 
    ON c.customer_id = t.customer_id
WHERE 
    EXTRACT(YEAR FROM t.transaction_date) = 2024
GROUP BY 
    c.customer_id,c.customer_name;

------------------------Day2
--Q3: Write an SQL query to find the average order amount for male and female customers separately return the results with 2 DECIMAL.

S3: select c.gender,to_char(avg(o.total_amount),99999.99) avg_order_amnt from cust c join orders o on c.customer_id=o.customer_id group by c.gender;

AS3: select * from customers;
SELECT 
    c.gender, round(avg(o.total_amount),2) AS total_order_amt
FROM
    cust c
        JOIN
    orders o ON o.customer_id = c.customer_id
    group by c.gender
    ;

--Q4 Write an SQL query to find out the total sales revenue generated for each month in the year 2023.

S4: SELECT 
    SUM(price_per_unit * quantity) AS total_revenue,
    EXTRACT(MONTH FROM order_date) AS month,
    EXTRACT(YEAR FROM order_date) AS year
FROM 
    sales
WHERE 
    EXTRACT(YEAR FROM order_date) = 2023
GROUP BY 
    EXTRACT(MONTH FROM order_date), 
    EXTRACT(YEAR FROM order_date)
    ORDER BY 
    month;

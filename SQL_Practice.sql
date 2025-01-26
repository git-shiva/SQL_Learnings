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
S1:
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

DROP TABLE IF EXISTS zepto;


CREATE TABLE zepto (
sku_id SERIAL PRIMARY  KEY,
category VARCHAR (120),
name VARCHAR(150) NOT NULL,
mrp NUMERIC(8,2),
discountPercent NUMERIC(5,2),
availableQuantity INTEGER,
discountSellingPrice NUMERIC(8,2),
weightINGms INTEGER,
OutOfStock BOOLEAN,
quantity INTEGER
);

SELECT * FROM zepto;

SELECT COUNT(*) FROM zepto;

SELECT * FROM zepto
LIMIT 10;


-- NULL VALUES 

SELECT * FROM zepto 
WHERE name IS NULL
OR 
category IS NULL
OR 
mrp IS NULL
OR 
discountpercent IS NULL
OR
availablequantity IS NULL
OR
discountsellingprice IS NULL
OR 
weightingms IS NULL
OR 
outofstock IS NULL
OR
quantity IS NULL

-- different  product categories 

SELECT DISTINCT category 
FROM zepto
ORDER BY category;


-- see how many products are in stock or out of stock

SELECT outofstock, COUNT(sku_id)
FROM zepto
GROUP BY outofstock;

-- check for products name which appears more than 1 in sku_id


SELECT * FROM zepto;

SELECT name, COUNT(sku_id)
FROM zepto
GROUP BY name
HAVING COUNT(sku_id)>1
ORDER BY COUNT(sku_id) DESC;


                        --    DATA CLEANING   -- 

-- check for products where price might be zero 


SELECT * FROM zepto;


SELECT * 
FROM zepto
WHERE mrp = 0 OR discountsellingprice = 0;

DELETE FROM 
ZEPTO 
WHERE mrp = 0;


-- covert paise to rupees

UPDATE zepto
SET mrp = mrp/100.0, discountsellingprice = discountsellingprice/100.0


SELECT * FROM zepto;

-- BUSINESS QUESTIONS 


-- 1) FIND THE TOP 10 BEST VALUE PRODUCTS BASED ON THE DISCOUNT PERECENTAGE 


SELECT * FROM zepto;


SELECT DISTINCT name,mrp, discountpercent
FROM zepto 
ORDER BY discountpercent DESC LIMIT 10;


-- 2) WHAT ARE THE PRODUCTS WITH HIGH MRP BUT OUT OF STOCK 


SELECT * FROM zepto;

SELECT DISTINCT name, mrp, outofstock
FROM zepto
WHERE outofstock = True 
ORDER BY mrp DESC;



--3) CALCULATE ESTIMATED REVENUE FOR EACH CATEGORY 


SELECT * FROM zepto;


SELECT category, SUM(discountsellingprice*availablequantity) AS total_revenue
FROM zepto 
GROUP BY category
ORDER BY total_revenue;



-- 4) FIND ALL PRODUCTS WHERE MRP IS GREATER THAN RS.500 AND DISCOUNT IS LESS THAN 10%


SELECT * FROM zepto;

SELECT DISTINCT name, mrp, discountpercent
FROM zepto 
WHERE mrp>500 AND discountpercent<10.00
ORDER BY mrp DESC, discountpercent DESC;


--5) IDENTIFY THE TOP 5 CATEGORIES OFFERING THE HIGHEST AVERAGE DISCOUNT PERCENTAGE 


SELECT * FROM zepto;

SELECT DISTINCT category, ROUND(AVG(discountpercent),2) AS avg
FROM zepto
GROUP BY category 
ORDER BY avg DESC LIMIT 5;


-- 6) FIND THE PRICE PER GRAM FOR PRODUCTS ABOVE 100G AND SORT BY BEST VALUE

SELECT * FROM zepto;

SELECT DISTINCT name,weightingms,discountsellingprice, ROUND(discountsellingprice/weightingms,2) AS price_PER_GRAM
FROM zepto
WHERE weightingms>=100
ORDER BY price_per_gram


--7) Group the products into categories like low,med,bulk 

SELECT * FROM zepto;

SELECT DISTINCT weightingms
FROM zepto;

SELECT DISTINCT name,weightingms,
 CASE WHEN weightingms<1000 THEN 'low'
 		WHEN weightingms<5000 THEN 'medium'
		ELSE 'Bulk'
		END AS weight_category

FROM zepto;


--8) what is the total inventory rate per category 


SELECT category, SUM(weightingms*availablequantity) AS total
FROM zepto
GROUP BY category
ORDER BY total






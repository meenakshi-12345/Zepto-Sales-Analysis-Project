<img width="666" height="375" alt="zepto1-removebg-preview" src="https://github.com/user-attachments/assets/b6c1ae98-69ea-44b0-ad3d-185ee4ee1722" />

🛒 Zepto SQL Data Analysis Project
📌 Project Overview

This project focuses on performing SQL-based data analysis on Zepto product data.
The goal is to clean the dataset, explore product insights, and answer key business questions using SQL queries.

The analysis covers:

Data cleaning

Stock availability analysis

Pricing & discount analysis

Revenue estimation

Inventory insights

🗂️ Dataset Description

The dataset contains product-level information including:

Column Name	Description
sku_id	Unique product identifier
category	Product category
name	Product name
mrp	Maximum Retail Price (₹)
discountPercent	Discount percentage
availableQuantity	Quantity available in stock
discountSellingPrice	Selling price after discount (₹)
weightInGms	Product weight in grams
outOfStock	Stock availability (True/False)
quantity	Units per package
🧹 Data Cleaning Performed

✔ Checked for NULL values
✔ Identified duplicate product names
✔ Removed products where MRP = 0
✔ Converted prices from paise to rupees
✔ Validated stock availability

📊 Business Questions Solved

🔥 Top 10 best value products based on discount percentage

📦 High MRP products that are out of stock

💰 Estimated revenue per category

💎 Products with MRP > ₹500 and discount < 10%

🏷️ Top 5 categories with highest average discount

⚖️ Price per gram for products above 100g

📦 Product weight segmentation (Low / Medium / Bulk)

📊 Total inventory weight per category

🛠️ SQL Concepts Used

SELECT statements

WHERE filtering

GROUP BY

HAVING clause

ORDER BY

LIMIT

Aggregate functions (SUM, AVG, COUNT)

CASE statements

Data updates & deletion

📈 Key Insights

Identified heavily discounted products offering best value.

Found premium products that are currently out of stock.

Estimated potential revenue across categories.

Segmented products based on weight for better inventory understanding.

Calculated price efficiency using price-per-gram metric.

* Snapshots



<img width="773" height="589" alt="Screenshot 2026-02-12 223157" src="https://github.com/user-attachments/assets/6f86159a-2e8f-4a65-bee6-274509341f30" />




<img width="786" height="449" alt="Screenshot 2026-02-12 223227" src="https://github.com/user-attachments/assets/b74d53d8-8300-4f99-84c5-9e839d49298f" />




<img width="804" height="595" alt="Screenshot 2026-02-12 223320" src="https://github.com/user-attachments/assets/8381bca0-87ac-4ec7-a329-247099bd9e68" />




🚀 Tools Used

PostgreSQL

SQL

📌 How to Run

Create the zepto table using the provided schema.

Import your dataset.

Run the SQL queries sequentially.

Review results for business insights.

👩‍💻 Author

Meenakshi Rajpurohit
Aspiring Data Analyst | SQL | Power BI | Data Analytics

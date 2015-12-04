January 1	New Year Day
Canada Day	July 1
Labour Day	First Monday of September
Thanksgiving Day - Second Monday of October
December 25 Christmas

/*Create external table*/
DROP TABLE IF EXISTS store;
CREATE EXTERNAL TABLE store
(Order_ID BIGINT,
Order_Date DATE,
Order_Priority STRING,
Order_Quantity BIGINT,
Sales DOUBLE,
Discount DOUBLE,
Ship_Mode STRING,
Profit DOUBLE,
Unit_Price DOUBLE,
Shipping_Cost DOUBLE,
Customer_Name STRING,
Province STRING,
Region STRING,
Customer_Segment STRING,
Product_Category STRING,
Product_SubCategory STRING,
Product_Name STRING,
Product_Container STRING,
Product_Base_Margin DOUBLE,
Ship_Date DATE)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' 
STORED AS TEXTFILE LOCATION 'wasb://hivecontainer@528.blob.core.windows.net/hivefolder/';

/*sample query*/
select * from store limit 5;

/*query of valued customers*/
DROP TABLE IF EXISTS ValuedCustomer;
CREATE TABLE IF NOT EXISTS ValuedCustomer(Customer_Name STRING, Sales DOUBLE);
INSERT OVERWRITE TABLE ValuedCustomer
select A.customer_name, A.sales
from store as A
where A.sales >10000.00 AND A.customer_name in
	(SELECT  B.customer_name
	 FROM store as B
	 GROUP BY B.customer_name HAVING count(B.customer_name) > 20);

/*query of sales in province*/
DROP TABLE IF EXISTS SalesInProvince;
CREATE TABLE IF NOT EXISTS SalesInProvince(Province STRING, Sum_Sales DOUBLE);
INSERT OVERWRITE TABLE SalesInProvince
SELECT Province, sum(sales)
FROM store
GROUP BY Province;

/*query of sales and profit per year*/  
DROP TABLE IF EXISTS Salesperyear;
CREATE TABLE IF NOT EXISTS Salesperyear(year INT, Sum_Sales DOUBLE, Sum_Profit DOUBLE);
INSERT OVERWRITE TABLE Salesperyear
select year(order_date), sum(sales), sum(profit)
from store
group by year(order_date);

/*query of product_subcategory and sum of sales*/
DROP TABLE IF EXISTS ProductSubCatg;
CREATE TABLE IF NOT EXISTS ProductSubCatg(sum_sales DOUBLE, product_subcategory STRING);
INSERT OVERWRITE TABLE ProductSubCatg
select sum(sales), Product_SubCategory
from store
group by Product_SubCategory;

/*query of customer_segment and sum of sales*/
DROP TABLE IF EXISTS CustomerSegment;
CREATE TABLE IF NOT EXISTS CustomerSegment(sum_sales DOUBLE, Customer_Segment STRING);
INSERT OVERWRITE TABLE CustomerSegment
select sum(sales), Customer_Segment
from store
group by Customer_Segment;

/*Miscellaneous query - ignore, not used for our project*/
SELECT sales, customer_name
FROM store
WHERE order_date >= '2009-07-03' AND order_date <= '2009-07-05';
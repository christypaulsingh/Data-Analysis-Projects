create database sales_analysis;
use sales_analysis;
select * from superstore;

#1.Total orders:
select  count(Order_ID) Total_Order from superstore;

#2.Total Sales:
select count(Sales) Total_Sales from superstore;

#3.Total Average Profit:
select avg(Profit) from superstore;

#4.Which region is more profit:
select Region,sum(Profit) as Total_Profit from superstore
group by Region
order by Total_Profit desc;

#5.Top 10 Products are Sales:
select Product_Name,sum(Sales) as Total_Sales from superstore
group by Product_Name
order by Total_Sales desc
limit 10;

#6.Which customer Person is more order products:
select Customer_Name,sum(Sales) as More_Order from superstore
group by Customer_Name
order by More_Order desc;

#7.Which Category is more profit:
select category,sum(Profit) as total_Profit from superstore
group by category
order by total_Profit desc;

#8.Which category is more discount and its profit:
select category,sum(Discount) as discount,sum(Profit) as profit from superstore
group by category
order by discount desc, profit desc;

#9.category and sub-category are Total_sales:
select category,Sub_Category,sum(Sales) as Total_Sales from superstore
group by category,Sub_Category; 

#10.Average profit per order:
select avg(Profit) as average 
from
(
select Order_ID,sum(Profit) as Total_Profit from superstore
group by Order_ID
order by Total_Profit desc
) t;




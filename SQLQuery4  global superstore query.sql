use mmachukwu
go
select * from "global superstore retail sales analysis"  
1--What are the top 10 products by revenue?
select top 10 product_name, sum(sales) as revenue from "global superstore retail sales analysis" 
group by product_name
order by revenue desc
2--What are the bottom 10 products by revenue?
select top 10 product_name, sum(sales) as revenue from "global superstore retail sales analysis" 
group by product_name
order by revenue asc
3--What is the total revenue generated over the 4- year period?
select sum(sales) as total_revenue
from "global superstore retail sales analysis" 
4--which region generates the highest revenue?
select region, sum(sales) as revenue from "global superstore retail sales analysis" 
group by region
order by revenue desc
5--What product category contributes the most revenue?
select category, sum(sales) as revenue from "global superstore retail sales analysis" 
group by category
order by revenue desc
6--What product category contributes the less revenue?
select product_name, sum(sales) as revenue from "global superstore retail sales analysis" 
group by product_name
having sum(sales) < 2
7--What sub_category contributes the most revenue?
select sub_category, sum(sales) as revenue from "global superstore retail sales analysis" 
group by sub_category
order by revenue desc
8--Which customer and segment generates the most revenue?
select customer_name, segment, sum(sales) as revenue from "global superstore retail sales analysis" 
group by customer_name, segment
order by revenue desc
9--Which customer and segment generates the less revenue?
select customer_name, segment, sum(sales) as revenue from "global superstore retail sales analysis"
group by customer_name, segment
order by revenue asc
10--How has revenue changed month-by-month?
select year(order_date) as sales_year,
month(order_date) as sales_month,
sum(sales) as revenue from "global superstore retail sales analysis" 
group by year(order_date), month(order_date) order by sales_year, sales_month
11--Which year has the highest revenue?
select year(order_date) as sales_year, sum(sales) as revenue from "global superstore retail sales analysis" 
group by year(order_date)
order by revenue desc
12--Which quarter performs best?
select datepart(quarter, order_date) as quarter, sum(sales) as revenue from "global superstore retail sales analysis" 
group by datepart(quarter, order_date)
order by revenue desc
13--Which category has the highest profit margin?
select category, sum(sales) * 100.0 / sum(sales) as profit_margin from "global superstore retail sales analysis" 
group by category
order by profit_margin desc
14--Which products have negative profit margin?
select product_name, sum(sales) * 100.0 / sum(sales) as profit_margin from "global superstore retail sales analysis" 
group by product_name
having sum(sales) * 100.0 / sum(sales) < 10
order by profit_margin
15--Which city has the highest sales revenue?
select city, sum(sales) as revenue from "global superstore retail sales analysis" 
group by city
order by revenue desc
16--Which state has the highest sales revenue?
select state, sum(sales) as revenue from "global superstore retail sales analysis" 
group by state
order by revenue desc
17--What is the most used ship mode?
select ship_mode, count(*) as number_of_orders from "global superstore retail sales analysis" 
group by ship_mode
order by number_of_orders desc
18--What is the most used ship mode by revenue?
select ship_mode, sum(sales) as revenue from "global superstore retail sales analysis" 
group by ship_mode
order by revenue desc
19--Which city has the less sales revenue?
select city, sum(sales) as revenue from "global superstore retail sales analysis" 
group by city
order by revenue asc
20--Which state has the less sales revenue?
select state, sum(sales) as revenue from "global superstore retail sales analysis" 
group by state
order by revenue asc
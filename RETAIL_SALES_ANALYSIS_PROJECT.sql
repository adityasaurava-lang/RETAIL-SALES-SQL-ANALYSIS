-- --===================================================================================================================================================== 
-- --======= 
-- RETAIL SALES SQL ANALYSIS PROJECT
-- --AUTHOR:-ADITYA RAJ
--
-- --====================================================================================================================================================  


select*from retail_Sales_Dataset.retail_sales;
-- -- Q2. Show Transaction ID, Date, Total Amount
SELECT `Transaction ID`, `Date`, `Total Amount`
FROM retail_sales_dataset.retail_sales;
-- Q3. Display records where Product Category = 'Clothing'-- 

select * from retail_Sales_dataset.retail_sales where `Product Category`='clothing'; 
/*Q4. Find the total sales amount for each Product Category.
👉 (GROUP BY + SUM)
*/
select `product category`, sum(`total amount`) as total_sales
FROM retail_sales_dataset.retail_sales
group by `product category`;

-- Q5. Calculate the total purchase amount by Gender (Male vs Female).
-- 👉 (GROUP BY Gender)
 select `gender`,sum(`total amount`) as total_purchase_amount
 FROM retail_sales_dataset.retail_sales
 group by `gender`;
 
 -- Q6. Display transactions where Quantity > 1 and Price per Unit > 100.
-- 👉 (Using multiple conditions with AND)

select* FROM retail_sales_dataset.retail_sales where `Quantity`> 1 and `price per unit`>100;

-- Q7. Show the top 5 transactions with the highest Total Amount.
-- 👉 (ORDER BY + LIMIT)

select * from retail_Sales_dataset.retail_sales
order by `total amount` DESC
limit 5;

-- 8. Find the total spending of each Customer and display it in descending order.
-- 👉 (Customer-wise analysis)


select `customer id`,sum(`total amount`) as total_spending
 from  retail_Sales_dataset.retail_sales
 group by `customer id`
 order by total_spending desc;
 
 -- Q9. Calculate the average age of customers for each Product Category.
-- 👉 (AVG + GROUP BY)

select avg(`age`),`product category`
from retail_Sales_dataset.retail_sales
group by `product category`;
-- Q10. Display transactions where Total Amount is greater than the overall average Total Amount.
-- 👉 (Subquery – Advanced SQL) */

select * from retail_Sales_dataset.retail_sales where `total amount`> (select avg(`total amount`) from retail_Sales_dataset.retail_sales);
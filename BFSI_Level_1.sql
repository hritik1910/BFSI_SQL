Create Database BFSI;
Use BFSI;

# 1.Find the total number of customers in the dataset.
Select count(Customer_ID) from finance;

# 2. Find the total number of customers in each State.
select State, count(Customer_ID)  as Total_Customer
from finance
group by State
Order by Total_Customer DESC;

# 3. Find the total number of customers in each City.
select City, count(Customer_ID) as Customer_per_city
from finance
group by City
Order by Customer_per_city DESC;

# 4. Find the average age of all customers.
Select Round(avg(Age),2) from finance;

# 5. Find the average Annual_Income of customers.
Select round(Avg(Annual_Income),2) from finance;

# 6. Find the maximum and minimum Annual_Income.: Mine
Select max(Annual_Income), min(Annual_Income)
from finance;

# 6. Find the maximum and minimum Annual_Income.: AI
SELECT 
    MAX(Annual_Income) AS Maximum_Income,
    MIN(Annual_Income) AS Minimum_Income
FROM finance;

# 7. Find the average Credit_Score.
Select round(Avg(Credit_Score),2) from finance;

# 8. Find the number of customers by Gender : Mine
Select Gender, count(Customer_ID) as Gender_Count
from finance
group by Gender
order by Gender_Count Desc;

# 8. Find the number of customers by Gender : AI
SELECT 
    Gender,
    COUNT(*) AS Customer_Count
FROM finance
GROUP BY Gender
ORDER BY Customer_Count DESC;

# 9. Find the number of customers in each Customer_Segment: Mine
Select Customer_Segment, count(Customer_ID) as Segment_Count
from finance
group by Customer_Segment;

# 9. Find the number of customers in each Customer_Segment: AI
SELECT 
    Customer_Segment,
    COUNT(*) AS Customer_Count
FROM finance
GROUP BY Customer_Segment
ORDER BY Customer_Count DESC;

# 10.  Find the number of customers by Employment_Type.
Select Employment_Type, count(Customer_ID) as Employment_Count
from finance
group by Employment_Type
order by Employment_Count Desc;

# 11. Find the number of customers with an Active customer status.
Select Customer_Status, count(Customer_ID) as Active_Customers
from finance
Where Customer_Status = 'Active';

# 12. Find the number of Active, Dormant, and Churned customers.
Select Customer_Status, count(Customer_ID) as Customers_Available
from finance
group by Customer_Status;

# 13. Find the total Account_Balance held by all customers.
Select Sum(Account_Balance) from finance;

# 14. Find the average Account_Balance for each Account_Type.
Select Account_Type, round(Avg(Account_Balance),2) as Average_balance
from finance
group by Account_type
order by Average_balance Desc;

# 15. Find the number of customers having each type of bank account.
Select Account_Type, count(Customer_ID) as Customer_Count
from finance
group by Account_Type
order by Customer_Count Desc;

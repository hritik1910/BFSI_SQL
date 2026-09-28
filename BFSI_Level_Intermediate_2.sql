# Level 3 — Business Analysis Questions

use BFSI;

# 31. Which customer segment has the highest average annual income?
Select Customer_Segment, Round(Avg(Annual_Income),2) as Avg_annual_income
From Finance
group by Customer_Segment 
order by Avg_annual_income desc limit 1;

# 32. Which customer segment has the highest average account balance?
Select Customer_Segment, Round(Avg(Account_Balance),2) as Avg_acc_balance
From Finance
group by Customer_Segment 
order by Avg_acc_balance desc limit 1;

# 33. Which state has the highest number of customers?
Select State, Count(*) as num_of_customers
From Finance
group by state
order by num_of_customers desc limit 1;

# 34. Which city generates the highest total account balance?
Select City, Count(*) as num_of_customers
From Finance
group by City
order by num_of_customers desc limit 1;

# 35. Find the average credit score for each customer segment.
Select Customer_Segment, Round(Avg(Credit_Score),2) as Avg_credit_score
From Finance
group by Customer_Segment;

#. 36. Find the average income by employment type.
Select Employment_Type, Round(Avg(Annual_Income),2) as Avg_inc_employmeny_type
From Finance
group by Employment_Type
order by Avg_inc_employmeny_type;

# 37. Identify customers who have high income but low credit scores.
#For example: Annual_Income > 1,000,000 AND Credit_Score < 600
Select Customer_ID, Customer_Name, Annual_Income, Credit_Score
From Finance
where Credit_Score < 600 and Annual_Income > 1000000
Order by Annual_Income desc;

# 38. Find the percentage of customers who are Churned.
SELECT
    ROUND(
        100.0 * SUM(CASE
            WHEN Customer_Status = 'Churned' THEN 1
            ELSE 0
        END) / COUNT(*), 2) AS Churn_Percentage
FROM Finance;
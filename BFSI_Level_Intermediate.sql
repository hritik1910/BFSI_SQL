#Level 2 — Filtering & Aggregation

Use BFSI;

# 16. Find customers whose Annual_Income is greater than ₹10,00,000. MIne
Select * from Finance 
where Annual_Income > 1000000;

# 17. Find customers whose Credit_Score is greater than 750. MIne
Select * from Finance 
where Credit_Score > 750;

# 18. Find customers whose Credit_Score is below 600.
Select * from Finance 
where Credit_Score < 600;

# 19. Find customers who have an Active loan.
Select * From Finance 
Where Loan_Status = 'Active';

# 20. Find customers who have a Delinquent loan.
Select * From Finance 
Where Loan_Status = 'Delinquent';

# 21. Find the total number of customers with no loan. MIne
Select count(Customer_ID), Loan_Status 
From Finance
where Loan_Status = 'No Loan';

# 21. Find the total number of customers with no loan. AI
Select count(*)
From Finance
where Loan_Status = 'No Loan';

# 22. Find the total loan amount issued by Loan_Type.
Select Loan_Type, sum(Loan_Amount) as Total_Amount
From Finance
group by Loan_Type
order by Total_Amount desc;

# 23. Find the total outstanding loan amount by loan type.
select Loan_Type, sum(Outstanding_Loan) as Outstanding_Loan
from Finance
group by Loan_Type
order by Outstanding_Loan desc;

# 24. Find the average loan amount for each Loan_Type. MIne
Select Loan_Type, avg(Loan_Amount) as Avg_Amount
From Finance
group by Loan_Type
order by Avg_Amount desc;

# 24. Find the average loan amount for each Loan_Type. AI
SELECT
    Loan_Type,
    AVG(Loan_Amount) AS Average_Loan_Amount
FROM Finance
WHERE Loan_Type <> 'None'
GROUP BY Loan_Type
ORDER BY Average_Loan_Amount DESC;

# 25. Find the average interest rate for each loan type.
Select Loan_Type, Round(Avg(Interest_Rate),2) as Avg_rate
from Finance
group by Loan_Type
order by Avg_rate desc;

# 26. Find the number of customers who have missed their loan payments. MIne
Select count(Days_Past_Due)
From Finance
where Days_Past_Due <> 0;

# 26. Find the number of customers who have missed their loan payments. AI
SELECT COUNT(*) AS Customers_With_Missed_Payments
FROM Finance
WHERE Payment_Status = 'Overdue';

# 27. Find customers with Days_Past_Due greater than 30.
Select Customer_ID, Customer_Name, Days_Past_Due
From Finance
where Days_Past_Due > 30;

# 28. Find the top 10 customers with the highest Outstanding_Loan.
Select Customer_ID, Customer_Name, Outstanding_Loan as Loan_amount
From Finance
order by Loan_amount desc limit 10;

# 29. Find the top 10 customers with the highest Account_Balance.
Select Customer_ID, Customer_Name, Account_Balance as Availabe_balance
from Finance 
order by Availabe_balance desc limit 10;

# 30. Find customers whose credit-card utilization is greater than 80%.
Select Customer_ID, Customer_Name, Credit_Card_Utilization
from Finance
where Credit_Card_Utilization > 0.8;
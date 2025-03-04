-- Churn Analysis

-----------------------------------------------------------
-- Creating churn database
create database churn;

-----------------------------------------------------------
use churn;

----------------------------------------------------------
-- Importing table from table wizard

-- Adding Primary Key
ALTER TABLE `churn`.`customer_data` 
CHANGE COLUMN `Customer_ID` `Customer_ID` varchar(50) NOT NULL ,
ADD PRIMARY KEY (`Customer_ID`);

-----------------------------------------------------------
-- Handling Blank Values
update customer_data
set Value_Deal = null
where Value_Deal = "";

update customer_data
set Multiple_lines = null
where Multiple_Lines = "";

update customer_data
set Internet_Type = null
where Internet_Type = "";

update customer_data
set Online_Security = null
where Online_Security = "";

update customer_data
set Online_Backup = null
where Online_Backup  = "";

update customer_data
set Device_Protection_Plan = null
where Device_Protection_Plan = "";

update customer_data
set Premium_Support = null
where Premium_Support = "";

update customer_data
set Streaming_TV = null
where Streaming_TV = "";

update customer_data
set Streaming_Movies = null
where Streaming_Movies = "";

update customer_data
set Unlimited_Data = null
where Unlimited_Data = "";

update customer_data
set Churn_Category = null
where Churn_Category = "";

update customer_data
set Churn_Reason = null
where Churn_Reason = "";

-----------------------------------------------------
-- Exploring the Data

-- Gender Distribution
Select Gender, 
count(Gender) as Total_Count,
count(Gender)/(Select count(*) from customer_data)*100 as Percentage
from customer_data
group by gender;

-- Contract Distribution
Select Contract,
count(Contract) as TotalCount,
count(Contract)/(Select count(Contract) from customer_data)*100 as percentage
from customer_data
group by Contract;

-- Churn Distribution
Select Customer_Status,
count(Customer_Status) as TotalCount,
count(Customer_Status)/(Select count(Customer_Status) from customer_data)*100 as percentage
from customer_data
group by Customer_Status;

-- State wise distribution
Select State,
count(State) as TotalCount,
count(State)/(Select count(State) from customer_data)*100 as percentage
from customer_data
group by State
order by count(State) desc;

-- Type of Internet
Select distinct Internet_Type from customer_data;
------------------------------------------------------

-- Checking Null Values

Select 
	sum(case when Customer_ID is null then 1 else 0 end) as customer_id_null_count,
	sum(case when Gender is null then 1 else 0 end) as gender_null_count,
	sum(case when Age is null then 1 else 0 end) as age_null_count,
	sum(case when Married is null then 1 else 0 end) as married_null_count,
	sum(case when State is null then 1 else 0 end) as customer_id_null_count,
	sum(case when Number_of_Referrals is null then 1 else 0 end) as referrals_null_count,
	sum(case when Tenure_in_Months is null then 1 else 0 end) as Tenure_in_Months_null_count,
	sum(case when Value_Deal is null then 1 else 0 end) as Value_Deal_null_count,
	sum(case when Phone_Service is null then 1 else 0 end) as Phone_Service_null_count,
	sum(case when Multiple_Lines is null then 1 else 0 end) as Multiple_Lines_null_count,
	sum(case when Internet_Service is null then 1 else 0 end) as Internet_Servie_null_count,
	sum(case when Internet_Type is null then 1 else 0 end) as Internet_Type_null_count,
	sum(case when Online_Security is null then 1 else 0 end) as Online_Security_null_count,
	sum(case when Online_Backup is null then 1 else 0 end) as Online_Backup_null_count,
	sum(case when Premium_Support is null then 1 else 0 end) as Premium_Support_null_count,
	sum(case when Streaming_TV is null then 1 else 0 end) as Streaming_TV_null_count,
	sum(case when Streaming_Movies is null then 1 else 0 end) as Streaming_Movies_null_count,
	sum(case when Streaming_Music is null then 1 else 0 end) as Streaming_Music_null_count,
	sum(case when Unlimited_Data is null then 1 else 0 end) as Unlimited_Data_null_count,
	sum(case when Contract is null then 1 else 0 end) as Contract_null_count,
	sum(case when Payment_Method is null then 1 else 0 end) as Payment_Method_null_count,
	sum(case when Total_Revenue is null then 1 else 0 end) as Total_Revenue_null_count,
	sum(case when Customer_Status is null then 1 else 0 end) as Customer_Status_null_count,
	sum(case when Churn_Category is null then 1 else 0 end) as Churn_Category_null_count,
	sum(case when Churn_Reason is null then 1 else 0 end) as Churn_Reason_null_count
from customer_Data;
------------------------------------------------------------------

-- Handling Null Values

Create table customers 
as
Select
	Customer_ID,
    Gender,
    Age,
    Married,
    State,
    Number_of_Referrals,
    Tenure_in_Months,
    coalesce(Value_Deal, 'None') as Value_Deal,
    Phone_Service,
    coalesce(Multiple_Lines, 'No') as Multiple_Lines,
    Internet_Service,
    coalesce(Internet_Type, 'None') as Internet_Type,
    coalesce(Online_Security, 'No') as Online_Security,
    coalesce(Online_Backup, 'No') as Online_Backup,
    coalesce(Device_Protection_Plan, 'No') as Device_Protection_Plan,
    coalesce(Premium_Support, 'No') as Premium_Support,
    coalesce(Streaming_TV, 'No') as Streaming_TV,
    coalesce(Streaming_Movies, 'No') as Streaming_Movies,
    coalesce(Streaming_Music, 'No') as Streaming_Music,
    coalesce(Unlimited_Data, 'No') as Unlimited_Data,
    Contract,
    Paperless_Billing,
    Payment_Method,
    Monthly_Charge,
    Total_Charges,
    Total_Refunds,
    Total_Extra_Data_Charges,
    Total_Long_Distance_Charges,
    Total_Revenue,
    Customer_Status,
    coalesce(Churn_Category, 'No') as Churn_Category,
    coalesce(Churn_Reason, 'No') as Churn_Reason
from customer_data;
----------------------------------------------------------------

-- Creating Views

create view vw_churnData
as 
	select * from customers
	where Customer_Status in ('Churned','Stayed');
    
create view vw_JoinData
as 
	select * from customers
	where Customer_Status = 'Joined';

    
    

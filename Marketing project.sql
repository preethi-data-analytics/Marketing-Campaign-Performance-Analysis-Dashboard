create database marketing_campaign;
use marketing_campaign;
create table campaign_data(
age int,
job varchar(50),
marital varchar(50),
education varchar(50),
credit_default varchar(20),
Balance int,
Housing varchar(20),
Loan varchar(20),
Contact varchar(20),
contact_Date int,
contact_Month varchar(20),
Duration int,
Campaign int,
P_Days int,
Previous_calls int,
P_outcome varchar(20),
subscription_status varchar(20)
);

drop table campaign_data;
select* from bank limit 20;
#Analysis
#total customers
select count(*) from bank;
# average balance of all the customers
select avg(balance) from bank;
# Highest balance
select max(balance) from bank;
select min(balance) from bank;
#total customers by job
select job, count(*) as Total_customers from bank group by job order by Total_customers desc;
#Average balance by education
select Education, avg(Balance)as Average_balance from bank group by Education order by Average_balance desc; 
# total calls in camapign
select sum(campaign) as Total_calls from bank;
# total subcribed customer count
# Total customers with credit default
select credit_Default, count(*) from bank where credit_Default= "Yes";
#Total customers with housing loan =    
select Housing, count(*) from bank where Housing = "YES";
#Total customers with Loan = 
select Loan, count(*) from bank where Loan = "YES";
# Total customers with succesful previous campaign
select `P_out Come`, count(*)as total_customers from bank group by `P_out Come` order by total_customers desc;
select contact_Month, count(*) as Number_of_calls from bank group by contact_Month order by Number_of_calls desc;
select max(Campaign) from bank;
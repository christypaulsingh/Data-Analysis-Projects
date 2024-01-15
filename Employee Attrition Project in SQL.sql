use employee_attrition;
SELECT * FROM employee_attrition.employee_attrition;


#1.Total Employee:
select count(*) as Total_Employee from employee_attrition;

#2.Write a SQL query to find the details of employee under attrition having 5+ experience in between the age of group 27-35:
select * from employee_attrition
where Age between 27 and 35 and TotalWorkingYears >= 5;

#3.Employee having max and mini salary working in differnt department who received less than 13% salary hike:
select Department,max(MonthlyIncome),min(MonthlyIncome) from employee_attrition
where PercentSalaryHike < 13
group by Department;

#4.Calculate the average salary of all employee who worked more than 3years whose education background is medical:
select EducationField, avg(MonthlyIncome) from employee_attrition
where TotalWorkingYears > 3 and EducationField='Medical'
group by EducationField;

#5.Total no.of.male and female under the attrition whose the marital status is married and have'nt received promotion in the last 2 years
select Gender,count(MaritalStatus) as Total_Marital from employee_attrition
where MaritalStatus='Married' and YearsSinceLastPromotion=2 and Attrition='Yes'
group by Gender;

#6.Employee with max performance rating but no promotion for 4 years and above:
select * from employee_attrition
where PerformanceRating=(select max(PerformanceRating) from employee_attrition)
and YearsSinceLastPromotion >=4;

#7.Who max and mini percentage salary hike:
select Department,max(PercentSalaryHike),min(PercentSalaryHike) from employee_attrition
group by Department;

#8.Employee working overtime with give mini salary hike and more than 5years with company:
select * from employee_attrition
where OverTime='Yes' and PercentSalaryHike=(select min(PercentSalaryHike) from employee_attrition)
and TotalWorkingYears>5;

#9.List outthe employee whose salary is greater than average salary all the employee:
select * from employee_attrition
where MonthlyIncome > (
select avg(MonthlyIncome) from employee_attrition
);




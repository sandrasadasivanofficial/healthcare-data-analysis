create database healthcare_analysis;
use healthcare_analysis;

show databases;
show tables;
select * from healthcare_dataset;

describe healthcare_dataset;

use healthcare_analysis;

-- display all patients
select * from healthcare_dataset;

-- display the first 5 rows
select * from healthcare_dataset
limit 5;

-- display the first 10 rows
select * from healthcare_dataset
limit 10;

-- count the total number of rows
select count(*) as total_rows
from healthcare_dataset;

-- display only patient names
select Name
from healthcare_dataset;

-- find the total number of patients
select count(*) as total_patients from healthcare_dataset;

-- find the average age of patients
select avg(age) as average_age from healthcare_dataset;

-- find the youngest patient
select min(age) as youngest_age from healthcare_dataset;

-- find the oldest patient
select max(age) as oldest_age from healthcare_dataset;

-- count patients by gender
select gender, count(*) as patient_count
from healthcare_dataset
group by gender;

-- count patients by blood type
select `Blood Type`, count(*) as patient_count
from healthcare_dataset
group by `Blood Type`;

-- count patients by medical condition
select `Medical Condition`, count(*) as patient_count
from healthcare_dataset
group by `Medical Condition`;

-- display unique insurance providers
select distinct `Insurance Provider`
from healthcare_dataset;

-- display unique admission types
select distinct `Admission Type`
from healthcare_dataset;

-- which medical condition has the highest number of patients?
select `Medical Condition`, count(*) as patient_count
from healthcare_dataset
group by `Medical Condition`
order by patient_count desc;

-- which medical condition has the lowest number of patients?
select `Medical Condition`, count(*) as patient_count
from healthcare_dataset
group by `Medical Condition`
order by patient_count asc;

-- what is the average billing amount for each medical condition?
select `Medical Condition`, avg(`Billing Amount`) as average_billing
from healthcare_dataset
group by `Medical Condition`
order by average_billing desc;

-- which medical condition has the highest average billing amount?
select `Medical Condition`, avg(`Billing Amount`) as average_billing
from healthcare_dataset
group by `Medical Condition`
order by average_billing desc
limit 1;

-- what are the highest billing amounts?
select `Name`, `Medical Condition`, `Billing Amount`
from healthcare_dataset
order by `Billing Amount` desc
limit 10;

-- what are the lowest billing amounts?
select `Name`, `Medical Condition`, `Billing Amount`
from healthcare_dataset
order by `Billing Amount` asc
limit 10;

-- how many patients are there for each insurance provider?
select `Insurance Provider`, count(*) as patient_count
from healthcare_dataset
group by `Insurance Provider`
order by patient_count desc;

-- how many patients are there for each admission type?
select `Admission Type`, count(*) as patient_count
from healthcare_dataset
group by `Admission Type`
order by patient_count desc;

-- what is the average billing amount for each insurance provider?
select `Insurance Provider`, avg(`Billing Amount`) as average_billing
from healthcare_dataset
group by `Insurance Provider`
order by average_billing desc;

-- how many patients received each medication?
select Medication, count(*) as patient_count
from healthcare_dataset
group by Medication
order by patient_count desc;

-- how many patients have each test result?
select `Test Results`, count(*) as patient_count
from healthcare_dataset
group by `Test Results`
order by patient_count desc;

-- which hospitals have more than 100 patients?
select Hospital, count(*) as patient_count
from healthcare_dataset
group by Hospital
having patient_count > 100
order by patient_count desc;

-- which medical conditions have an average billing amount greater than 5000?
select `Medical Condition`, avg(`Billing Amount`) as average_billing
from healthcare_dataset
group by `Medical Condition`
having average_billing > 5000
order by average_billing desc;

-- find patients older than 60 and display them from oldest to youngest
select Name, Age, Gender, `Medical Condition`
from healthcare_dataset
where Age > 60
order by Age desc;

-- find patients older than 50
select Name, Age, Gender
from healthcare_dataset
where Age > 50;

-- find patients younger than 30
select Name, Age, Gender
from healthcare_dataset
where Age < 30;

-- find patients whose age is between 30 and 50
select Name, Age, Gender
from healthcare_dataset
where Age between 30 and 50;

-- find female patients older than 50
select Name, Age, Gender
from healthcare_dataset
where Gender = 'Female' and Age > 50;

-- find male patients younger than 40
select Name, Age, Gender
from healthcare_dataset
where Gender = 'Male' and Age < 40;

-- find patients who have cancer or diabetes
select Name, Age, `Medical Condition`
from healthcare_dataset
where `Medical Condition` = 'Cancer'
or `Medical Condition` = 'Diabetes';

-- find patients with cancer, diabetes, or asthma
select Name, Age, `Medical Condition`
from healthcare_dataset
where `Medical Condition` in ('Cancer', 'Diabetes', 'Asthma');

-- find patients whose age is not between 20 and 40
select Name, Age
from healthcare_dataset
where Age not between 20 and 40;

-- find patients whose name starts with A
select Name, Age, Gender
from healthcare_dataset
where Name like 'A%';

-- find patients whose name ends with a
select Name, Age, Gender
from healthcare_dataset
where Name like '%a';

-- find patients whose name contains 'an'
select Name, Age, Gender
from healthcare_dataset
where Name like '%an%';

-- find patients whose medical condition is not cancer
select Name, Age, `Medical Condition`
from healthcare_dataset
where `Medical Condition` != 'Cancer';

-- find patients with billing amount greater than 5000
select Name, `Billing Amount`
from healthcare_dataset
where `Billing Amount` > 5000;


-- find patients with billing amount between 1000 and 5000
select Name, `Billing Amount`
from healthcare_dataset
where `Billing Amount` between 1000 and 5000;


-- find patients who have normal test results
select Name, Age, `Test Results`
from healthcare_dataset
where `Test Results` = 'Normal';

-- find patients admitted through emergency admission
select Name, Age, `Admission Type`
from healthcare_dataset
where `Admission Type` = 'Emergency';

-- what is the total billing amount?
select sum(`Billing Amount`) as total_billing
from healthcare_dataset;

-- what is the average billing amount?
select avg(`Billing Amount`) as average_billing
from healthcare_dataset;

-- what is the highest billing amount?
select max(`Billing Amount`) as highest_billing
from healthcare_dataset;

-- what is the lowest billing amount?
select min(`Billing Amount`) as lowest_billing
from healthcare_dataset;

-- how many patients have a billing amount greater than 5000?
select count(*) as patient_count
from healthcare_dataset
where `Billing Amount` > 5000;

-- what is the total billing amount for each medical condition?
select `Medical Condition`, sum(`Billing Amount`) as total_billing
from healthcare_dataset
group by `Medical Condition`
order by total_billing desc;

-- what is the average age for each medical condition?
select `Medical Condition`, avg(Age) as average_age
from healthcare_dataset
group by `Medical Condition`
order by average_age desc;

-- how many male and female patients are there for each medical condition?
select `Medical Condition`, Gender, count(*) as patient_count
from healthcare_dataset
group by `Medical Condition`, Gender
order by `Medical Condition`, patient_count desc;

-- which medical conditions have more than 1000 patients?
select `Medical Condition`, count(*) as patient_count
from healthcare_dataset
group by `Medical Condition`
having patient_count > 1000
order by patient_count desc;

-- which insurance providers have more than 1000 patients?
select `Insurance Provider`, count(*) as patient_count
from healthcare_dataset
group by `Insurance Provider`
having patient_count > 1000
order by patient_count desc;

-- which medical conditions have an average billing amount greater than 5000?
select `Medical Condition`, avg(`Billing Amount`) as average_billing
from healthcare_dataset
group by `Medical Condition`
having average_billing > 5000
order by average_billing desc;

-- which admission types have more than 3000 patients?
select `Admission Type`, count(*) as patient_count
from healthcare_dataset
group by `Admission Type`
having patient_count > 3000
order by patient_count desc;

-- which medical condition generates the highest total billing?
select `Medical Condition`, sum(`Billing Amount`) as total_billing
from healthcare_dataset
group by `Medical Condition`
order by total_billing desc
limit 1;

-- which insurance provider has the highest average billing?
select `Insurance Provider`, avg(`Billing Amount`) as average_billing
from healthcare_dataset
group by `Insurance Provider`
order by average_billing desc
limit 1;

-- which admission type has the highest average billing?
select `Admission Type`, avg(`Billing Amount`) as average_billing
from healthcare_dataset
group by `Admission Type`
order by average_billing desc
limit 1;

-- which blood type has the highest number of patients?
select `Blood Type`, count(*) as patient_count
from healthcare_dataset
group by `Blood Type`
order by patient_count desc
limit 1;

-- which test result is most common among patients?
select `Test Results`, count(*) as patient_count
from healthcare_dataset
group by `Test Results`
order by patient_count desc
limit 1;

-- which medication is prescribed to the highest number of patients?
select Medication, count(*) as patient_count
from healthcare_dataset
group by Medication
order by patient_count desc
limit 1;

-- what is the average billing amount for patients above 60 years?
select avg(`Billing Amount`) as average_billing
from healthcare_dataset
where Age > 60;

-- what is the total billing generated by patients above 60 years?
select sum(`Billing Amount`) as total_billing
from healthcare_dataset
where Age > 60;

-- which medical condition has the oldest average patient age?
select `Medical Condition`, avg(Age) as average_age
from healthcare_dataset
group by `Medical Condition`
order by average_age desc
limit 1;

-- which medical condition has the youngest average patient age?
select `Medical Condition`, avg(Age) as average_age
from healthcare_dataset
group by `Medical Condition`
order by average_age asc
limit 1;

-- which hospital has the highest number of patients?
select Hospital, count(*) as patient_count
from healthcare_dataset
group by Hospital
order by patient_count desc
limit 1;

-- which hospital has the highest average billing amount?
select Hospital, avg(`Billing Amount`) as average_billing
from healthcare_dataset
group by Hospital
order by average_billing desc
limit 1;

-- which insurance provider has the highest total billing?
select `Insurance Provider`, sum(`Billing Amount`) as total_billing
from healthcare_dataset
group by `Insurance Provider`
order by total_billing desc
limit 1;

-- how many patients have both a normal test result and billing above 5000?
select count(*) as patient_count
from healthcare_dataset
where `Test Results` = 'Normal'
and `Billing Amount` > 5000;

-- what percentage of patients are above 60 years old?
select
round(count(case when Age > 60 then 1 end) * 100.0 / count(*), 2) as percentage_above_60
from healthcare_dataset;

-- what percentage of patients have abnormal test results?
select
round(count(case when `Test Results` = 'Abnormal' then 1 end) * 100.0 / count(*), 2) as abnormal_percentage
from healthcare_dataset;

-- which medical condition has the highest number of patients with abnormal test results?
select `Medical Condition`, count(*) as abnormal_patients
from healthcare_dataset
where `Test Results` = 'Abnormal'
group by `Medical Condition`
order by abnormal_patients desc
limit 1;

-- which admission type has the highest number of patients with abnormal test results?
select `Admission Type`, count(*) as abnormal_patients
from healthcare_dataset
where `Test Results` = 'Abnormal'
group by `Admission Type`
order by abnormal_patients desc
limit 1;

-- what is the total billing for each admission type?
select `Admission Type`, sum(`Billing Amount`) as total_billing
from healthcare_dataset
group by `Admission Type`
order by total_billing desc;

-- which admission type has the highest number of patients above 60?
select `Admission Type`, count(*) as patient_count
from healthcare_dataset
where Age > 60
group by `Admission Type`
order by patient_count desc
limit 1;

-- find the top 5 patients by billing amount
select Name, Age, `Medical Condition`, `Billing Amount`
from healthcare_dataset
order by `Billing Amount` desc
limit 5;

-- compare average billing between male and female patients
select Gender, avg(`Billing Amount`) as average_billing
from healthcare_dataset
group by Gender
order by average_billing desc;

-- which medical condition has the highest billing patient?
select `Medical Condition`, max(`Billing Amount`) as highest_billing
from healthcare_dataset
group by `Medical Condition`
order by highest_billing desc;

-- which insurance provider covers patients with the highest average age?
select `Insurance Provider`, avg(Age) as average_age
from healthcare_dataset
group by `Insurance Provider`
order by average_age desc
limit 1;

USE healthcare_analysis;


CREATE TABLE doctors (
    Doctor_ID INT,
    Doctor_Name VARCHAR(100)
);

INSERT INTO doctors (Doctor_ID, Doctor_Name)
SELECT DISTINCT
    ROW_NUMBER() OVER (ORDER BY Doctor),
    Doctor
FROM healthcare_dataset
WHERE Doctor IS NOT NULL;

select * from doctors;

-- Display doctor names and their IDs.
SELECT DISTINCT h.Doctor, d.Doctor_ID
FROM healthcare_dataset h
INNER JOIN doctors d
ON h.Doctor = d.Doctor_Name;

-- Display all patients with their matching doctor IDs.
SELECT h.Name, h.Doctor, d.Doctor_ID
FROM healthcare_dataset h
LEFT JOIN doctors d
ON h.Doctor = d.Doctor_Name;

-- Display all doctors and their patient names.
SELECT d.Doctor_ID, d.Doctor_Name, h.Name
FROM healthcare_dataset h
RIGHT JOIN doctors d
ON h.Doctor = d.Doctor_Name;

-- Display all patients and all doctors, including unmatched records.
SELECT h.Name, h.Doctor, d.Doctor_ID, d.Doctor_Name
FROM healthcare_dataset h
LEFT JOIN doctors d
ON h.Doctor = d.Doctor_Name
UNION
SELECT h.Name, h.Doctor, d.Doctor_ID, d.Doctor_Name
FROM healthcare_dataset h
RIGHT JOIN doctors d
ON h.Doctor = d.Doctor_Name;

-- Count patient records for each doctor.
SELECT d.Doctor_Name, COUNT(h.Name) AS Patient_Count
FROM doctors d
INNER JOIN healthcare_dataset h
ON d.Doctor_Name = h.Doctor
GROUP BY d.Doctor_Name
ORDER BY Patient_Count DESC;


-- Display doctors who treated patients with Diabetes.
SELECT DISTINCT d.Doctor_Name, h.`Medical Condition`
FROM doctors d
INNER JOIN healthcare_dataset h
ON d.Doctor_Name = h.Doctor
WHERE h.`Medical Condition` = 'Diabetes';

-- Find doctors who have no matching patient records.
SELECT d.Doctor_ID, d.Doctor_Name
FROM doctors d
LEFT JOIN healthcare_dataset h
ON d.Doctor_Name = h.Doctor
WHERE h.Doctor IS NULL;

-- Calculate the average billing amount for each doctor.
SELECT d.Doctor_Name, AVG(h.`Billing Amount`) AS Average_Billing
FROM doctors d
INNER JOIN healthcare_dataset h
ON d.Doctor_Name = h.Doctor
GROUP BY d.Doctor_Name
ORDER BY Average_Billing DESC;


-- Find patients whose billing amount is above average.
SELECT Name, `Billing Amount`
FROM healthcare_dataset
WHERE `Billing Amount` > (
    SELECT AVG(`Billing Amount`)
    FROM healthcare_dataset
);

-- Find patients older than the average patient age.
SELECT Name, Age
FROM healthcare_dataset
WHERE Age > (
    SELECT AVG(Age)
    FROM healthcare_dataset
);

-- Find the patient with the highest billing amount.
SELECT Name, `Billing Amount`
FROM healthcare_dataset
WHERE `Billing Amount` = (
    SELECT MAX(`Billing Amount`)
    FROM healthcare_dataset
);

-- Find patients admitted for the most common medical condition.
SELECT Name, `Medical Condition`
FROM healthcare_dataset
WHERE `Medical Condition` = (
    SELECT `Medical Condition`
    FROM healthcare_dataset
    GROUP BY `Medical Condition`
    ORDER BY COUNT(*) DESC
    LIMIT 1
);


-- Find doctors who treated more patients than the average number of patients per doctor.
SELECT Doctor, COUNT(*) AS Patient_Count
FROM healthcare_dataset
GROUP BY Doctor
HAVING COUNT(*) > (
    SELECT AVG(patient_count)
    FROM (
        SELECT COUNT(*) AS patient_count
        FROM healthcare_dataset
        GROUP BY Doctor
    ) AS doctor_counts
);

-- Categorize patients by age.
SELECT Name, Age,
CASE
    WHEN Age < 18 THEN 'Young'
    WHEN Age BETWEEN 18 AND 40 THEN 'Adult'
    WHEN Age BETWEEN 41 AND 60 THEN 'Middle-Aged'
    ELSE 'Senior'
END AS Age_Group
FROM healthcare_dataset;


-- Categorize billing amounts.
SELECT Name, `Billing Amount`,
CASE
    WHEN `Billing Amount` < 10000 THEN 'Low Billing'
    WHEN `Billing Amount` BETWEEN 10000 AND 30000 THEN 'Medium Billing'
    ELSE 'High Billing'
END AS Billing_Category
FROM healthcare_dataset;


-- Categorize patient stays based on admission type.
SELECT Name, `Admission Type`,
CASE
    WHEN `Admission Type` = 'Emergency' THEN 'Urgent'
    WHEN `Admission Type` = 'Urgent' THEN 'Urgent'
    ELSE 'Non-Urgent'
END AS Admission_Category
FROM healthcare_dataset;


-- Count patients in each age group.
SELECT
CASE
    WHEN Age < 18 THEN 'Young'
    WHEN Age BETWEEN 18 AND 40 THEN 'Adult'
    WHEN Age BETWEEN 41 AND 60 THEN 'Middle-Aged'
    ELSE 'Senior'
END AS Age_Group,
COUNT(*) AS Patient_Count
FROM healthcare_dataset
GROUP BY Age_Group
ORDER BY Patient_Count DESC;


-- Count patients in each billing category.
SELECT
CASE
    WHEN `Billing Amount` < 10000 THEN 'Low Billing'
    WHEN `Billing Amount` BETWEEN 10000 AND 30000 THEN 'Medium Billing'
    ELSE 'High Billing'
END AS Billing_Category,
COUNT(*) AS Patient_Count
FROM healthcare_dataset
GROUP BY Billing_Category;


-- Calculate average billing by admission category.
SELECT
CASE
    WHEN `Admission Type` IN ('Emergency', 'Urgent') THEN 'Urgent'
    ELSE 'Non-Urgent'
END AS Admission_Category,
AVG(`Billing Amount`) AS Average_Billing
FROM healthcare_dataset
GROUP BY Admission_Category;

-- Display patient names in uppercase.
SELECT UPPER(Name) AS Patient_Name
FROM healthcare_dataset;

-- Display patient names in lowercase.
SELECT LOWER(Name) AS Patient_Name
FROM healthcare_dataset;

-- Find the length of each patient name.
SELECT Name, LENGTH(Name) AS Name_Length
FROM healthcare_dataset;

-- Display the first five characters of each patient name.
SELECT Name, SUBSTRING(Name, 1, 5) AS Short_Name
FROM healthcare_dataset;

-- Remove extra spaces from patient names.
SELECT TRIM(Name) AS Patient_Name
FROM healthcare_dataset;


-- Find patients whose names start with 'A'.
SELECT Name
FROM healthcare_dataset
WHERE Name LIKE 'A%';


-- Find patients whose names end with 'n'.
SELECT Name
FROM healthcare_dataset
WHERE Name LIKE '%n';

-- Combine patient name and medical condition into one column.
SELECT CONCAT(Name, ' - ', `Medical Condition`) AS Patient_Details
FROM healthcare_dataset;

-- Replace spaces in patient names with underscores.
SELECT Name, REPLACE(Name, ' ', '_') AS Formatted_Name
FROM healthcare_dataset;

-- Rank patients by billing amount.
SELECT Name, `Billing Amount`,
RANK() OVER (ORDER BY `Billing Amount` DESC) AS Billing_Rank
FROM healthcare_dataset;

-- Create a view showing patient details.
CREATE VIEW patient_details AS
SELECT Name, Age, Gender, Doctor, Hospital
FROM healthcare_dataset;

-- Display all records from the view.
SELECT * FROM patient_details;

-- Create a view showing patients with high billing amounts.
CREATE VIEW high_billing_patients AS
SELECT Name, Age, `Billing Amount`, Hospital
FROM healthcare_dataset
WHERE `Billing Amount` > 30000;

-- Display high-billing patients.
SELECT * FROM high_billing_patients;



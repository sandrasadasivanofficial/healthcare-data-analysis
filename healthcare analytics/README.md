# Healthcare Data Analytics and Insights
--------------------------------------
## Project Overview

This project focuses on analyzing healthcare data to explore patient demographics, medical conditions, admission patterns, medications, test results, length of hospital stay, billing amounts, and insurance providers.

The project follows the data analysis workflow using **Python for Exploratory Data Analysis (EDA), MySQL for SQL-based analysis, and Power BI for data transformation, calculations, and interactive dashboard creation.**

The goal is to explore the dataset, identify patterns, answer healthcare-related business questions, and present insights through visualizations.

## Dataset Overview

- **Total Records:** 55,500
- **Total Columns:** 15
- **Domain:** Healthcare Analytics

The dataset contains information about patient age, gender, blood type, medical condition, admission type, date of admission, discharge date, doctor, hospital, insurance provider, billing amount, medication, and test results.

## Tools and Technologies

- **Python:** Data analysis and exploration
- **Pandas:** Data manipulation and analysis
- **NumPy:** Numerical operations
- **Matplotlib:** Data visualization
- **Seaborn:** Statistical visualization
- **MySQL:** SQL queries and data analysis
- **Power BI:** Data cleaning, transformation, DAX calculations, and dashboard development
- **Power Query:** Data preparation and transformation
- **Jupyter Notebook:** Python development environment

## Project Structure

```text
healthcare-data-analysis/
│
├── EDA/
│   └── healthcare_analysis.ipynb
│
├── SQL/
│   └── healthcare.sql
│
├── PowerBI/
│   └── healthcare_INSIGHTS.pbix
│
└── README.md
```

## 1. Exploratory Data Analysis (Python)

EDA was performed using Python to understand the dataset, examine data quality, explore distributions, and identify patterns in healthcare information.

### Key Activities

- Loaded and inspected the healthcare dataset using Pandas.
- Examined dataset dimensions, column data types, and descriptive statistics.
- Checked for missing values and duplicate records.
- Checked billing amounts for negative values.
- Analyzed patient demographics, including age, gender, and blood type.
- Explored medical conditions, admission types, medications, and test results.
- Analyzed billing amounts across medical conditions, admission types, gender, and insurance providers.
- Examined admission patterns by month and day of the week.
- Calculated length of hospital stay using admission and discharge dates.
- Explored relationships between numerical variables using correlation analysis.

### Visualization Libraries

Matplotlib and Seaborn were used to create count plots, bar charts, histograms, box plots, pie charts, scatter plots, and a correlation heatmap.

## 2. SQL Analysis (MySQL)

MySQL was used to query the healthcare dataset and answer analytical questions related to patients, hospitals, doctors, medical conditions, insurance providers, and billing.

### SQL Concepts Applied

- **Basic Queries:** SELECT, DISTINCT, LIMIT, and DESCRIBE
- **Filtering:** WHERE, AND, OR, IN, BETWEEN, and LIKE
- **Sorting:** ORDER BY
- **Grouping and Aggregation:** GROUP BY, COUNT(), SUM(), AVG(), MIN(), and MAX()
- **Group Filtering:** HAVING
- **Joins:** INNER JOIN, LEFT JOIN, RIGHT JOIN, and UNION
- **Subqueries:** Queries using aggregate results and nested SELECT statements
- **Conditional Logic:** CASE statements for categorizing patients, billing amounts, and admission types
- **String Functions:** UPPER(), LOWER(), LENGTH(), SUBSTRING(), TRIM(), CONCAT(), and REPLACE()
- **Window Functions:** RANK()
- **Views:** Created views for patient details and high-billing patients

### Business Questions Explored

- How many patient records are present in the dataset?
- How are patients distributed by age, gender, and blood type?
- Which medical conditions have the highest and lowest patient counts?
- What are the average, minimum, maximum, and total billing amounts?
- How does billing vary across medical conditions, admission types, hospitals, and insurance providers?
- Which hospitals and doctors have higher patient counts?
- What proportion of patients are older than 60?
- How are test results distributed across medical conditions and admission types?
- Which patients have billing amounts above the overall average?

## 3. Power BI Dashboard

Power BI was used to build a three-page interactive healthcare dashboard, supported by data preparation, transformation, and calculations.

### Data Preparation and Transformation

- Imported and prepared the healthcare dataset using Power Query.
- Applied data cleaning and transformation steps.
- Prepared fields for analysis and visualization.
- Created calculated measures and KPIs using DAX.

### Dashboard Pages
--------------------
#### Page 1: Patient Overview

- Total patient records
- Average patient age
- Patient distribution by gender
- Patients aged 60 and above
- Patient distribution by admission type
- Age and demographic analysis
- Patient trends and distribution patterns

#### Page 2: Medical Analysis

- Medical condition categories
- Medication categories
- Test result categories
- Average length of hospital stay
- Test outcomes by medical condition
- Patient distribution by medical condition
- Blood type and medical condition analysis
- Medication distribution
- Monthly average length of stay

#### Page 3: Billing Analysis

- Total billing amount
- Average billing amount
- Highest billing amount
- Insurance provider analysis
- Billing by medical condition
- Billing by admission type
- Hospital billing comparisons
- Monthly billing trends

### Dashboard Features

- Interactive slicers and filters
- KPI cards for key metrics
- Charts and tables for comparing healthcare data
- Multi-page navigation
- DAX-based calculations and measures
- Consistent dashboard formatting and visual design

## Key Findings

The analysis explored several aspects of the healthcare dataset:

- The dataset contains 55,500 patient records.
- The average patient age is approximately 51.54 years.
- Patient records cover six medical condition categories.
- Patient demographics were examined by age, gender, and blood type.
- Admission patterns were analyzed across admission types and dates.
- Medical conditions were compared with test results, medications, and length of stay.
- Billing amounts were examined across medical conditions, admission types, hospitals, and insurance providers.

These findings describe patterns in the dataset and do not establish medical causation or actual improvements in hospital performance.

## Project Objective

The objective of this project is to apply the end-to-end data analysis workflow:

**Data Collection → Data Inspection and Cleaning → Exploratory Data Analysis → SQL Analysis → Data Transformation → DAX Calculations → Dashboard Visualization → Insights**

This project demonstrates practical experience with Python, MySQL, and Power BI for analyzing healthcare data and presenting findings in an understandable format.

## Author

**Sandra Sadasivan**

Aspiring Data Analyst | Python | SQL | Power BI | Data Analytics

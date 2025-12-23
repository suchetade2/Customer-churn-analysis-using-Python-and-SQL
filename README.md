# Customer Churn Analysis & Prediction

## 📌 Project Summary
This project delivers an end-to-end customer churn analysis using **Python and MySQL**.  
It focuses on identifying churn drivers, customer behavior patterns, and actionable insights to improve customer retention.

Designed to reflect **real-world data analytics workflows** used in consulting firms, Big-4, and MNC environments.

---

## 🎯 Business Problem
Customer churn directly impacts revenue and growth.  
The objective of this project is to:
- Identify factors contributing to customer churn
- Analyze behavioral and demographic patterns
- Provide data-driven insights to reduce churn

---

## 📂 Dataset Description
- **Source:** Kaggle (Customer Churn Dataset)
- **Format:** CSV
- **Size:** Large-scale dataset
- **Key Columns:**
  - customer_id
  - age
  - gender
  - tenure
  - usage_frequency
  - support_calls
  - payment_delay
  - subscription_type
  - contract_length
  - total_spend
  - last_interaction
  - churn

---

## 🛠 Tools & Technologies
- **Python:** Pandas, NumPy, Matplotlib, Seaborn
- **SQL:** MySQL
- **Environment:** Google Colab
- **Version Control:** GitHub

---

## 🔍 Project Workflow

### 1. Data Ingestion
- Imported CSV data into Python for preprocessing
- Loaded cleaned data into MySQL for structured querying

### 2. Data Cleaning & Preprocessing
- Handled missing values
- Standardized column names
- Converted categorical variables
- Validated churn labels

### 3. Exploratory Data Analysis (EDA)
- Churn distribution analysis
- Customer tenure analysis
- Usage frequency vs churn
- Support calls impact assessment

### 4. Feature Engineering
- Encoded categorical variables
- Created churn indicators
- Prepared dataset for SQL analysis

### 5. SQL-Based Analysis
- Churn rate by subscription type
- Contract length vs churn
- High-risk customer segmentation
- Aggregate metrics and KPIs

### 6. Visualization & Insights
- Bar charts, box plots, and trend analysis
- Business-focused interpretation of results

---

## 📊 Key Insights
- Customers with **shorter tenure** show higher churn probability
- **Higher support call frequency** strongly correlates with churn
- **Long-term contracts** significantly reduce churn
- Delayed payments increase churn risk

---

## 💡 Business Recommendations
- Target early-tenure customers with onboarding programs
- Proactively engage customers with frequent support calls
- Incentivize long-term subscriptions
- Implement alerts for repeated payment delays

---

## 📁 Repository Structure
├── Customer_Churn_Analysis.csv
├── churn_analysis.ipynb
├── sql_queries.sql
├── README.md

---

## 🚀 Key Skills Demonstrated
- Data Cleaning & EDA
- SQL Analytics
- Business Insight Generation
- Data Visualization
- End-to-End Analytics Workflow



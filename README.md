# 🌾 Agriculture Supply Chain Performance Dashboard

## 📌 Project Overview

The **Agriculture Supply Chain Performance Dashboard** is a data analytics and business intelligence project designed to analyze agricultural supply-chain operations, profitability, resource utilization, transportation delays, and spoilage.

The project uses **Excel, SQL Server, SSMS, Python, and Power BI** to transform raw agricultural data into meaningful business insights and interactive dashboards.

The Power BI dashboard also includes **What-If Analysis** to evaluate different business scenarios and understand how changes in selected parameters can influence key performance indicators.

---

## 🎯 Business Problem

Agricultural supply chains involve multiple factors such as crop yield, transportation delays, storage duration, spoilage, resource utilization, input costs, and market prices.

Without proper analysis, it can be difficult for management to:

* Identify crops with better financial performance
* Monitor supply-chain spoilage
* Analyze transportation delays
* Understand resource utilization
* Compare regional and seasonal performance
* Track input costs and revenue
* Evaluate factors affecting profitability
* Explore the possible impact of changing business parameters

Therefore, this project provides a centralized analytical solution to monitor supply-chain performance and support data-driven decision-making.

---

## 💡 Business Solution

The project provides an interactive **Power BI dashboard** connected to data stored in **SQL Server**.

The solution helps users:

* Monitor important supply-chain KPIs
* Analyze crop-wise and region-wise performance
* Identify spoilage patterns
* Track transportation delays
* Analyze resource utilization
* Compare revenue, cost, and estimated profit
* Examine profitability and profit margins
* Explore different scenarios using Power BI What-If Analysis

---

## 🛠️ Tools & Technologies

| Tool                          | Purpose                                            |
| ----------------------------- | -------------------------------------------------- |
| **Microsoft Excel**           | Data cleaning, preprocessing and initial analysis  |
| **SQL Server**                | Database creation, data storage and SQL analysis   |
| **SSMS**                      | SQL Server database management and query execution |
| **Python**                    | Exploratory data analysis and visualization        |
| **Jupyter Notebook**          | Python-based analysis                              |
| **Power BI**                  | Interactive dashboard and business intelligence    |
| **Power BI What-If Analysis** | Scenario-based business analysis                   |

---

## 🔄 Project Workflow

```text
Raw Dataset
     ↓
Excel Data Cleaning & Preprocessing
     ↓
SQL Server Database
     ↓
SSMS – SQL Queries & Analysis
     ↓
Python – Exploratory Data Analysis
     ↓
Power BI – Dashboard Development
     ↓
What-If Analysis
     ↓
Business Insights
```

---

## 📂 Dataset

The project uses an agriculture supply-chain dataset containing **2,000 records**.

### Key Columns

* `batch_id`
* `crop_type`
* `region`
* `season`
* `yield_quantity_kg`
* `moisture_content_%`
* `avg_temperature_celsius`
* `transport_delay_hours`
* `equipment_downtime_hours`
* `storage_duration_days`
* `quality_grade`
* `spoilage_loss_%`
* `supply_chain_stage`
* `resource_utilization_%`
* `climate_risk_level`
* `input_cost_per_kg`
* `final_market_price_per_kg`
* `total_input_cost`
* `total_revenue`
* `estimated_profit`
* `profit_margin_%`
* `spoilage_quantity_kg`

---

# 🧹 Data Preparation – Excel

The initial dataset was cleaned and prepared using Microsoft Excel.

### Data Preparation Activities

* Checked the dataset for missing values
* Checked for duplicate records
* Standardized column names
* Verified data types
* Prepared calculated/derived business fields
* Performed initial data validation
* Prepared the cleaned dataset for database analysis

The cleaned dataset is stored in:

```text
excel/
└── agri_supplychain_cleaned.xlsx
```

---

# 🗄️ SQL Server & SSMS

The cleaned dataset was imported into **SQL Server** for structured storage and analysis.

**SQL Server** was used as the database platform, while **SQL Server Management Studio (SSMS)** was used to manage the database and execute SQL queries.

### SQL Analysis Includes

* Total number of records
* Crop-wise revenue analysis
* Region-wise revenue analysis
* Crop-wise estimated profit
* Total input cost
* Total revenue
* Profit analysis
* Average profit margin
* Spoilage analysis
* Transportation delay analysis
* Resource utilization analysis

### Database

```text
Database: AgriSupplyChainDB
Table: dbo.agri_supplychain_cleaned
```

SQL queries are available in:

```text
sql/
```

---

# 🐍 Python Analysis

Python was used for exploratory data analysis and visualization.

The analysis was performed using **Jupyter Notebook**.

### Python Analysis Includes

* Dataset inspection
* Descriptive statistics
* Crop-wise analysis
* Region-wise analysis
* Revenue analysis
* Profit analysis
* Spoilage analysis
* Visualization of important business metrics

The notebook is available in:

```text
python/
```

---

# 📊 Power BI Dashboard

The cleaned data stored in **SQL Server** was connected to Power BI to develop an interactive business intelligence dashboard.

The dashboard focuses on:

* Supply-chain performance
* Profitability
* Revenue and cost
* Crop performance
* Regional performance
* Spoilage risk
* Transportation delays
* Resource utilization
* Business KPIs

---

## 📄 Dashboard Page 1 – Spoilage Risk Analytics Profile

The first dashboard page focuses on understanding factors associated with agricultural spoilage.

### Key Areas

* Spoilage quantity
* Spoilage percentage
* Moisture content
* Storage duration
* Transportation delay
* Supply-chain stages
* Climate risk
* Crop-wise spoilage performance

This page helps identify areas where spoilage-related problems require closer monitoring.

---

## 📄 Dashboard Page 2 – Supply Chain Performance & Profitability

The second page focuses on overall business and supply-chain performance.

### Key Areas

* Total Yield
* Total Input Cost
* Total Revenue
* Estimated Profit
* Average Profit Margin
* Crop performance
* Regional performance
* Resource utilization
* Transportation performance

This page provides a consolidated view of operational and financial performance.

---

# 🔮 Power BI What-If Analysis

A **What-If Analysis** parameter was implemented in Power BI to perform scenario-based analysis.

It allows users to change a selected parameter and observe how the calculated business result changes.

### Purpose

The What-If Analysis helps answer questions such as:

* What happens if an important business parameter increases or decreases?
* How could a change affect estimated profit?
* How sensitive is the business outcome to the selected parameter?

This provides an interactive way to explore possible scenarios instead of looking only at historical values.

---

# 📈 Key KPIs

The dashboard contains important supply-chain and financial KPIs.

| KPI                          |         Value |
| ---------------------------- | ------------: |
| Total Yield                  | 995,261.93 kg |
| Total Input Cost             | ₹6,358,249.58 |
| Total Revenue                | ₹9,909,607.61 |
| Estimated Profit             | ₹3,551,358.03 |
| Average Profit Margin        |        29.36% |
| Total Spoilage               |  51,696.81 kg |
| Average Transport Delay      |      1.99 hrs |
| Average Resource Utilization |        74.97% |

> KPI values are based on the cleaned project dataset and dashboard calculations.

---

# 🏆 Crop Performance

The project compares crop-level financial performance using revenue, estimated profit, yield, and profit margin.

Based on the project analysis, **Maize** generated the highest estimated profit among the analyzed crops.

### Maize Performance

* Estimated Profit: **₹9,07,182.63**
* Revenue: **₹24,61,321.62**
* Profit Margin: **30.81%**
* Yield: **244,868.85 kg**

The dashboard allows users to compare these metrics across different crops.

---

# 📸 Dashboard Screenshots

Dashboard screenshots are available in:

```text
screenshots/
```

Example structure:

```text
screenshots/
├── page1_dashboard.png
├── page2_dashboard.png
└── excel_dashboard.png
```

---

# 📁 Project Structure

```text
agriculture-supply-chain-dashboard
│
├── README.md
│
├── excel
│   └── agri_supplychain_cleaned.xlsx
│
├── sql
│   └── agriculture_supplychain_queries.sql
│
├── python
│   └── agriculture_supply_chain_analysis.ipynb
│
├── powerbi
│   └── agriculture_supply_chain_dashboard.pbix
│
└── screenshots
    ├── page1_dashboard.png
    ├── page2_dashboard.png
    └── excel_dashboard.png
```

---

# 🚀 Key Outcomes

This project demonstrates the complete workflow of a data analytics project:

* Data cleaning and preprocessing using Excel
* Database management using SQL Server
* SQL querying using SSMS
* Exploratory data analysis using Python
* Interactive dashboard development using Power BI
* Scenario analysis using Power BI What-If Analysis
* Business KPI development
* Supply-chain and profitability analysis
* Data-driven business insight generation

---

# 💼 Skills Demonstrated

### Technical Skills

* Microsoft Excel
* SQL
* SQL Server
* SSMS
* Python
* Jupyter Notebook
* Power BI
* DAX
* Data Cleaning
* Data Visualization
* Exploratory Data Analysis
* What-If Analysis

### Analytical Skills

* KPI Analysis
* Profitability Analysis
* Revenue Analysis
* Supply Chain Analysis
* Spoilage Analysis
* Regional Analysis
* Crop Performance Analysis
* Scenario Analysis

---

# 👩‍💻 Project Author

**Ramya M**

**B.Tech – Information Technology**

This project was developed as a portfolio project to demonstrate practical skills in **Data Analytics, SQL, Python, and Power BI**.


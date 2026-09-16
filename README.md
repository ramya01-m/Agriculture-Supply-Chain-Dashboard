# 🌾 Agriculture Supply Chain Performance Dashboard

## 📌 Project Overview

The **Agriculture Supply Chain Performance Dashboard** is an end-to-end data analytics and business intelligence project developed to analyze agricultural supply-chain performance, profitability, resource utilization, transportation delays, and spoilage.

The project uses **Excel, SQL Server, SSMS, Python, and Power BI** to clean, process, analyze, and visualize agricultural supply-chain data.

An interactive **Power BI dashboard** was developed to provide meaningful business insights through KPIs, visualizations, filters, and **What-If Analysis** for scenario-based decision support.

---

## 🎯 Business Problem

Agricultural supply chains involve several operational and financial factors, including crop yield, transportation delays, storage duration, spoilage, resource utilization, input costs, and market prices.

Analyzing these factors manually can make it difficult for management to:

* Monitor overall supply-chain performance
* Identify crops with higher profitability
* Analyze regional and seasonal performance
* Monitor spoilage and potential risk factors
* Track transportation delays
* Evaluate resource utilization
* Compare input costs and revenue
* Understand profit margins
* Explore the impact of changing business parameters

A data-driven solution is therefore required to bring these metrics together and provide a clear view of supply-chain performance.

---

## 💡 Business Solution

This project provides a centralized analytics solution using **SQL Server and Power BI**.

The solution helps users:

* Monitor key supply-chain KPIs
* Analyze crop-wise performance
* Compare regional performance
* Analyze seasonal performance
* Monitor spoilage quantity and spoilage percentage
* Track transportation delays
* Evaluate resource utilization
* Compare total input cost and revenue
* Analyze estimated profit and profit margin
* Explore business scenarios using Power BI What-If Analysis

---

# 🛠️ Tools & Technologies

| Tool                          | Purpose                                                     |
| ----------------------------- | ----------------------------------------------------------- |
| **Microsoft Excel**           | Data cleaning, preprocessing and initial analysis           |
| **SQL Server**                | Database creation, data storage and SQL analysis            |
| **SSMS**                      | Database management and SQL query execution                 |
| **Python**                    | Exploratory Data Analysis and visualization                 |
| **Jupyter Notebook**          | Python-based data analysis                                  |
| **Power BI**                  | Interactive dashboard development and business intelligence |
| **DAX**                       | Measures and calculated analysis in Power BI                |
| **Power BI What-If Analysis** | Scenario-based analysis                                     |

---

# 🔄 Project Workflow

```text
Raw Agriculture Dataset
        ↓
Excel Data Cleaning & Preprocessing
        ↓
SQL Server Database
        ↓
SSMS – SQL Queries & Analysis
        ↓
Python – Exploratory Data Analysis
        ↓
Power BI – Interactive Dashboard
        ↓
What-If Analysis
        ↓
Business Insights
```

---

# 📂 Dataset

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

Microsoft Excel was used for initial data cleaning, preprocessing, and validation.

### Data Preparation Activities

* Checked for missing values
* Checked for duplicate records
* Standardized column names
* Verified data types
* Prepared derived business fields
* Validated the cleaned dataset
* Prepared the data for SQL Server analysis

### Excel Files

The Excel-related files are available in:

```text
excel/
├── agri_supplychain_cleaned.csv
└── Agri_Supply_Chain_Excel.xlsm
```

The CSV contains the cleaned dataset, while the Excel workbook contains the Excel-based project work and dashboard.

---

# 🗄️ SQL Server & SSMS

The cleaned agriculture dataset was stored in **SQL Server** for structured database management and analysis.

**SQL Server** was used as the database platform, while **SQL Server Management Studio (SSMS)** was used to manage the database and execute SQL queries.

### Database

```text
Database: AgriSupplyChainDB
Table: dbo.agri_supplychain_cleaned
```

### SQL Analysis Includes

* Total number of records
* Crop-wise revenue analysis
* Region-wise revenue analysis
* Crop-wise estimated profit
* Total input cost
* Total revenue
* Estimated profit
* Profit margin analysis
* Spoilage analysis
* Transportation delay analysis
* Resource utilization analysis
* Grouping and aggregation

The SQL queries are available in:

```text
sql/
└── SQL_Query.sql
```

---

# 🐍 Python Analysis

Python was used to perform **Exploratory Data Analysis (EDA)** on the agriculture supply-chain dataset.

The analysis was performed using **Jupyter Notebook**.

### Python Analysis Includes

* Dataset inspection
* Data summary
* Descriptive statistics
* Crop-wise analysis
* Region-wise analysis
* Revenue analysis
* Profit analysis
* Spoilage analysis
* Resource utilization analysis
* Data visualization
* Identification of important patterns

The Python notebook is available in:

```text
python/
└── agriculture_analysis.ipynb
```

---

# 📊 Power BI Dashboard

The cleaned data stored in **SQL Server** was connected to Power BI to develop an interactive business intelligence dashboard.

The dashboard analyzes:

* Supply-chain performance
* Crop performance
* Regional performance
* Profitability
* Revenue and input cost
* Spoilage
* Transportation delays
* Resource utilization
* Key performance indicators

---

# 📄 Dashboard Page 1 – Spoilage Risk Analytics Profile

The first Power BI page focuses on analyzing agricultural spoilage and the factors associated with supply-chain risk.

### Key Analysis Areas

* Spoilage quantity
* Spoilage percentage
* Moisture content
* Storage duration
* Transportation delay
* Supply-chain stage
* Climate risk
* Crop-wise spoilage performance

This page provides an analytical view of spoilage-related supply-chain factors.

---

# 📄 Dashboard Page 2 – Supply Chain Performance & Profitability

The second Power BI page focuses on operational and financial performance.

### Key Analysis Areas

* Total Yield
* Total Input Cost
* Total Revenue
* Estimated Profit
* Average Profit Margin
* Crop performance
* Regional performance
* Resource utilization
* Transportation performance

This page provides a consolidated view of the financial and operational performance of the agricultural supply chain.

---

# 🔮 Power BI What-If Analysis

**What-If Analysis** was implemented in Power BI to perform interactive scenario analysis.

The What-If parameter allows users to change a selected business parameter and observe how the calculated result changes.

### Purpose

It helps explore questions such as:

* What happens when a selected parameter increases?
* What happens when the parameter decreases?
* How does the change affect estimated business outcomes?
* How sensitive is the result to the selected parameter?

This provides an interactive approach to scenario-based business analysis.

---

# 📈 Key Performance Indicators

The dashboard contains important operational and financial KPIs.

| KPI                              |         Value |
| -------------------------------- | ------------: |
| **Total Yield**                  | 995,261.93 kg |
| **Total Input Cost**             | ₹6,358,249.58 |
| **Total Revenue**                | ₹9,909,607.61 |
| **Estimated Profit**             | ₹3,551,358.03 |
| **Average Profit Margin**        |        29.36% |
| **Total Spoilage**               |  51,696.81 kg |
| **Average Transport Delay**      |      1.99 hrs |
| **Average Resource Utilization** |        74.97% |

> KPI values are based on the cleaned project dataset and dashboard calculations.

---

# 🏆 Crop Performance Analysis

The project compares crop-level performance using:

* Yield
* Revenue
* Input cost
* Estimated profit
* Profit margin

The analysis identified **Maize** as the crop with the highest estimated profit in the analyzed dataset.

### Maize Performance

| Metric           |         Value |
| ---------------- | ------------: |
| Estimated Profit |  ₹9,07,182.63 |
| Revenue          | ₹24,61,321.62 |
| Profit Margin    |        30.81% |
| Yield            | 244,868.85 kg |

The dashboard allows users to compare these metrics across different crops.

---

# 📸 Dashboard Screenshots

Screenshots of the project dashboards are available in:

```text
screenshots/
```

### Available Screenshots

```text
screenshots/
├── power_bi 1.png
├── power_bi 2.png
├── power_bi 3.png
├── power_bi 4.png
└── excel_dashboard.png
```

These screenshots showcase the Power BI dashboard pages and the Excel dashboard.

---

# 📁 Project Structure

```text
agriculture-supply-chain-dashboard
│
├── README.md
│
├── excel
│   ├── agri_supplychain_cleaned.csv
│   └── Agri_Supply_Chain_Excel.xlsm
│
├── sql
│   └── SQL_Query.sql
│
├── python
│   └── agriculture_analysis.ipynb
│
├── powerbi
│   └── Agriculture_Supply_Chain_Dashboard.pbix
│
└── screenshots
    ├── power_bi 1.png
    ├── power_bi 2.png
    ├── power_bi 3.png
    ├── power_bi 4.png
    └── excel_dashboard.png
```

---

# 🚀 Key Outcomes

This project demonstrates an end-to-end data analytics workflow:

* Data cleaning and preprocessing using Excel
* Structured data storage using SQL Server
* SQL querying using SSMS
* Exploratory Data Analysis using Python
* Interactive dashboard development using Power BI
* KPI development and analysis
* Spoilage analysis
* Profitability analysis
* Regional and crop performance analysis
* Transportation delay analysis
* Resource utilization analysis
* Scenario analysis using Power BI What-If Analysis

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

* Supply Chain Analytics
* KPI Analysis
* Profitability Analysis
* Revenue Analysis
* Crop Performance Analysis
* Regional Analysis
* Spoilage Analysis
* Transportation Analysis
* Resource Utilization Analysis
* Scenario Analysis

---

# 👩‍💻 Project Author

**Ramya M**

**B.Tech – Information Technology**

This project was developed as a portfolio project to demonstrate practical skills in **Data Analytics, Excel, SQL Server, SSMS, Python, and Power BI**.

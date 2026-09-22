# ✈️ Customer Behaviour Tourism - Exploratory Data Analysis (EDA) & SQL Analytics

## 📌 Project Overview
This project performs an end-to-end Exploratory Data Analysis (EDA) and SQL-based behavioral analysis on a tourism customer behavior dataset. The goal is to uncover hidden trends, user engagement patterns, and key factors influencing whether a customer purchases a tourism product (`Taken_product`).

---

## 📂 Dataset Information
* **Total Rows:** 11,760
* **Total Features:** 10 core columns (including user demographics, travel page engagement metrics, check-in history, and device preferences).
* **Target Variable:** `Taken_product` (Binary: Yes/No)

---

## 🛠️ Tech Stack & Workflow
* **Database & SQL:** MySQL Workbench (`tourism_db`) used for data extraction, verification, schema creation, and behavioral aggregation queries.
* **Programming & Libraries:** Python, Pandas, & NumPy for data cleaning and manipulation.
* **Data Visualization:** Matplotlib & Seaborn for generating distribution plots, engagement tiers, and correlation heatmaps.
* **Development Environment:** Jupyter Notebook (`EDA.ipynb`) & MySQL.

---

## 🔍 Key Workflow & Steps
1. **Data Staging & SQL Ingestion:** Loaded the dataset into MySQL, resolving type-casting challenges for missing and numeric variables.
2. **Data Cleaning:** Audited structure, imputed missing numerical values to protect against outliers, and handled categorical blanks.
3. **Univariate Analysis:** Evaluated class balance of the target variable, confirming the ~16% conversion imbalance.
4. **Bivariate & SQL Analysis:** Segmented customer conversions by engagement metrics, preferred devices, and location types.
5. **Correlation Analysis:** Evaluated linear relationships among numerical features using a correlation matrix heatmap.

---

## 📊 Key Insights
* **Class Imbalance:** Only ~16.12% of users purchased the tourism product, indicating a heavily skewed binary target variable.
* **Engagement Patterns:** Users who spend higher daily average minutes and track higher outstation check-in interactions show distinct conversion tendencies.
* **Device & Location Impact:** Cross-referencing devices with preferred location types revealed specific high-converting user segments.

---

## 📁 Repository Structure
```text
├── Customer behaviour Tourism-selected-columns.csv # Raw dataset
├── EDA.ipynb                                     # Python EDA & Visualization Notebook
├── SQL_Scripts/
│   └── tourism_analysis.sql                      # Comprehensive SQL extraction & analysis queries
├── correlation_heatmap.png                       # Visual output
├── device_vs_product.png                         # Visual output
└── README.md                                     # Project Documentation

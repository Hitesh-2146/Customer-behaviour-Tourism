✈️ Customer Behaviour Tourism - Exploratory Data Analysis (EDA)
📌 Project Overview
This project performs an Exploratory Data Analysis (EDA) on a tourism customer behavior dataset. The goal is to uncover hidden trends, user engagement patterns, and key factors influencing whether a customer purchases a tourism product (Taken_product).

📂 Dataset Information
Total Rows: 11,760

Total Features: 17 columns (including user demographics, travel page engagement metrics, check-in history, and device preferences).

Target Variable: Taken_product (Binary: Yes/No)

🔍 Key Steps & Workflow
Data Loading & Inspection: Audited column data types, structure, and identified missing values.

Data Cleaning: Imputed missing numerical values using the median to protect against outliers, and filled missing categorical entries with "Unknown".

Univariate Analysis: Explored the class balance of the target variable and plotted the distributions of engagement metrics (such as yearly page views and check-in likes).

Bivariate Analysis: Investigated relationships between user behavior (e.g., daily time spent on travel pages, preferred devices) and product purchase decisions.

Correlation Analysis: Built a correlation matrix heatmap to evaluate linear relationships among numerical features.

📊 Key Insights (Examples)
Class Imbalance: Only about 16% of users actually purchased the product, indicating a heavily skewed target variable.

Engagement: Users who spend more daily average minutes on the travel platform show distinct behavioral patterns relative to conversion.

🛠️ Tools & Libraries Used
Python

Pandas & NumPy (Data manipulation and cleaning)

Matplotlib & Seaborn (Data visualization)

Jupyter Notebook (Development environment)

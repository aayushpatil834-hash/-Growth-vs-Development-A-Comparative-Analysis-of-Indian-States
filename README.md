# 🇮🇳 Growth vs Development Analysis of Indian States

<div align="center">

![SQL](https://img.shields.io/badge/SQL-MySQL-blue?style=for-the-badge&logo=mysql)
![Python](https://img.shields.io/badge/Python-Next%20Phase-yellow?style=for-the-badge&logo=python)
![Power BI](https://img.shields.io/badge/PowerBI-Dashboard-F2C811?style=for-the-badge&logo=powerbi)
![Excel](https://img.shields.io/badge/Excel-Visualization-217346?style=for-the-badge&logo=microsoftexcel)

### 📊 Data Analytics Research Project

**Exploring whether Economic Growth really translates into Human Development across Indian States**

</div>

---

# 📌 Project Overview

Economic growth is often considered the primary indicator of a state's success. However, higher GDP does not always guarantee better education, healthcare, literacy, or quality of life.

This project investigates one of India's most important development questions:

> **Does Economic Growth necessarily lead to Human Development?**

To answer this, multiple official datasets were collected, cleaned, merged and analyzed using SQL. Instead of relying on GDP alone, the study compares Indian States and Union Territories across economic and social indicators to uncover hidden regional disparities.

---

# 🎯 Objectives

The project aims to

- Compare Indian States using multiple economic and development indicators.
- Measure overall Growth Performance.
- Measure Human Development Performance.
- Quantify the gap between Growth and Development.
- Identify states that outperform or underperform relative to their economic size.
- Understand regional inequality using data-driven analysis.

---

# 📂 Dataset Used

The dataset was manually built by combining multiple official sources.

### Economic Indicators

- 📈 Gross State Domestic Product (GSDP)
- 💰 Per Capita Income
- 👥 Population

### Social Development Indicators

- 📚 Literacy Rate
- ❤️ Human Development Index (HDI)
- 📉 Multidimensional Poverty Index (MPI)

---

# 🛠 Data Collection Process

Unlike traditional analytics projects that rely on a single dataset, this project required creating a unified database from multiple sources.

The process involved

✔ Collecting datasets from official reports

✔ Standardizing state names

✔ Cleaning inconsistent values

✔ Handling missing observations

✔ Designing relational tables

✔ Joining multiple datasets

✔ Creating custom analytical metrics

---

# 🧮 SQL Concepts Used

- Common Table Expressions (CTEs)
- Window Functions
- DENSE_RANK()
- CASE Statements
- Aggregate Functions
- INNER JOIN
- Ranking Algorithms
- Weighted Score Calculation
- Data Cleaning
- Multi-table Analysis

---

# 📊 Analytical Framework

Three custom indices were developed.

---

## 🚀 1. Growth Score

Measures overall economic strength using weighted indicators.

### Indicators

- Population
- GSDP
- Per Capita Income
- HDI
- Literacy
- Poverty

This score identifies India's strongest performing economies.

---

## 🌱 2. Development Score

Unlike Growth Score, Development Score gives greater importance to social indicators.

Higher weight is assigned to

- HDI
- Literacy
- Poverty

while still considering

- GDP
- Population
- Per Capita Income

This reveals states that have converted economic resources into better human development.

---

## ⚖️ 3. Growth–Development Divergence Index

This is the core contribution of the project.

The Divergence Index measures the gap between

- Economic Growth

and

- Human Development

A higher divergence indicates that economic performance and social development are moving in different directions.

---

# 🔍 Key Findings

The analysis produced several interesting insights.

- Large economies are not always the most developed.
- Smaller states like Kerala and Goa consistently outperform many larger economies in human development.
- Maharashtra and Gujarat remain economic powerhouses but still have room for improvement in social indicators.
- Bihar and Uttar Pradesh demonstrate that demographic scale alone cannot ensure development.
- Several North-Eastern states achieve remarkable human development despite relatively small economies.

These findings strongly support the **Growth vs Development Hypothesis**.

---

# 📈 Challenges Faced

During this project several practical challenges were encountered.

- Data available across multiple government sources
- Different reporting years
- Missing observations
- Different state naming conventions
- Lack of unified dataset
- Manual data validation
- Designing fair weighted indices
- Avoiding ranking bias caused by population size

These challenges required significant preprocessing before analysis.

---

# 📁 Repository Structure

```text
Growth-vs-Development-Analysis

│
├── Dataset
│
├── SQL
│   ├── Database.sql
│   ├── Growth Score.sql
│   ├── Development Score.sql
│   ├── Growth vs Development Divergence.sql
│
├── Presentation
│
├── Images
│
└── README.md
```

---

# 🚀 Future Scope

This repository represents only the **SQL Analysis Phase**.

The project will continue into advanced analytics using Python and Business Intelligence tools.

---

## 🐍 Python Analysis

Future work includes

- Exploratory Data Analysis (EDA)
- Correlation Analysis
- Time Series Analysis
- Regression Models
- Clustering States
- Statistical Testing
- Predictive Modelling
- Machine Learning

---

## 📊 Dashboard Development

Interactive dashboards will be created using

- Microsoft Excel
- Power BI

Dashboard Features

- Growth Score Rankings
- Development Score Rankings
- Divergence Analysis
- GDP vs HDI
- Literacy vs Poverty
- Per Capita Income Analysis
- Interactive State Comparison
- KPI Cards
- Dynamic Filters

---

# 💻 Technologies Used

- SQL (MySQL)
- Microsoft Excel
- Power BI *(Upcoming)*
- Python *(Upcoming)*

---

# 🎓 Learning Outcomes

This project demonstrates practical skills in

- Data Collection
- Data Cleaning
- SQL Analytics
- Ranking Algorithms
- Statistical Thinking
- Economic Analysis
- Dashboard Planning
- Research Methodology

---

# 📌 Conclusion

This project demonstrates that **Economic Growth and Human Development are related but fundamentally different concepts.**

States with large economies do not always achieve the highest human development, while several smaller states consistently outperform larger economies through stronger investments in education, healthcare, and poverty reduction.

By integrating multiple indicators into custom analytical models, the project provides a more comprehensive understanding of regional inequality and development in India.

---

<div align="center">

## ⭐ If you found this project useful, consider giving it a Star!

### Created by Aayush Patil

[![LinkedIn](https://img.shields.io/badge/LinkedIn-Aayush%20Patil-blue?style=for-the-badge&logo=linkedin)](https://www.linkedin.com/in/aayush-patil-56857836b/)

[![GitHub](https://img.shields.io/badge/GitHub-aayushpatil834--hash-black?style=for-the-badge&logo=github)](https://github.com/aayushpatil834-hash)

</div>


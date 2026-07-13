# 🇮🇳 Growth vs Development: A Comparative Analysis of Indian States

<div align="center">

### 📊 SQL Research Project | Data Analytics | Economic Development

*"Does economic growth always lead to better human development?"*

![SQL](https://img.shields.io/badge/SQL-MySQL-blue?style=for-the-badge&logo=mysql)
![Research](https://img.shields.io/badge/Research-Data%20Analysis-success?style=for-the-badge)
![Status](https://img.shields.io/badge/Project-Completed-brightgreen?style=for-the-badge)

</div>

---

# 📌 Project Overview

India has experienced remarkable economic growth over the past few decades, yet significant disparities remain in education, healthcare, literacy, poverty, and overall quality of life across states.

This project investigates whether **higher economic growth actually translates into higher human development** by comparing all Indian States and Union Territories using multiple economic and social indicators.

Instead of relying solely on GDP, this study integrates several development dimensions to provide a more comprehensive understanding of regional inequality.

---

# 🎯 Objectives

This project aims to:

- Compare Indian States using both economic and social indicators.
- Measure overall economic performance through a custom **Growth Score**.
- Measure overall human development through a custom **Development Score**.
- Quantify the gap between growth and development using a **Growth–Development Divergence Index**.
- Identify states that outperform or underperform relative to their economic size.
- Demonstrate that economic growth and human development are related but not identical.

---

# 📂 Data Collection

Unlike conventional projects using a single dataset, this research required building a unified database by collecting data from multiple official government publications.

The integrated dataset was created by combining information on:

- 📈 Gross State Domestic Product (GSDP)
- 💰 Per Capita Income
- 👥 Population
- ❤️ Human Development Index (HDI)
- 📚 Literacy Rate
- 📉 Multidimensional Poverty Index (MPI)

The collected data was manually cleaned, validated, standardized, and merged into a relational database before analysis.

---

# 🛠 Methodology

The project involved several stages:

- Collecting data from multiple official sources.
- Cleaning inconsistent records.
- Standardizing state names across datasets.
- Handling missing values.
- Designing relational database tables.
- Joining multiple datasets using SQL.
- Applying Window Functions for ranking.
- Creating weighted scoring models.
- Performing comparative analysis.

---

# 💻 SQL Concepts Used

- Common Table Expressions (CTEs)
- Window Functions
- DENSE_RANK()
- Aggregate Functions
- INNER JOIN
- Ranking Algorithms
- Weighted Score Calculation
- Multi-table Analysis
- Data Cleaning
- Comparative Analytics

---

# 📊 Analytical Models

## 🚀 Overall Growth Score

A weighted index designed to measure the overall economic strength of each state using:

- Population
- GSDP
- Per Capita Income
- HDI
- Literacy
- Poverty

---

## 🌱 Overall Development Score

A human development-focused index that gives greater importance to:

- HDI
- Literacy
- Poverty

while also considering economic indicators to provide a balanced measure of development.

---

## ⚖️ Growth–Development Divergence Index

The central contribution of this project.

This index measures the gap between economic growth and human development.

Higher values indicate that a state's economic performance and social development are moving in different directions.

Lower values indicate balanced and inclusive development.

---

# 🔍 Major Findings

The analysis revealed several important insights:

- Large economies are not always the most developed.
- Smaller states such as Kerala and Goa consistently outperform many larger economies in human development.
- States like Maharashtra and Gujarat generate substantial economic output but still have room to improve social outcomes.
- Some North-Eastern states achieve excellent development despite relatively small economies.
- Economic growth alone cannot explain regional development differences.

These findings strongly support the **Growth vs Development** hypothesis.

---

# ⚠ Challenges Faced

This project involved several real-world analytical challenges.

Unlike ready-made datasets, every variable had to be collected separately and carefully integrated.

Major challenges included:

- Data scattered across multiple government reports.
- Different reporting years.
- Inconsistent naming conventions.
- Missing observations.
- Standardizing datasets before merging.
- Designing unbiased weighted scoring models.
- Balancing economic and social indicators fairly.

These challenges made data preparation one of the most time-consuming phases of the project.

---

# 📁 Repository Structure

```text
Growth-vs-Development-Analysis

│── README.md
│
├── SQL
│     ├── Growth Score.sql
│     ├── Development Score.sql
│     └── Growth Development Divergence.sql
│
├── Presentation
│     └── Growth_vs_Development_Analysis.pptx
│
└── Images
      ├── Growth Score.png
      ├── Development Score.png
      └── Divergence Analysis.png
```

---

# 🔒 Dataset Availability

The final integrated dataset has **not been included** in this repository.

The dataset was manually compiled by combining multiple official government datasets, followed by extensive cleaning, validation, and standardization.

This repository focuses on demonstrating the analytical methodology, SQL implementation, and research findings rather than redistributing the compiled dataset.

---

# 🚀 Future Scope

This SQL project represents the first phase of a larger analytics pipeline.

The same dataset will be used for advanced analysis using Python and Business Intelligence tools.

### Python

- Exploratory Data Analysis (EDA)
- Statistical Analysis
- Correlation Analysis
- Regression Models
- Time Series Analysis
- Machine Learning

### Excel / Power BI

Interactive dashboards will be developed featuring:

- Growth Score Rankings
- Development Score Rankings
- Divergence Analysis
- GDP vs HDI
- Literacy vs Poverty
- Per Capita Income Analysis
- Dynamic State Comparison
- Interactive KPI Cards

---

# 🛠 Technologies Used

- MySQL
- SQL
- Microsoft PowerPoint

**Upcoming**

- Python
- Pandas
- NumPy
- Matplotlib
- Power BI
- Microsoft Excel

---

# 🎓 Skills Demonstrated

- Data Collection
- Data Cleaning
- Database Design
- SQL Querying
- Window Functions
- Comparative Analysis
- Ranking Algorithms
- Economic Analysis
- Research Methodology
- Data Storytelling

---

# 📌 Conclusion

This project demonstrates that **economic growth and human development should not be treated as synonymous concepts.**

While some states successfully convert economic resources into better living standards, others continue to experience significant social challenges despite strong economic performance.

The findings emphasize that sustainable development depends not only on increasing economic output but also on effective investment in education, healthcare, poverty reduction, and human capital.

---

## 👨‍💻 Author

**Aayush Patil**

## ⭐ If you found this project useful, consider giving it a Star!


[![LinkedIn](https://img.shields.io/badge/LinkedIn-Aayush%20Patil-blue?style=for-the-badge&logo=linkedin)](https://www.linkedin.com/in/aayush-patil-56857836b/)

[![GitHub](https://img.shields.io/badge/GitHub-aayushpatil834--hash-black?style=for-the-badge&logo=github)](https://github.com/aayushpatil834-hash)

</div>


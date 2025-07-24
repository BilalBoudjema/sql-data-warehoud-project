# Data Warehouse & Analytics Project

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![SQL Server](https://img.shields.io/badge/SQL%20Server-Express-informational?logo=microsoftsqlserver)](https://www.microsoft.com/en-us/sql-server/sql-server-downloads)
[![Project Status](https://img.shields.io/badge/status-active-brightgreen.svg)](#)
[![View on GitHub](https://img.shields.io/badge/GitHub-Repository-black?logo=github)](https://github.com/BilalBoudjema/sql-data-warehoud-project)

---

Welcome to the **Data Warehouse & Analytics Project**! 🚀  
This repository demonstrates a modern data warehousing and analytics solution, from raw data ingestion to actionable business insights. Designed as a portfolio project, it highlights industry-standard practices in data engineering and analytics.

---

## 🏗️ Architecture Overview

The project implements the Medallion Architecture with **Bronze**, **Silver**, and **Gold** layers:

![Data Architecture](docs/Data%20Architecture.png)

- **Bronze Layer:** Ingests raw data from source systems (CSV files) into SQL Server.
- **Silver Layer:** Cleanses, standardizes, and normalizes data for accuracy and consistency.
- **Gold Layer:** Delivers analytics-ready, business-optimized data in a star schema for reporting.

---

## 📚 Project Highlights

- **Data Architecture:** Medallion approach with clear separation of raw, cleansed, and analytical data.
- **ETL Pipelines:** Robust SQL-based extraction, transformation, and loading processes.
- **Data Modeling:** Fact and dimension tables designed for efficient analytics.
- **Reporting:** SQL-driven dashboards and reports for actionable insights.

**Skills Demonstrated:**
- SQL Development
- Data Engineering & ETL
- Data Modeling
- Analytics & Reporting

---

## 🛠️ Tools & Resources

- [Datasets](datasets/) — Project CSV data sources
- [SQL Server Express](https://www.microsoft.com/en-us/sql-server/sql-server-downloads) — Database engine
- [SQL Server Management Studio (SSMS)](https://learn.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver16) — Database GUI
- [DrawIO](https://www.drawio.com/) — Diagramming and architecture design
- [Project Steps & Notion Board](https://www.notion.so/Data-Warehouse-Project-DWH-SQL-19612792b7e0804cb6c1e4faa34b3b9f?source=copy_link) — Full project workflow

---

## 🚀 Project Requirements

### Data Warehouse Development

**Objective:**  
Build a modern data warehouse in SQL Server to consolidate and analyze sales data.

**Key Specs:**
- Import data from ERP and CRM (CSV files)
- Clean and resolve data quality issues
- Integrate sources into a unified analytics model
- Focus on latest data (no historization)
- Document the data model for business and analytics teams

---

### BI: Analytics & Reporting

**Objective:**  
Deliver SQL-based analytics for:

- Customer Behavior
- Product Performance
- Sales Trends

Empower stakeholders with actionable business metrics and strategic insights.

> See [docs/requirements.md](docs/requirements.md) for detailed requirements.

---

## 📁 Repository Structure

```plaintext
data-warehouse-project/
│
├── datasets/           # Raw ERP and CRM datasets (CSV)
├── docs/               # Documentation & architecture
│   ├── ETL Methodes.png
│   ├── Data Architecture.png
│   ├── data_catalog.md
│   ├── data_flow/
│   ├── data_models/
│   ├── naming-conventions.md
├── scripts/            # SQL ETL scripts
│   ├── bronze/
│   ├── silver/
│   ├── gold/
├── tests/              # Data quality checks
│   ├── quality_checks_gold.sql
│   ├── quality_checks_silver.sql
├── README.md           # Project overview
├── LICENSE             # License info
├── .gitignore          # Git ignore rules
└── requirements.txt    # Project dependencies
```

---

## 📬 Get Started

1. **Clone the repository:**  
    ```bash
    git clone [https://github.com/your-username/data-warehouse-project.git](https://github.com/BilalBoudjema/sql-data-warehoud-project)
    ```

2. **Set up SQL Server & SSMS.**

3. **Import datasets and run ETL scripts** from the `/scripts` directory.

4. **Explore documentation** in `/docs` for data models, architecture, and project steps.

---

## 📄 License

This project is licensed under the [MIT License](LICENSE).

---

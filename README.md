#  COVID‑19 Data Pipeline & Dashboard

**end-to-end data engineering project** that demonstrates how to collect, clean, store, analyze, and visualize real-world medical data.

The project uses **Python** to retrieve live COVID‑19 data from the **disease.sh API**, transforms the raw JSON data into structured tables, stores it in a **PostgreSQL/MySQL database**, and then uses **SQL queries** to generate insights. Finally, it presents the findings through an **interactive Excel dashboard** with charts, pivot tables, and visualizations.


##  Project Overview

This project aims to **collect, clean, store, analyze, and visualize medical data** in a structured way.

Workflow steps:

1. **API Data Retrieval** – Pull real-time COVID-19 data.
2. **Data Transformation** – Convert JSON data into Pandas DataFrame.
3. **Data Warehousing** – Store structured data in PostgreSQL/MySQL.
4. **SQL Analysis** – Query the database to generate insights.
5. **Dashboarding** – Visualize trends and key metrics in Excel.

---

## 🛠️ Tools & Technologies

| Stage                 | Tools / Libraries                     |
| --------------------- | ------------------------------------- |
| Data Retrieval        | Python, requests, pandas              |
| Data Storage          | PostgreSQL / MySQL, SQLAlchemy        |
| Data Analysis         | SQL, Pandas                           |
| Dashboard             | Excel, charts (pivot tables & graphs) |
| Repository Management | Git, GitHub                           |

---

##  Step-by-Step Workflow

### Step 1 – API

An **API (Application Programming Interface)** is a legal way to get structured data from websites or apps.

For this project, we used **disease.sh API**, which provides:

* Global COVID-19 stats
* Country-specific cases
* Deaths and recoveries
* Vaccination data

---

### Step 2 – Data Retrieval (Python)

Use Python to retrieve JSON data and convert it into a **Pandas DataFrame**.

```python
import requests
import pandas as pd

url = "https://disease.sh/v3/covid-19/countries"
response = requests.get(url)
data = response.json()

df = pd.DataFrame(data)
print(df.head())
```

---

### Step 3 – Data Warehousing

Once the DataFrame is ready, export it to a **relational database**.

**Setup:**

1. Create a free cloud database (Aiven / Supabase / ElephantSQL).
2. Get connection info: host, port, username, password, database.
3. Load data into the database using Python & SQLAlchemy.

```python
from sqlalchemy import create_engine

engine = create_engine('postgresql://user:password@host:port/dbname')
df.to_sql('covid_data', engine, if_exists='replace', index=False)
```

---

### Step 4 – SQL Analysis

Perform **cleaning, aggregation, and querying** to generate insights.
---

### Step 5 – Dashboarding

Create a **dashboard in Excel** to visualize key metrics:

* Total cases worldwide
* Deaths and recoveries by country
* Trends and charts by continent

---

---

##  Key Skills Demonstrated

* API integration & JSON handling
* Data cleaning & transformation (Python + Pandas)
* Database design & SQL queries
* Data visualization & dashboards
* End-to-end data engineering workflow

---

## 📷 Dashboard Preview

![Dashboard Preview](assets/dashboard.png)

---

## 🔗 Data Source

* [disease.sh API](https://disease.sh/)

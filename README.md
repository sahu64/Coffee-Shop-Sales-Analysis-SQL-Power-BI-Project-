# Coffee Shop Sales Analysis — SQL + Power BI Project

### End-to-End Data Analytics Project  
This project performs **data cleaning, transformation, and analysis** of coffee shop transaction data using **MySQL**, and presents interactive business insights through **Power BI dashboards**.

---

##  Project Overview

A fictional coffee shop wants to understand its **sales trends, product performance, and customer buying behavior** to make data-driven decisions.  
The dataset contains transaction-level data such as sales, product category, location, and time.

### Objectives
- Clean and prepare the dataset for analysis using SQL.
- Derive key metrics like total sales, orders, and quantity.
- Perform Month-over-Month (MoM) and daily sales trend analysis.
- Identify best-performing stores, categories, and time slots.
- Build an interactive Power BI dashboard.

---

##  Project Structure
coffee-shop-sales-sql-powerbi/
├── sql-scripts/
│ ├── 01-convert-dates-times.sql
│ ├── 02-total-sales.sql
│ ├── 03-total-orders.sql
│ ├── 04-quantity-sold.sql
│ ├── 05-calendar-daily-sales.sql
│ ├── 06-sales-by-.sql
│ └── 07-time-analytics.sql
├── data/
│ └── Coffee Shop Sales.xlsx
├── images/
│ ├── powerbi_dashboard_overview.png
│ ├── total_sales_result.png
│ ├── sales_by_hour.png
│ └── coffee_shop_schema.png
├── README.md
└── LICENSE


---

##  Tools & Technologies

| Tool | Purpose |
|------|----------|
| **MySQL** | Data cleaning, transformation, and KPI calculations |
| **Power BI** | Interactive dashboard creation and visualization |
| **Excel** | Raw dataset source |
| **GitHub** | Version control and project hosting |

---

##  Dataset

**File:** `Coffee Shop Sales.xlsx`  
**Source:** Provided dataset (contains transaction-level sales records).  

| Column Name | Description |
|--------------|-------------|
| transaction_id | Unique transaction number |
| transaction_date | Date of transaction |
| transaction_time | Time of transaction |
| store_location | Location of the store |
| product_category | Product category (Coffee, Tea, etc.) |
| product_type | Product type or flavor |
| unit_price | Price per item |
| transaction_qty | Quantity sold |

---

##  SQL Data Preparation & Analysis

The raw data was first imported into **MySQL**, then cleaned and transformed using SQL scripts.  
Below is an outline of each step and script:

| Script | Purpose |
|---------|----------|
| `01-convert-dates-times.sql` | Convert `transaction_date` and `transaction_time` columns into proper data types (DATE & TIME). |
| `02-total-sales.sql` | Calculate total sales and Month-over-Month growth. |
| `03-total-orders.sql` | Compute total number of orders and MoM growth. |
| `04-quantity-sold.sql` | Find total quantity sold and MoM difference. |
| `05-calendar-daily.sql` | Summarize daily total sales, orders, and quantity. |
| `06-sales-trend.sql` | Analyze sales trend and compare daily vs. average sales. |
| `07-time-analytics.sql` | Study sales patterns by hour, weekday, and weekend. |

## Dashboard Features

- **KPIs:** Total Sales, Total Orders, Total Quantity Sold  
- **Time Analysis:** Daily, Weekly, and Hourly Sales Trends  
- **Product Performance:** Top Products and Categories  
- **Location Analysis:** Store-level comparison  
- **MoM Growth Metrics:** Month-over-Month sales and order changes  

### Dashboard Preview
![Power BI Dashboard Overview](images/powerbi_dashboard_overview.png)


---

##  Author

**Golu Sahu**  
 [sahugolu7354@gmail.com](mailto:sahugolu7354@gmail.com)  
 [LinkedIn](https://www.linkedin.com/in/golu-sahu-54015b2a8/) | [GitHub](https://github.com/sahu64)




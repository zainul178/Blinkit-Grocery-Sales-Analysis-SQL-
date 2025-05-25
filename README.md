# Blinkit Grocery Sales Analysis (SQL)  
![SQL](https://img.shields.io/badge/SQL-T--SQL-007ACC) ![Data Cleaning](https://img.shields.io/badge/Data%20Cleaning-ETL-yellowgreen)

## 📝 Description  
A comprehensive SQL analysis of Blinkit's grocery sales data, focusing on revenue trends, outlet performance, and product category insights. Features advanced SQL techniques like PIVOT operations and window functions.

---

## 🔑 Key Features  
### 🛒 **Core Insights**  
- **Total Sales**: ₹1.2M+ analyzed  
- **Top Category**: Fruits & Vegetables (₹178K revenue)  
- **Peak Outlet**: Tier 3 locations generate 39% of total sales  
- **Outlet Performance**: Medium-sized outlets dominate (42% sales share)  

### 📊 **Advanced Analysis**  
- **Fat Content Impact**: Low-fat products contribute 65% of total sales  
- **Outlet Ratings**: Grocery Stores lead with 3.99/5 avg rating  
- **Decade-long Trends**: Outlets established in 1998 perform strongest (₹204K sales)  
- **Visibility Correlation**: Lower item visibility (~0.06) in high-performing supermarkets  

---

## 📈 Data Highlights  
| **Metric**               | **Value**                              |
|--------------------------|----------------------------------------|
| Total Orders            | 8,523                                 |
| Unique Items            | 1,557+ (from `Item_Identifier`)       |
| Avg Rating              | 3.9/5 across all outlets             |
| Top Outlet              | OUT035 (₹133K revenue)               |
| Worst-Performing Category | Seafood (₹9K revenue)                |

---

## 🛠️ Tools & Technologies  
- **Database**: Microsoft SQL Server  
- **Key SQL Features**:  
  - PIVOT/UNPIVOT operations  
  - Aggregation with `GROUP BY` and `HAVING`  
  - Data type conversion (`CAST`, `ROUND`)  
  - Advanced CTEs for metric calculations  
- **Data Cleaning**: Standardized `Item_Fat_Content` field  

---

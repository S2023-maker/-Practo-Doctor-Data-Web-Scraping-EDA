# 🏥 Practo Healthcare Analytics — ETL Project

## 📌 Project Overview
An end-to-end ETL (Extract, Transform, Load) project that scrapes doctor 
and hospital data from Practo.com and builds an interactive analytics 
dashboard using Power BI.

## 🛠️ Tech Stack
| Tool | Purpose |
|------|---------|
| Python | Web Scraping & Data Cleaning |
| Selenium | Browser Automation |
| Pandas | Data Transformation |
| MySQL | Data Storage & SQL Analysis |
| Power BI | Dashboard & Visualization |

## 🔄 ETL Pipeline
**Extract**  → Scraped 442 doctor records from Practo.com
across 5 cities using Selenium

**Transform** → Cleaned data using Pandas(NaN handling, feature engineering, working hours categorization)

**Load**     → Stored in MySQL database (practo_db) and exported as CSV

## 📊 Dashboard Features
- Total Doctors, Avg Fee, Avg Rating KPI Cards
- Doctors by City (Bar Chart)
- Top Specializations (Treemap)
- Morning vs Evening vs 24x7 (Pie Chart)
- Avg Consultation Fee by City
- Top Doctors Table
- Interactive Slicers (City, Specialization, Timing)

## 🗄️ Database
- **Database:** MySQL (practo_db)
- **Table:** doctors
- **Records:** 442 rows
- **Columns:** Doctor_Name, Specialization, Experience,
  Locality, City, Hospital_Name, Consultation_Fee,
  Rating, Working_Hours, Timing_Category, Time_Duration

## 📝 SQL Analysis (20 Queries)
Key analyses performed:
- Doctor count by city and specialization
- Average consultation fee per city
- Fee distribution by range
- Top rated and most experienced doctors
- 24x7 availability analysis
- Hospital-wise doctor count

## Dashboard 
<img width="1162" height="652" alt="image" src="https://github.com/user-attachments/assets/d6c1a026-37dc-435b-a95e-37656f314b5e" />

## 🌆 Cities Covered
- Hyderabad
- Chennai
- Bangalore
- Mumbai
- Delhi etc

## 📁 Project Structure
practo-etl-project/
├── webscaping_final.ipynb   # Selenium scraping + MySQL loading
├── practo_data.csv          # Scraped dataset (442 records)
├── queries.sql              # 20 MySQL analysis queries
├── dashboard.png            # Power BI dashboard screenshot
└── README.md                # Project documentation

## 👩‍💻 Author
Shreya R Joshi

# 🩺 Practo Doctor Data Web Scraping & Data Cleaning Project

## 📌 Project Overview
This project focuses on **web scraping doctor information from Practo** using Selenium and performing **data cleaning and transformation** using Python and Pandas. The collected data from multiple cities is combined into a structured dataset and prepared for further analysis and visualization.

The goal of this project is to automate healthcare data collection and transform raw web data into a clean and analysis-ready format.

---

## 🚀 Features

✔ Web scraping using Selenium  
✔ Automated Chrome driver setup using WebDriver Manager  
✔ Data collection from multiple city pages  
✔ Data merging and dataset creation  
✔ Data cleaning and preprocessing  
✔ Feature transformation  
✔ Export cleaned data to CSV  

---

## 📂 Dataset Information

The scraped dataset contains information such as:

- Doctor Name
- Specialization
- Experience
- Hospital Name
- Locality
- Consultation Fee
- Recommendation Percentage
- Other doctor details

Data was scraped from multiple city-based Practo pages and merged into a single dataset.

---

## 🛠 Technologies Used

- Python
- Selenium
- Pandas
- WebDriver Manager
- Jupyter Notebook

---

## 📊 Data Processing Steps

### Consultation Fee Cleaning
- Removed ₹ symbol
- Removed commas
- Replaced "Free Consultation" with 0
- Converted values into numerical format

### Recommendation Transformation
- Removed % symbol
- Converted values to numeric
- Converted percentage into rating scale
- Renamed Recommendation → Rating

### Locality Cleaning
- Removed commas
- Removed extra spaces

### Experience Transformation
- Extracted numerical values
- Converted into integer datatype

### Hospital Name Cleaning
- Removed text inside brackets
- Removed unnecessary words
- Removed extra spaces
- Standardized names

---

## 🔄 Workflow

1. Scrape doctor details from Practo
2. Store raw data
3. Merge city datasets
4. Export dataset as CSV
5. Perform cleaning and transformation
6. Generate final structured dataset

---

## 📁 Project Structure

```bash
├── webscaping_final.ipynb
├── practo_data.csv
├── README.md
```

---

## 📈 Future Improvements

- Add more cities
- Include additional doctor details
- Build interactive dashboard
- Perform EDA and visualization
- Create machine learning models using healthcare data

---

## 📸 Sample Output

| Doctor | Experience | Hospital | Fee | Rating |
|----------|------------|-----------|------|---------|
| ABC | 10 | XYZ Hospital | 500 | 9.2 |
| DEF | 7 | PQR Clinic | 700 | 8.8 |

---

## 🎯 Learning Outcomes

Through this project I learned:

- Web scraping using Selenium
- Handling dynamic web pages
- Data preprocessing using Pandas
- Feature engineering
- Data transformation techniques
- Building end-to-end data collection pipelines

---

## ⚠ Disclaimer

This project was developed for educational and learning purposes only. Data belongs to Practo and should be used responsibly according to website terms and policies.

---

## 👨‍💻 Author

Shreya Joshi


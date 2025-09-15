# 🏠 Airbnb Paris – Q4 2022 Business Analysis

## 🔹 Executive Summary  
Airbnb Paris in Q4 2022 achieved strong booking activity but underperformed in revenue capture, with only **72% of potential revenue realized**. This project explores how pricing, marketing, and guest satisfaction impact occupancy, conversion, and revenue. The analysis delivers actionable insights for hosts to optimize their listings, pricing, and guest experience.

---

## 🔹 Data Preparation  
1. **Data Sources**  
   - Airbnb **listings dataset** (host, property, price, location, amenities, and reviews).  
   - Airbnb **calendar dataset** (daily availability, booked/unbooked days, and prices).  

2. **Data Cleaning & Transformation (SQL in BigQuery)**  
   - Removed duplicates, standardized text formats, and corrected missing or inconsistent values.  
   - Converted price and availability columns into numerical formats for analysis.  
   - Created derived fields such as:  
     - **Occupancy rate** (booked days ÷ available days)  
     - **Revenue potential** (price × available days)  
     - **Booking gaps** (long periods unbooked despite availability).  
   - Merged listings and calendar tables to build a **cohesive dataset**.  

3. **Feature Engineering**  
   - Classified listings into **Price Tiers** (Budget, Standard, Premium, Luxury, Ultra Luxury).    
   - Created calculated fields to compare **revenue capture vs. potential revenue** and analyze **the occupancy rate** over days/months.  

4. **Final Dataset**  
   - Cleaned and structured dataset stored in **BigQuery** for querying and dashboarding.  
   - Used **Looker Studio** for visualization and KPI reporting.  

---

## 🔹 Dynamic Pricing & Marketing Insights  
- In Q4, Airbnb Paris achieved **72% of its potential revenue**, highlighting opportunities to improve occupancy and maximize revenue capture.  
- Listings with high unbooked days could benefit from **dynamic pricing strategies** or targeted promotions.  
- Further historical data is needed to confirm if these Q4 trends are consistent across time.  

---

## 🔹 Guest Satisfaction Analysis  
- **Top Listings**: Maintain strong quality standards, amenities, and cleanliness; highlight positive guest interactions in promotions.  
- **Lower Listings**: Address recurring issues (cleanliness, amenities, communication); prioritize improvements for high-booking listings.  
- **Price Insights**: Budget & Standard listings perform best. Premium underperforms despite bookings, while Luxury/Ultra Luxury ratings are comparable.  
- **Host Responsiveness**: Slow replies correlate with lower ratings and fewer bookings; faster host response times are key.  

---

## 🔹 Dashboard Preview  

📊 **Explore the live dashboard here:**  
👉 [Airbnb Paris – Q4 2022 Business Dashboard](https://lookerstudio.google.com/reporting/9140899d-54a4-4806-b827-503bb171a327)  

---

## 🔹 Tools & Technologies  
- **SQL (BigQuery)** → raw data cleaning, transformations, feature engineering  
- **Looker Studio** → dashboard development, interactive visualization  

📂 *SQL scripts for data cleaning and transformations are available in the `sql/` folder.*  

---

## 🔹 Dataset  
- Source: **Airbnb Open Data** (Paris listings & calendar, Q4 2022)  
- Access datasets:  
  - [Listings Dataset](http://console.cloud.google.com/bigquery?ws=!1m5!1m4!4m3!1sdata-analytics-bootcamp-363212!2sairbnb!3slisting)  
  - [Calendar Dataset](http://console.cloud.google.com/bigquery?ws=!1m5!1m4!4m3!1sdata-analytics-bootcamp-363212!2sairbnb!3scalendar)  

---

## 🔹 Final Insights & Recommendations  
1. **Revenue Optimization**: Apply dynamic pricing and targeted promotions to reduce booking gaps.  
2. **Listing Performance**: Focus on improving underperforming listings by analyzing pricing strategy, availability, and booking gaps.  
3. **Host Strategy**: Encourage faster response times for higher guest satisfaction and booking conversions.  
4. **Market Positioning**: Focus on improving Premium-tier listings and promoting high-potential Luxury/Ultra Luxury properties.  

---

👩‍💻 *This project was developed as part of a Data Analytics Bootcamp at Le Wagon.  
I focused on **data cleaning, SQL transformations, pricing and guest satisfaction analysis**, and dashboard creation.*  

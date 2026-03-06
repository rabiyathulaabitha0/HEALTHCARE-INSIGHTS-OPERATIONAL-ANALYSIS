# Hospital ER Analytics Dashboard

## Project Title
Hospital Emergency Room (ER) Analytics & Performance Dashboard

## Brief One Line Summary
A comprehensive data analytics solution that tracks and visualizes hospital ER performance metrics including patient flow, wait times, department referrals, and satisfaction scores.

## Overview
This project analyzes hospital emergency room operational data to identify patterns, bottlenecks, and optimization opportunities. Using SQL queries and Power BI dashboards, we extract actionable insights from patient visit data, demographics, and service metrics to improve ER efficiency and patient satisfaction.

## Problem Statement
Hospital emergency departments face challenges in managing:
- Patient flow and wait times
- Resource allocation across departments
- Staff scheduling optimization
- Patient satisfaction monitoring
- Bottleneck identification during peak hours
- Capacity planning and forecasting

This project provides data-driven insights to address these operational challenges and improve overall ER performance.

## Dataset
- **Data Source**: Hospital ER operational database
- **Table**: 
- **Records**: Multiple patient visits with comprehensive metrics
- 
- **Key Fields**:
  - Patient demographics (age, gender, race)
  - Admission date/time
  - Patient wait time (minutes)
  - Patient satisfaction score (0-100 scale)
  - Department referral information
  - Admission status (admitted vs. discharged)

## Tools and Technologies
- **SQL**: Data extraction and analysis queries
- **MySQL**: Database management
- **Power BI**: Interactive dashboard creation and visualization
- **Data Analysis**: Statistical analysis and trend identification

## Methods
1. **Data Extraction**: SQL queries to aggregate and summarize ER data by various dimensions
2. **Exploratory Analysis**: 
   - Daily patient visit trends
   - Hourly patient volume patterns
   - Department referral analysis
   - Age and demographic distribution
3. **Performance Metrics**:
   - Average wait times by department
   - Patient satisfaction benchmarking
   - Admission rate analysis
   - Peak hour identification
4. **Dashboard Development**: Interactive Power BI visualizations for stakeholder reporting

## Key Insights
- Total patient volume and daily/hourly trends
- Average wait time: Key metric for operational efficiency
- Patient satisfaction correlates with wait time performance
- Department-specific wait time variations
- Peak admission hours for capacity planning
- Age distribution impacts on service requirements
- Gender and racial distribution for community health assessment
- Percentage of patients served within target timeframes (e.g., 30 minutes)

## Dashboard/Model/Output
**Power BI Interactive Dashboard** 
featuring:
- Patient visit trends (daily and hourly)
- Department referral distribution
- Wait time performance by department
- Patient satisfaction metrics
- Demographic breakdowns (age, gender, race)
- Admission vs. non-admission analysis
- Key performance indicators (KPIs) and alerts

## How to Run This Project

### Prerequisites
- MySQL database with hospital ER data imported
- SQL client (MySQL Workbench, or similar)
- Power BI Desktop (latest version)
- Access to the provided SQL query file

### Steps
1. **Load Data**:
   - Import the hospital ER data into MySQL database
   - Ensure table structure matches: `hospital_er_data.hospital er_data`

2. **Run SQL Queries**:
   - Open  [SQL Queries]((https://github.com/rabiyathulaabitha0/HEALTHCARE-INSIGHTS-OPERATIONAL-ANALYSIS/blob/main/Hospital%20data%20sql.sql) in your SQL client
   - Execute individual queries to validate data and extract metrics
   - Review query comments for specific analysis objectives

3. **Power BI Setup**:
   - Open [Power BI Dashboard] (https://github.com/rabiyathulaabitha0/HEALTHCARE-INSIGHTS-OPERATIONAL-ANALYSIS/blob/main/Healthcare%20power%20bi.pbit) template file
   - Configure database connection to your MySQL instance
   - Refresh data connections
   - Customize visuals and filters as needed

4. **Generate Reports**:
   - Use the interactive dashboard to explore findings
   - Create custom views for stakeholder presentations
   - Export reports for distribution

## Results & Conclusion
The analysis provides hospital leadership with:
- Clear visibility into ER operational performance
- Data-backed recommendations for process improvement
- Identification of peak demand periods for staffing optimization
- Tracking of patient satisfaction metrics
- Department-level performance comparisons
- Foundation for evidence-based decision making

Key findings enable the hospital to:
- Reduce patient wait times
- Improve patient satisfaction scores
- Optimize resource allocation
- Better manage peak-hour capacity
- Identify underperforming departments
  ![image alt](https://github.com/rabiyathulaabitha0/HEALTHCARE-INSIGHTS-OPERATIONAL-ANALYSIS/blob/main/Monthly%20view.png)
  


**Author**: Data Analytics Team  
**Last Updated**: March 2026  
**Status**: Active

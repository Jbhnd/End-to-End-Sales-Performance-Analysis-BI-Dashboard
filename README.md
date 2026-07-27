# End-to-End Sales Performance Analytics & BI Dashboard

## Overview
This repository contains an end-to-end data analytics project focused on diagnosing transactional performance, identifying seasonal revenue drop-offs, and deploying an interactive dashboard for executive decision-making. The project spans database querying, end-to-end analysis in Python, and downstream visual storytelling.

## Business Challenge
The business experienced unpredicted fluctuations in monthly recurring revenue (MRR) and lacked visibility into seasonal drop-offs. The goal of this analysis was to identify core revenue bottlenecks and deliver a reporting framework to optimize future inventory, marketing budgets, and business planning.

## Tech Stack
* **Data Querying:** SQL (PostgreSQL)
* **Exploratory Data Analysis:** Python (pandas, numpy, statsmodels, matplotlib, seaborn)
* **Business Intelligence:** Power BI Service / Desktop

## Key Findings & Strategic Recommendations
* **Findings:**
  - Baseline sales has grown by approxiamtely 20% annually over the last 3 years, after removing monthly noise and seasonal effects.
  - Sales has a seasonality element, peaking in September and November through December, then slowing down in January and dipping in February.
  - While overall Sales has increased, overall Profit has increased at a much slower rate with some regions and categories even recording overall losses. Central region and Furniture categories are most affected, with Central region recording an overall loss in 2014, and Furniture category recording overall losses in 2016 and 2017.
  - Up to 18% of Sales have resulted in losses for the business.
  - Discounts indicate responsibitity for the disparity in Sales growth vs Profit growth. Discounts in this data have limited effect on Sales numbers, while having a larger effect on Profits.
  - Sales increase is consistent across Regions, Segments, and Categories which indicates growth across board within the business. The West Region had the highest Sales increase in 2017.
  - The top 5% of sales are responsible for 52.89% of total profits.
  - Technology products account for almost half(45.7%) of the top 5% of Sales.
* **Recommendations:**
  - Capitalize on the seasonality within sales to drive revenue and profits during peak demand periods. Consider additional campaigns and other sales drivers for these periods.
  - Reevaluate the discount strategy to ensure it drives Sales positively and maintains positive Profit margins.
  - Though their sales numbers are consistent, Profits in the Central customer region and Furniture product category have been remarkably low when compared to other groups. Consider revaluating pricing, cost reduction, or seperate and more specific discount strategy for these groups.
  - Technology products account for a large number of high value sales. Driving more of these high value sales will have a high impact overall on revenue and profits.

## Repository Structure & Project Flow
1. **`/sql_queries`**: Contains the standalone SQL scripts used to handle data querying, and execute multi-level summaries before importing into the notebook.
2. **`/notebooks`**: Holds the comprehensive Python Jupyter Notebook documenting the complete data analysis (Descriptive & EDA), trend identification, and anomalies.
3. **Dashboard**: PowerBI dashboard.


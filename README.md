# Customer_Churn_Analysis_(SQL_PowerBI_Project)
![churn](https://github.com/user-attachments/assets/9da663f1-d777-4ab8-89d6-80f00a091f6b)
## Objective:
Customer churn, the phenomenon where customers discontinue their services or stop using a product or service provided by a company, is a critical concern in the telecom industry. High churn rates can significantly impact a telecom company’s revenue, market share, and overall growth. This project aims to perform a comprehensive analysis of customer churn in the telecom industry using Power BI for data visualization and SQL for data extraction, transformation, and querying.

The project will utilize SQL to query and extract relevant customer data, focusing on key variables such as customer demographics, service types, contract types, usage patterns, and customer complaints. Once the data is retrieved, Power BI will be employed to create dynamic dashboards and visualizations that uncover valuable insights about customer churn patterns.

## Key Goals of the Project:
### Data Extraction and Preparation with SQL:
- Use SQL queries to extract customer data from telecom databases, focusing on attributes like age, gender, tenure, contract type, service types (e.g., fibre optic), region, and customer interactions. Data will also include historical churn records for analysis.
- Clean and preprocess the data to ensure that it is structured and ready for analysis (e.g., handling missing values, normalizing data, creating views).

### Customer Churn Pattern Visualization in Power BI:
- Build interactive dashboards in Power BI to visualize churn trends and patterns, allowing for easy exploration of factors influencing churn, such as customer demographics (age, gender), contract types, tenure, and service types.
- Generate actionable insights and key performance indicators (KPIs) related to churn, such as churn rate by customer segment, churn by service type, churn by contract type, and churn by region.
- Present recommendations to telecom companies on how to reduce churn, such as improving customer service, offering flexible contracts, or enhancing product offerings based on the data insights.

## DataSet Used:
https://github.com/Abhishek9253/Customer_Churn_Analysis_Project/blob/main/Customer_Data.csv

## Dashboard:
![Dashboard](https://github.com/user-attachments/assets/fe60e1ba-ff8e-40bb-bbc8-277784b8b4fd)

## Insights:
### 1. Gender-Based Churn Insights
- **Insight**: A significant 64% of churned customers are female, which suggests that gender could be a contributing factor in customer attrition.
- **Actionable Strategy**: Tailor retention strategies with a focus on addressing the unique needs of female customers. This could involve personalized offers, better customer support, or targeted marketing campaigns designed to appeal to women, potentially including family plans, convenience features, or customer care services that might resonate more with this segment.

### 2. Age-Based Churn Insights
- **Insight:** Customers aged 50 and above exhibit a higher churn rate. This demographic may be more sensitive to changes in service quality, pricing, or technology.
- **Actionable Strategy:** Create specific programs to retain older customers, such as providing educational resources on using newer technologies (like Fibre optic internet), offering simplified plans, or even personalized support for this age group to make their experience more comfortable and less frustrating.

### 3. Internet Type and Churn Insights
- **Insight**: Fibre optic internet customers have the highest churn rate, possibly due to either service performance issues, higher pricing, or better alternatives offered by competitors.
- **Actionable Strategy:** Investigate the reasons behind the dissatisfaction with Fibre optic plans. This could involve improving network quality, offering competitive pricing, or providing exclusive benefits (like bundled services) to make fibre optic plans more attractive to current customers.

### 4. Contract Type and Churn Insights
- **Insight:** Customers on month-to-month contracts show a higher churn rate compared to those with long-term commitments.
- **Actionable Strategy:** Incentivize long-term contracts with discounts, bonuses, or added benefits. Offering more flexibility or benefits for customers willing to commit to a longer contract can improve retention. Alternatively, examine if month-to-month customers feel locked into the service and are looking for more competitive, flexible alternatives.

### 5. Tenure-Based Churn Insights
- **Insight**: Customers with a tenure of 6-12 months are more likely to churn, suggesting they may not feel sufficiently loyal or engaged with the service.
- **Actionable Strategy:** Focus on building stronger relationships with customers in their first year of service. Loyalty programs, special offers after the 6-month mark, or personalized engagement efforts could help make these customers feel valued and reduce the likelihood of churn.

### 6. Competitor-Driven Churn Insights
- **Insight:** The highest churn rate is due to competitors offering better deals and more attractive devices.
- **Actionable Strategy:** To combat this, telecom companies should review competitor offerings and consider matching or improving upon them. This could include bundling better devices with service plans, offering loyalty incentives, or running targeted campaigns showcasing how the company's services compare to competitors. Understanding the specific advantages that competitors provide (e.g., better pricing, newer devices) will help craft more competitive offers.

### 7. Overall Churn Pattern and Segmentation
- **Insight:** The churn is influenced by a combination of factors like contract type, tenure, internet type, and external competition.
- **Actionable Strategy**: Develop a more comprehensive customer retention program that takes into account these multiple factors. Consider using predictive models to identify high-risk customers earlier in their lifecycle (e.g., after 6 months) and reach out with personalized retention offers before they consider switching to competitors.
  


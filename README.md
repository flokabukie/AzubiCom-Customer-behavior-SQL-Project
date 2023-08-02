# AzubiCom-Customer-behavior-SQL-Project
SQL project to understand their customers' behavior, usage patterns, and preferences to enable AzubiCom to tailor their services.

![Alt text](image.png)

Find below information on the columns of the dataset provided in the database. 

 

Information on customer data columns 

 

**Customer_ID:** A unique identifier for each customer in the dataset. 

**ACTIVATION_DATE:** The date when the customer activated their mobile service or became a subscriber of the telecom provider. 

**Tenure:** The duration or length of time the customer has been using the service since activation, usually measured in months. 

**VOICE_SPENT:** The amount of money the customer spent on voice or call services during the given period. 

**DATA_SPENT:** The amount of money the customer spent on data services (internet usage) during the given period. 

**SMS_SPENT:** The amount of money the customer spent on SMS or text messaging during the given period. 

**OTHER_SPENT:** The amount of money the customer spent on other services (non-voice, data, or SMS) provided by the telecom company during the given period. 

**Data_Vol_MB:** The volume of data (internet) consumed by the customer, measured in megabytes (MB) during the given period. 

**Total_Call_Duration_Min:** The total duration of all voice calls made by the customer, measured in minutes, during the given period. 

**TOTAL_RECHARGE_COUNT:** The total number of times the customer recharged their account during the given period. 

**TOTAL_RECHARGE_AMOUNT:** The total amount of money recharged by the customer during the given period. 

**RECHARGE_CARD_COUNT:** The number of times the customer used recharge cards to add credit to their account during the given period. 

**RECHARGE_CARD_AMOUNT:** The amount of money recharged using recharge cards during the given period. 

**RECHARGE_EVD_COUNT:** The number of times the customer used electronic voucher distribution (EVD) to recharge their account during the given period. 

**RECHARGE_EVD_AMOUNT:** The amount of money recharged using electronic voucher distribution (EVD) during the given period. 

**RECHARGE_MOMO_COUNT:** The number of times the customer used mobile money (MoMo) to recharge their account during the given period. 

**RECHARGE_MOMO_AMOUNT:** The amount of money recharged using mobile money (MoMo) during the given period. 

**Cell_ID:** The unique identifier for the telecom cell tower or location where the customer's mobile device was registered during the given period. 

 

 

### **Current Offer Balance and Location Data** 

**Site ID:** 
Unique identifiers for individual cell towers or locations where network equipment is installed. 

**Region:** Information about the geographical area where each cell tower is located. 

**CELL_ID:** Unique identifiers for individual cells within the cell towers. Each cell represents a specific coverage area served by the tower. 

**Cell Type:** Indicates the type of cell technology used in each cell tower, such as 2G, 3G, 4G/LTE, or 5G. 

## **PROBLEM STATEMENT** 

 

As a data analytics professional at AzubiCom, you are tasked with extracting valuable insights from the company's vast customer database. Using SQL, explore patterns in customer behavior, analyze call usage, and identify potential opportunities for optimizing service offerings to enhance customer satisfaction and retention.  

### **QUESTIONS**

 

1. With subscribers mostly recharging their airtime wallet via EVD and Momo channels: 

a. Determine the top 3 regions and bottom 3 Regions that recharged the most times?   

b. Determine how many subscribers are in each region and the amount they recharged?   

c. Also indicate the percentage split between both types of their recharge wallet.   



2. AzubiCom Customers enjoy fast-speed internet using their handset anytime and everywhere they go. However, not all customers experience this. Identify new subscribers in the Central Region who do not use any of our data offerings at all and the data campaigns to convert them assuming they have data enabled handset.   



3. For rewarding data customers only, how many customers bought and used data between 500MB and 7GB who have been on the network for more than 7 years?   


4. If Monday is the start of the week, when was the last time subscribers used the most data in a single day? Use the current_offers_balance table. 


Author
Florentia Teye

Florentia Teye is a Data Analytics Professional with experience in data analysis and machine learning. She has a Bachelor's of Education degree in Mathematics and has worked on several open-source projects. In her free time, she enjoys teaching, researching new niches and writing. If you have any questions or suggestions, feel free to reach out to her on GitHub or LinkedIn.

LinkedIn:

[![Alt text](image-1.png)](https://www.linkedin.com/in/florentia-teye-75270a191/)

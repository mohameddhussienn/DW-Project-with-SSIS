Project overview:
* Search for any OLTP database and study its schema carefully that does not already have a pre-built 
     data warehouse online (e.g., avoid AdventureWorks, Northwind, WideWorldImporters). 
* Define the KPIs you want to extract from the source system. 
* Design a dimensional model (star/galaxy schema) to get those KPIs. 
* The minimum number of dimensions is 6 and the minimum number of fact tables is 3. 
* Use SSIS to extract the data from the source system and load it to the staging area (STG) and then from 
    STG to the data warehouse (DWH) with the needed transformations. 
* Execute some analytical queries on the fact tables to get insights from the data. 
* Finally deploy and schedule your packages.

  /////////////////////////////////////
  
Project Deliverables: 
* Physical model of the source system (the tables from which you will build your model).
*  Dimensional model. 
a. Define the business processes that you will model. 
b. Declare the grain of each fact table (simply describe what a fact table record represents). 
c. Define the type of each fact table. 
d. Define the dimensions and the type of each one. 
e. Define the measures that will appear in the fact tables and the type of each one. 
f. Physical model of your model (the final star/galaxy schema). 
* Screenshots of the data flow tasks, and control flow tasks used for building the DWH. (Give a 
meaningful title for each image) 
* Queries on each fact table to let me understand what this fact table represents and what insights we 
can get from it, and a screenshot of the result set of each query. 
* Screenshots of the deployed packages in SSIS with their schedule. 
* Build an interactive dashboard for the DWH using any data visualization tool (Ex: Microsoft 
Power BI). 

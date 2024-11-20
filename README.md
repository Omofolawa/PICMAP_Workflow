# PICMAP_Workflow
Property Insurance Claims Management and Analytics Platform

Overview
This project is a Property Insurance Claims Management and Analytics Platform designed to streamline the claims process, store and analyze claim data, and generate insightful business intelligence reports. It demonstrates data engineering, ETL pipeline development, database management, and CI/CD integration using modern tools such as SQL Server, Azure Data Factory, Python, SSIS, and GitHub Actions.

The project highlights real-world applications of data engineering by creating an end-to-end system for managing and analyzing property insurance claims. By incorporating DevOps practices, it ensures robust automation and efficient deployment workflows.

Features
Claims Data Management:

Database with a star schema design to store claims, customer, property, and claim type data.
Support for batch data ingestion via ETL pipelines.
Data Processing and Automation:

Automated ETL pipeline using Azure Data Factory to extract, transform, and load claim data from multiple sources.
Python scripts for custom data transformations and ingestion.
SSIS for structured data movement and integration.
Business Intelligence:

Power BI dashboards for analyzing claims volume, trends, and anomalies.
DevOps Integration:

CI/CD pipelines using GitHub Actions to automate deployment of SQL schema updates, Python ETL scripts, and SSIS packages.
Monitoring and Alerts:

Alerts for pipeline failures and data anomalies using Azure Monitor or SQL Server Agent.
Technologies Used
SQL Server: Database management and star schema design.
Azure Data Factory: ETL pipelines for data movement.
Python: Custom data ingestion and transformation scripts.
SSIS: Structured ETL workflows.
Power BI: Data visualization and reporting.
GitHub Actions: CI/CD pipelines for seamless integration and deployment.
User Stories
Claims Data Management
As a database administrator, I want to design and implement a star schema so that I can store claims data in a structured format optimized for querying and reporting.
As a data engineer, I want to ingest claims data from multiple sources into SQL Server so that the database is always up-to-date.
Data Automation and ETL
As a data engineer, I want to build an ETL pipeline in Azure Data Factory to extract, transform, and load data automatically so that manual intervention is minimized.
As a developer, I want to write Python scripts to clean and transform raw claims data before loading it into the database so that the data is accurate and consistent.
As a QA engineer, I want to test and validate the ETL pipeline to ensure that data accuracy and integrity are maintained.
Business Intelligence
As a business analyst, I want to create Power BI dashboards that visualize claim trends, claim amounts by region, and claim statuses so that stakeholders can make informed decisions.
As a claims manager, I want to view a summary report of pending, approved, and rejected claims so that I can monitor the claims process.
DevOps and CI/CD
As a DevOps engineer, I want to implement CI/CD pipelines using GitHub Actions so that deployment of database scripts, Python code, and ETL workflows is automated and consistent.
As a developer, I want to automatically deploy SQL schema updates when changes are committed to the repository so that the database schema stays in sync with the project.
Monitoring and Alerts
As a data engineer, I want to set up alerts for ETL pipeline failures so that I can resolve issues proactively.
As a system administrator, I want to monitor data ingestion performance metrics using Azure Monitor so that I can ensure system stability.
How to Run the Project
Set Up the Environment:

Install SQL Server and set up the InsuranceClaimsDB database.
Configure Azure Data Factory and connect it to your SQL Server instance.
Clone the repository and configure the Python scripts for data ingestion.
Run the ETL Pipelines:

Upload mock data to the input source (e.g., Azure Blob Storage).
Execute the ETL pipeline in Azure Data Factory to load data into SQL Server.
Deploy CI/CD Pipelines:

Push updates to GitHub to trigger CI/CD pipelines for SQL scripts, Python scripts, and SSIS packages.
Generate Reports:

Connect Power BI to SQL Server and load predefined dashboards.

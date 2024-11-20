-- Claims Data Management--
-- Creating the OLAP system --
-- A dimensional database InsuranceClaimsDB will be created with Fact table and dimension tables.--
-- Entities are Claims for the Fact Table:, and Customers, Properties, claimTypes and Date as dimensional tables.--

-- Database Creation and Assignment
CREATE DATABASE InsuranceClaimsDB;

USE InsuranceClaimsDB;

-- Create Claims Table
CREATE TABLE Claims (
    ClaimID INT PRIMARY KEY,
    CustomerID INT NOT NULL,
    PropertyID INT NOT NULL,
    ClaimTypeID INT NOT NULL,
    ClaimAmount DECIMAL(10,2) NOT NULL,
    ClaimDateID INT NOT NULL,
    ClaimStatus VARCHAR(50) NOT NULL
);

-- Create Dimension Tables
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FullName VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    PhoneNumber VARCHAR(20) NOT NULL
);

CREATE TABLE Properties (
    PropertyID INT PRIMARY KEY,
    Address1 VARCHAR(255) NOT NULL,
    Address2 VARCHAR(255) NOT NULL,
    City VARCHAR(100) NOT NULL,
    State VARCHAR(50) NOT NULL,
    Country VARCHAR(50) NOT NULL
);

CREATE TABLE ClaimTypes (
    ClaimTypeID INT PRIMARY KEY,
    TypeName VARCHAR(50) NOT NULL
);

CREATE TABLE DATES (
	ClaimDateID INT,
	Date DATE NOT NULL,
	Month INT NOT NULL,
	Quarter INT NOT NULL,
	Year INT NOT NULL
	);

-- While Loop Function to Autopopulate the date table
DECLARE @StartDate DATE = '2023-01-01';
DECLARE @EndDate DATE = '2030-12-31';

WHILE @StartDate <= @EndDate
BEGIN
	INSERT INTO Dates (ClaimDateID, Date, Month, Quarter, Year)
	VALUES (
		YEAR(@StartDate) * 10000 + MONTH(@StartDate) * 100 + DAY(@StartDate),
		@StartDate,
		MONTH(@StartDate),
		CASE
			WHEN MONTH(@StartDate) IN (1,2,3) THEN 1
			WHEN MONTH(@StartDate) IN (4,5,6) THEN 2
			WHEN MONTH(@StartDate) IN (7,8,9) THEN 3 
			ELSE 4
		END,
		YEAR(@StartDate)
		);

	SET @StartDate = DATEADD(DAY,1, @StartDate);
END;

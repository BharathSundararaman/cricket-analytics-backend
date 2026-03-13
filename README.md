# Cricket Analytics Backend

A backend analytics system for cricket statistics built using **Java, JDBC, and MySQL**.

## Project Overview

This project implements a cricket analytics database and backend system capable of analyzing match statistics such as batting performance, bowling efficiency, and match scorecards.

The system integrates a MySQL database with a Java backend using JDBC and follows a layered architecture (DAO → Service → Application).

## Tech Stack

- Java 17
- JDBC
- MySQL
- Maven
- Git & GitHub

## Project Structure

src/main/java/com/bharath/cricket
├── app → Application entry point
├── config → Database connection configuration
├── dao → Data access layer
├── model → Entity classes
└── service → Business logic

database/
└── cricket_analytics_schema.sql → Complete database schema


## Database Features

The database contains:

- Normalized cricket schema
- Ball-by-ball data tracking
- Stored procedures for match scorecards
- Views for batting and bowling summaries
- Triggers for data validation
- Indexes for query optimization

## Setup Instructions

### 1. Setup Database

Open MySQL Workbench and run:

database/cricket_analytics_schema.sql

This will create:

- Tables
- Foreign keys
- Views
- Stored procedures
- Triggers

### 2. Configure Database Connection

Update credentials in:

DBConnection.java

### 3. Run the Application

Run:

MainApp.java

The application will connect to the database and perform analytics queries.

## Example Analytics Queries

- Top run scorers
- Best bowling economy
- Powerplay run rate
- Death overs performance
- Player vs bowler matchups

## Author

Bharath Sundararaman  
M.Tech Computer Science – SASTRA University




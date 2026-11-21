# 🕵️‍♂️ SQL Murder Mystery

This repository contains my solution to the [SQL Murder Mystery](https://mystery.knightlab.com/), a data investigation challenge created by Northwestern University’s Knight Lab.  
The challenge simulates a real-world scenario where you must solve a crime using only SQL queries to analyze relational data.

\---

## 🧩 Project Overview

Using Microsoft SQL Server (SSMS), I examined multiple datasets — including crime scene reports, interview transcripts, driver’s licenses, and event check-ins — to uncover key evidence and identify the suspect behind the mystery.

This project demonstrates:

* Writing **complex SQL queries** with joins and subqueries
* **Filtering and aggregating data** to derive insights
* Using **logic and deduction** to navigate large datasets efficiently

\---

## 🧠 What I Learned

* How to approach open-ended data problems systematically
* Constructing multi-table `JOIN`s (INNER, LEFT) to connect evidence
* Leveraging functions like `MAX()`, `BETWEEN`, and pattern matching (`LIKE`)
* Building incremental queries to explore, validate, and confirm results

\---

## 🗂️ Repository Contents

|File|Description|
|-|-|
|`final\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\_answer.sql`|Final query and result identifying the culprit|
|`First\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\_Suspect\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\_J.P.sql`|Supporting investigation query narrowing down suspects|
|`Second\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\_Suspect\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\_M.P.sql`|Supporting investigation query narrowing down suspects|
|`Witness\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\_Statements.sql`|Queries used to analyze interviews|
|`add\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\_foreignkeys.sql`|Scripts for adding relationships between tables|
|`SQL\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\_MM\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\_Tables/`|Folder containing the dataset tables used for the mystery|

\---

## 🧰 Tools Used

* **Microsoft SQL Server Management Studio (SSMS)**
* **T-SQL (Transact-SQL)**
* Local database setup for the SQL Murder Mystery dataset

\---







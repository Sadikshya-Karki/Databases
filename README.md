# 🗄️ Database Coursework Project

## 📌 Overview

This project is part of a **college coursework (individual assessment)**.  
It simulates a real-world business scenario by designing and implementing a **relational database system**.  
The main focus is on **data management, normalization, and query optimization**.

---

## 🧩 Components

### 🧠 1. SQL Files

- **TransactionQueries**
  - 10 SQL queries demonstrating CRUD operations
  - Business logic implementation

- **InformationQueries**
  - 10 queries for reports and data analysis
  - Aggregations and summaries

- **Dump File**
  - Complete database backup
  - Used to recreate the database locally

---

### 📄 2. Report (PDF)

The report includes:

- Introduction and project objectives
- Case studies and business rules
- Initial ERD (before normalization)
- Normalization process:
  - 0NF → 1NF → 2NF → 3NF
- Final ERD after normalization
- Screenshots of:
  - CREATE TABLE
  - INSERT statements
  - DELETE operations
  - Transaction queries
  - Information queries

---

## ▶️ How to Use

1. Clone the repository:
```bash
git clone <repository_url>
```

2. Import the database dump:
- File: `SadikshyaKarki.dmp`
- Use MySQL / PostgreSQL / SQLite (depending on setup)

3. Run SQL scripts:
- Execute `.sql` files in your database environment

4. Read the report:
- Open the PDF file for full explanation, ERDs, and query results

---

## 🎯 Key Learnings

- Relational database design
- Database normalization (0NF → 3NF)
- Writing transactional and analytical SQL queries
- Understanding data integrity and functional dependencies
- Real-world database structuring

---

## 📁 Project Structure

```
Database/
│
├── Report/
│   └── report.pdf
│
├── SQL/
│   ├── SadikshyaKarki.dmp
│   │
│   ├── InformationQueries/
│   │   ├── I1.sql
│   │   ├── I2.sql
│   │   ├── I3.sql
│   │   ├── I4.sql
│   │   └── I5.sql
│   │
│   └── TransactionQueries/
│       ├── T1.sql
│       ├── T2.sql
│       ├── T3.sql
│       ├── T4.sql
│       └── T5.sql
│
└── README.md
```

---

## 🧑‍💻 Author

**Sadikshya Karki**

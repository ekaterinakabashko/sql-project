# SQL querying and relational data analysis

This project was completed as part of a continuing professional education program in Data Analytics, leading to a Data Analyst certificate.

It includes three SQL exercises focused on solving analytical problems using relational databases, covering sequence analysis, product-level order aggregation, and employee attendance analysis.

## SQL Concepts

The exercises demonstrate practical use of:

- Common Table Expressions (CTEs)
- Window functions
- JOINs
- GROUP BY and HAVING
- Aggregate functions
- Date and time operations
- Conditional logic
- Relational data analysis

### Task 1: Identifying consecutive number ranges

Given a table `Numbers(a int)` containing a sequence of integers:
a
|---------
| 1
| 2
| 3
| 4
| 6
| 7
| 10
| 11
| 12
| 13
| 15
| 17

The task is to identify intervals of consecutive numbers and return their starting and ending values.

Expected output:
| start | end
| ----- | ---
| 1 | 4
| 6 | 7
| 10 | 13
| 15 | 15
| 17 | 17


---

### Task 2: Product-Level Order Analysis

Two relational tables are provided: `Goods` and `Orders`.

The `Goods` table contains:
- `id` — product identifier
- `name` — product name

The `Orders` table contains:
- `id` — order identifier
- `dt` — order date and time
- `good_id` — product identifier
- `amount` — quantity of the product in the order

Since a single order may contain several different products, one order can correspond to multiple rows in the `Orders` table.

The task is to calculate the average quantity of each product per order and return:

- Product ID
- Product name
- Average quantity per order (`avg_amount`)

This task focuses on joining relational tables and calculating product-level aggregate metrics.

---

### Task 3: Employee Attendance Analysis

A `gate` table contains employee entry and exit records:

- `employee` — employee name
- `check_time` — timestamp of the recorded entry or exit
- `is_entered` — entry indicator (`1` for entry, `0` for exit)

Each entry is followed by an exit. The first record of the day is always an entry and the last record is always an exit.

The task is to identify employees and dates on which their total time at the workplace was less than eight hours.

The output contains:

- `employee`
- `date`

This task focuses on analyzing timestamped event data and calculating employee attendance duration.

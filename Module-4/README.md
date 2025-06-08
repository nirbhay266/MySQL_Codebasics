# 📘 Codebasics SQL Course – Complete SQL Journey for Data Analytics

![Codebasics SQL](https://codebasics.io/_next/image?url=%2Fimages%2Fsql-cover.jpg\&w=1080\&q=75)

Welcome to my learning journey through the **SQL for Data Science** course offered by [Codebasics](https://codebasics.io), taught by **Dhaval Patel** and designed by **Hemanand Vadivel**.

This course is a structured path designed to help learners build SQL skills with a hands-on, real-world approach. It covers essential concepts through case studies, quizzes, and guided practice using real datasets.

---

## 🧠 What I’ve Learned

This course uses **real-world business problems** and **datasets** to teach core SQL concepts. Here's a quick overview:

### 📚 Chapter-wise Learning Breakdown

| Chapter                       | Topics Covered                                     |
| ----------------------------- | -------------------------------------------------- |
| **1. Basics**                 | SELECT, Filtering, WHERE clause                    |
| **2. Operators**              | AND, OR, BETWEEN, IN, LIKE                         |
| **3. Aggregates**             | COUNT, SUM, AVG, MIN, MAX, GROUP BY, HAVING        |
| **4. Subqueries & CTEs**      | Subqueries, Co-related Subqueries, ANY & ALL, CTEs |
| **5. SQL Joins**              | INNER, LEFT, RIGHT, FULL JOIN                      |
| **6. Case Study: Movies**     | Combining multiple SQL concepts                    |
| **7. Window Functions**       | ROW\_NUMBER, RANK, DENSE\_RANK                     |
| **8. Case Study: HR Dataset** | Advanced queries on employee data                  |
| **9. Quiz & Summary**         | Review and test of all learned concepts            |

---

## 🔍 Module 4 – Subqueries & CTEs

### 4.1 Subqueries

* A query nested inside another query.
* Can be used in SELECT, FROM, WHERE.

Example:

```sql
SELECT name FROM actors WHERE age > (SELECT AVG(age) FROM actors);
```

### 4.2 ANY & ALL Operators

* `ANY`: TRUE if any subquery value meets condition
* `ALL`: TRUE only if all subquery values meet condition

Example:

```sql
SELECT * FROM movies WHERE rating > ANY (SELECT rating FROM movies WHERE genre = 'Comedy');
```

### 4.3 Co-related Subqueries

* Refer outer query columns
* Executed for each row of outer query

Example:

```sql
SELECT name FROM actors a WHERE age > (SELECT AVG(age) FROM actors WHERE gender = a.gender);
```

### 4.4 Subqueries Exercise

* Revenue above average
* Actors in >5 movies
* Movies better than all comedies

### 4.5 Common Table Expressions (CTE)

* Temp result set defined using `WITH`

Example:

```sql
WITH top_movies AS (
  SELECT title, revenue FROM movies WHERE revenue > 1000000
)
SELECT * FROM top_movies;
```

### 4.6 CTE Benefits

* Clean, modular queries
* Reusable logic
* Easier joins and filters

### 4.7 CTE Exercise

* Step-wise problem solving
* Joining with filtered data

### 4.8 Peter Pandey Recap

* Solves real-world tasks using all learned logic

### 4.9 Quiz

* Covers subqueries, CTEs, filtering, ranking

### 4.10 Summary

* Subqueries: flexible filtering
* CTEs: code clarity, modular logic

---

## 💻 Tools Used

* MySQL 8.0 Server
* MySQL Workbench
* Provided datasets: Movies, HR, Financials, E-commerce

---

## 📸 Practice Screenshots

> You can find screenshots of my query outputs in the `/screenshots` folder in this repo.

---

## 🙏 Gratitude

Thanks to:

* **Dhaval Patel Sir** for clear explanations
* **Hemanand Sir** for structured, practical curriculum

---

## 🔗 Useful Links

* 🌐 [Codebasics SQL Path](https://codebasics.io/path/sql-for-data-science)
* 📺 [Codebasics YouTube](https://www.youtube.com/c/codebasics)
* 🧑‍💻 [Codebasics GitHub](https://github.com/codebasics/sql-course)

---

## 🚀 Goals After Course

* Build SQL projects and dashboards
* Apply SQL in data analysis and interviews
* Work on real-time datasets with confidence

---

## 📬 Let’s Connect

* LinkedIn: [Your Profile](https://linkedin.com/in/your-profile)
* GitHub: [Your GitHub](https://github.com/your-profile)
* Email: [your.email@example.com](mailto:your.email@example.com)

> "Data is the new oil — and SQL is the refinery."


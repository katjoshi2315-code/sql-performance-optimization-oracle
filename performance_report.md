# 📊 SQL Performance Optimization Report

## 🎯 Objective
Improve performance of slow SQL query on large transaction dataset.

---

## 🐢 Initial Query Performance
- Full Table Scan observed
- Execution Time: ~5–8 seconds (depends on system)

---

## 🔍 Analysis
- No index on filtering column (txn_date)
- Query scanning entire dataset

---

## ⚡ Optimization Techniques Applied
- Created index on txn_date
- Created index on account_id
- Gathered optimizer statistics
- Used execution plan analysis

---

## 🚀 Final Performance
- Index Range Scan used
- Execution Time: ~1–2 seconds

---

## 📈 Improvement
- Performance improved by ~70–80%

---

## 💡 Key Learnings
- Importance of indexing strategy
- Role of optimizer statistics
- Execution plan analysis is critical for tuning
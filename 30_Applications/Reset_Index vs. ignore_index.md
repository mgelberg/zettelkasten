[[Pandas (index)]]  explainer for [[Python (MOC)]] coding


---

# 📖 Explainer: `ignore_index` vs. `reset_index` in pandas

## 1. `ignore_index=True` (used in concat/append)

- **Where it applies:** When combining DataFrames with `pd.concat()` or `DataFrame.append()`.
- **What it does:** Discards the existing indices of the input DataFrames and creates a new default integer index (0, 1, 2, …).
- **When to use:**
    - You don’t care about preserving the original indices.
    - You want a clean, continuous index after concatenation.
- **Example:**
    
    ```python
    df = pd.concat([df1, df2], ignore_index=True)
    ```
    
    ✅ Result: A new DataFrame with a fresh index, no remnants of the old ones.

---

## 2. `reset_index()` (used on an existing DataFrame)

- **Where it applies:** On a single DataFrame, after filtering, grouping, or other operations that mess with the index.
- **What it does:** Moves the current index back into a column and replaces it with a new default integer index.
- **Options:**
    - `reset_index()` → keeps the old index as a new column.
    - `reset_index(drop=True)` → discards the old index entirely.
- **When to use:**
    - You’ve filtered rows and the index is now non-sequential, but you want a clean 0–N index.
    - You want to preserve the old index values as a column for reference.
- **Example:**
    
    ```python
    df = df.reset_index(drop=True)
    ```
    
    ✅ Result: Index reset to 0–N, old index gone.

---

## 🔑 Key Differences

|Feature|`ignore_index=True` (concat)|`reset_index()` (DataFrame)|
|---|---|---|
|**Scope**|During concatenation|On an existing DataFrame|
|**Purpose**|Discard input indices|Rebuild/flatten current index|
|**Keeps old index?**|No|Yes (unless `drop=True`)|
|**Common use case**|Merging multiple DataFrames|Cleaning up after filtering/grouping|

---

### 🎯 Quick Rule of Thumb

- **Use `ignore_index=True`** when **building** a new DataFrame from multiple pieces.
- **Use `reset_index()`** when **fixing** or **flattening** the index of a DataFrame you already have.

---

Perfect — let’s walk through a **side‑by‑side demo** so you can _see_ how `ignore_index` and `reset_index` behave differently in pandas.

---

## 🧪 Example Setup

```python
import pandas as pd

df1 = pd.DataFrame({"A": [1, 2], "B": [3, 4]}, index=[10, 11])
df2 = pd.DataFrame({"A": [5, 6], "B": [7, 8]}, index=[20, 21])
```

Here, both DataFrames have **custom indices** (10, 11 and 20, 21).

---

## 1. Concatenation without `ignore_index`

```python
pd.concat([df1, df2])
```

**Output:**

```
     A  B
10   1  3
11   2  4
20   5  7
21   6  8
```

➡ The original indices are preserved.

---

## 2. Concatenation with `ignore_index=True`

```python
pd.concat([df1, df2], ignore_index=True)
```

**Output:**

```
   A  B
0  1  3
1  2  4
2  5  7
3  6  8
```

➡ A fresh integer index is created, discarding the old ones.

---

## 3. Resetting index on an existing DataFrame

```python
df = pd.concat([df1, df2])
df.reset_index()
```

**Output:**

```
   index  A  B
0     10  1  3
1     11  2  4
2     20  5  7
3     21  6  8
```

➡ The old index becomes a new **column** called `index`.

---

## 4. Resetting index and dropping old values

```python
df.reset_index(drop=True)
```

**Output:**

```
   A  B
0  1  3
1  2  4
2  5  7
3  6  8
```

➡ Old index is discarded, replaced with a clean 0–N index.

---

## 🎯 Quick Takeaway

- **`ignore_index=True`** → use during **concat** to throw away input indices immediately.
- **`reset_index()`** → use after the fact to flatten or clean up an existing DataFrame’s index.

---

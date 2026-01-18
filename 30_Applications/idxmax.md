Great question. `idxmax()` is a [[Pandas (index)]] 
method that returns the **label/index of the maximum value**, not the value itself. Here's the breakdown:

**What it does:**

```python
# For a Series
series = pd.Series([10, 50, 30, 20], index=['a', 'b', 'c', 'd'])
series.idxmax()  # Returns 'b' (the label, not 50)
series.max()     # Returns 50 (the value)
```

**In your peak week detection context:**

```python
group[metric_col].idxmax()  # Returns the ROW INDEX where metric_col is highest
```

So when you do:
```python
group.loc[group[metric_col].idxmax(), 'week_no']
```

You're saying:
1. `group[metric_col].idxmax()` → finds the **row index** of the max streams value
2. `group.loc[..., 'week_no']` → uses that row index to grab the `week_no` from that same row

**Example with your data:**

```python
# Imagine this group for "Taylor Swift - Folklore":
#    week_no  num_streams
# 0    1       100000
# 5    6       500000    ← This is the peak
# 10   11      200000

group[metric_col].idxmax()  # Returns 5 (the row index, not week_no or streams)
group.loc[5, 'week_no']     # Returns 6 (the week_no at that row)
```

**Why not just use `max()`?**

- `max()` gives you the highest **value** (500000)
- `idxmax()` gives you the **position/label** where that max occurs
- You need the position so you can grab the corresponding `week_no` from the same row

This pattern is essential whenever you need to find **not just the max value, but also other columns from that same row**.
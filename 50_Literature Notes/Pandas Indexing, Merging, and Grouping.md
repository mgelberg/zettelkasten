---
type: permanent
status: draft
source: [[Evernote/PythonEvernote/Python language]]
tags: [python, pandas, data]
---

## Main Idea
Pandas provides labeled indexing (loc/iloc), reshaping, merges/joins, and grouping/aggregation for tabular data.

## Explanation
- `Series` = 1D labeled array; double brackets select columns into a new DataFrame.
- `loc` uses labels; `iloc` uses integer positions; row first, then column.
- Sorting: supply multiple keys; hierarchical indexes can be subset with tuple lists.
- `concat` with `keys` builds multi-index; `ignore_index=True` avoids reindexing; `merge`/`join` support `inner/outer/left` etc. Validate merges to catch issues.
- `groupby` supports custom aggregations and dictionary grouping; `idxmax`/`idxmin` locate extrema.
- Multi-index utilities: `stack`/`unstack`, `swaplevel`, hierarchical subsetting.
- Tidy data principles:
  - Rows are observations; columns are variables; tidying simplifies cleaning.
  - `pd.melt(frame=df, id_vars="name", value_vars=[...], var_name="treatment", value_name="result")` turns columns into rows.
  - `pivot_table(values="value", index="date", columns="element", aggfunc=np.mean)` reshapes long to wide with aggregation.

## Example
```python
import pandas as pd
import numpy as np

df = pd.DataFrame({"city": ["NY", "SF", "NY"], "temp": [70, 65, 72], "hum": [0.5, 0.6, 0.55]})
print(df.loc[df.city == "NY", "temp"].mean())

merged = df.merge(pd.DataFrame({"city": ["NY", "SF"], "state": ["NY", "CA"]}), on="city", how="left")
by_city = merged.groupby("city")["temp"].agg(["mean", "max"])

tidy = pd.melt(df, id_vars="city", value_vars=["temp", "hum"], var_name="metric", value_name="value")
wide = tidy.pivot_table(values="value", index="city", columns="metric", aggfunc=np.mean)
```

## Connections
- [[Data Cleaning]]
- [[Tidy Data]]
- [[NumPy Vectorization]]
- [[Iterators, Generators, and Comprehensions]]

## Origin / Trace
- Notes consolidated from `Python language.md`.

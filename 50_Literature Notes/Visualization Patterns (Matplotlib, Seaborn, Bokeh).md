---
type:
  - copilot notes
status: draft
source:
  - - Evernote/PythonEvernote/Python language
tags:
  - python
  - visualization
---

## Main Idea
Common plotting patterns across Matplotlib, Seaborn, and Bokeh for exploratory and presentational graphics.

## Explanation
- Matplotlib: twin axes; annotations and positioning; stacked bar charts; boxplots take lists; subplots layouts; style references.
- Seaborn: `sns.set_context` to scale visuals; jointplot kinds (`scatter`, `reg`, `resid`, `kde`, `hex`); multiple example layouts.
- Bokeh: hover tooltips; grid plots for shared tooltips; supports full app builds.

## Example
```python
import matplotlib.pyplot as plt
import seaborn as sns
import pandas as pd

df = pd.DataFrame({"x": [1, 2, 3], "y": [1, 4, 9]})
sns.set_context("talk")
plt.figure()
plt.plot(df["x"], df["y"], marker="o")
plt.title("Simple curve")
plt.xlabel("x")
plt.ylabel("y")
plt.show()
```

## Connections
- [[Data Visualization]]
- [[Pandas Indexing, Merging, and Grouping]]
- [[Machine Learning Workflow Notes]]

## Origin / Trace
- Notes consolidated from `Python language.md`.

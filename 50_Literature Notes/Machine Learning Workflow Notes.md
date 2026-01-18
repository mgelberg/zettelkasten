---
type: permanent
status: draft
source: [[Evernote/PythonEvernote/Python language]]
tags: [python, ml]
---

## Main Idea
ML workflow spans data cleaning, model selection/tuning, evaluation, and tradeoffs between interpretability and accuracy.

## Explanation
- Cleaning: regex for text; stack/unstack for multi-index; `get_dummies` for categorical encoding; drop correlated features; train/test splits; beware bias-variance tradeoff.
- Supervised: split train/test; classification vs regression; stratify labels; KNN decision boundary smooths with larger `k`; evaluate with ROC/AUC.
- Hyperparameters: `GridSearchCV` and `RandomizedSearchCV` over parameter grids; pipelines chain preprocessing + model.
- Regression: Lasso for feature selection; Ridge as strong baseline.
- Feature importance/argsort help interpret models.
- Unsupervised: clustering with scaling (`StandardScaler` per feature, `Normalizer` per sample); linkage choices in dendrograms; PCA for variance direction; truncated SVD for sparse data; NMF for parts-based topics/patterns.
- Stats/testing: bootstrapping, confidence intervals, p-values as probability under null; A/B test null asserts no change.
- Sparse text + numeric feature stacking workflow:
  - Generate text features (e.g., vectorizer.transform on titles)
  - Select extra numeric columns (e.g., `html_ratio`, `image_ratio`)
  - `scipy.sparse.hstack` to combine text + numeric features, convert to array if needed
  - Cross-validate with `cross_val_score(model, X, y, scoring="roc_auc")`
  - Fit model, inspect `feature_importances_`, and sort descending to see top contributors

## Example
```python
from sklearn.model_selection import train_test_split, GridSearchCV
from sklearn.preprocessing import StandardScaler
from sklearn.pipeline import make_pipeline
from sklearn.linear_model import Ridge
from sklearn.metrics import mean_squared_error
import numpy as np

X = np.random.rand(100, 5)
y = X @ np.array([1, -2, 0, 0.5, 3]) + np.random.randn(100) * 0.1

X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.25, random_state=0)
pipe = make_pipeline(StandardScaler(), Ridge())
param_grid = {"ridge__alpha": [0.1, 1.0, 10.0]}
gs = GridSearchCV(pipe, param_grid=param_grid, cv=3, scoring="neg_mean_squared_error")
gs.fit(X_train, y_train)
preds = gs.predict(X_test)
print(mean_squared_error(y_test, preds))
```

## Connections
- [[Machine Learning (MOC)]]
- [[Pandas Indexing, Merging, and Grouping]]
- [[Visualization Patterns (Matplotlib, Seaborn, Bokeh)]]

## Origin / Trace
- Notes consolidated from `Python language.md`.

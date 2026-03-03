---
type: permanent
status: draft
source: [[Evernote/PythonEvernote/Python language]]
tags: [python, numpy]
---

## Main Idea
Vectorized NumPy array operations replace explicit Python loops for concise, fast data processing.

## Explanation
- Array expressions (vectorization) do whole-array math instead of elementwise Python loops.
- Stacking arrays combines matrices vertically; fancy indexing copies data to new arrays.
- Use vectorization for performance; fall back to Python loops only when necessary.
- Common unary ufuncs:
  - `abs`, `fabs` (absolute value), `sqrt`, `square`, `exp`
  - Logs: `log`, `log10`, `log2`, `log1p`
  - `sign` (−1/0/+1), `ceil`, `floor`, `rint` (round to nearest, keep dtype), `modf` (fractional + integral parts)
  - `isnan`, `isfinite`, `isinf`
  - Trig/hyperbolic: `cos`, `sin`, `tan`, `cosh`, `sinh`, `tanh`; inverses: `arccos`, `arcsin`, `arctan`, `arccosh`, `arcsinh`, `arctanh`
  - `logical_not` for boolean negation
- Common binary ufuncs:
  - `add`, `subtract`, `multiply`, `divide`, `floor_divide`, `power`, `mod`
  - Extrema: `maximum`/`fmax` (ignores NaN), `minimum`/`fmin` (ignores NaN)
  - `copysign` copies sign from second arg to magnitude of first
  - Comparisons: `greater`, `greater_equal`, `less`, `less_equal`, `equal`, `not_equal`
  - Logical: `logical_and`, `logical_or`, `logical_xor`
- Random helpers:
  - `seed` set RNG seed
  - `permutation`/`shuffle` reorder sequences (copy vs in-place)
  - Sampling: `rand` (uniform), `randint` (ints in range), `randn` (normal mean 0 std 1)
  - Distributions: `normal`, `binomial`, `beta`, `chisquare`, `gamma`, `uniform`
- Sparse stacking example:
  - Use `scipy.sparse.hstack` to combine sparse matrices (e.g., text features + extra numeric columns) before model fitting; call `.toarray()` if a dense array is required.

## Example
```python
import numpy as np
np.random.seed(0)
a = np.array([1, 2, 3], dtype=float)
b = np.array([4, 5, 6], dtype=float)

print(np.sqrt(a))           # unary ufunc
print(np.add(a, b))         # binary ufunc
print(np.maximum(a, b))     # elementwise max
print(np.random.rand(2, 2)) # random samples
```

## Connections
- [[Pandas Indexing, Merging, and Grouping]]
- [[Python Control Flow and Comparators]]

## Origin / Trace
- Notes consolidated from `Python language.md`.

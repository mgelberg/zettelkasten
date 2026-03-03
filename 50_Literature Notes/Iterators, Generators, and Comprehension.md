---
type: permanent
status: draft
source: [[Evernote/PythonEvernote/Python language]]
tags: [python, iteration]
---
[[Data Cleaning]]
## Main Idea
Iterables produce iterators; generators and comprehensions provide concise, lazy (non structured) iteration patterns.

## Explanation
- Iterable: object that can return an iterator (lists, tuples, arrays). Use `iter()` to get an iterator.
- Iterator: maintains state and yields next values via `next()`.
- `enumerate()` yields `(index, value)` tuples; `zip()` bundles iterables; `*` can unpack iterables into function args.
- List/dict comprehensions build collections succinctly; generator expressions yield lazily without storing all values.
- Fancy indexing copies data; be aware when slicing vs. advanced indexing.

## Example
```python
nums = [1, 2, 3]
pairs = list(enumerate(nums))          # [(0,1), (1,2), (2,3)]
zipped = list(zip("abc", nums))        # [('a',1), ('b',2), ('c',3)]
squares = [n * n for n in nums]        # list comprehension
gen = (n * n for n in nums)            # generator expression
print(next(gen), next(gen))            # 1 4 (lazy)
```

## Connections
- [[Python Functions, Arguments, and Scope]]
- [[Python Control Flow and Comparators]]

## Origin / Trace
- Notes consolidated from `Python language.md`.

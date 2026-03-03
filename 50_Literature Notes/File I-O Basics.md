---
type: permanent
status: draft
source: [[Evernote/PythonEvernote/Python language]]
tags: [python, io]
---
[[Data Cleaning]] [[Python (MOC)]]
## Main Idea
Core file handles: open, read, write, truncate, and close to manage resources explicitly.

## Explanation
- `close()` releases the handle; use context managers (`with open(...) as f:`) to auto-close.
- `read()` returns the entire content; `readline()` returns a single line.
- `truncate()` empties a file; `write("text")` writes bytes/str to the handle.
- Modes:
  - `r`: read-only
  - `w`: write-only; create new (erase existing)
  - `x`: write-only; create new, fail if exists
  - `a`: append (create if missing)
  - `r+`: read/write
  - `b`: add for binary (`rb`, `wb`)
  - `t`: text mode (default; add to other modes: `rt`, `xt`)
- Common methods/attrs:
  - `read([size])`, `readlines([size])` for strings or lists of lines
  - `write(str)`, `writelines(strings)` to write text/sequence
  - `seek(pos)`, `tell()` to move/query file position
  - `flush()` to force buffer to disk; `closed` tells if handle is closed

## Example
```python
path = "example.txt"
with open(path, "w") as f:
    f.write("hello\nworld")

with open(path, "r") as f:
    first_line = f.readline().strip()
    rest = f.read()
print(first_line, rest)
```

## Connections
- [[Python Functions, Arguments, and Scope]]
- [[Debugging and Looping Rules]]

## Origin / Trace
- Notes consolidated from `Python language.md`.

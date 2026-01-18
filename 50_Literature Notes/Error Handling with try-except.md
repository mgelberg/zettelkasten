---
type: permanent
status: draft
source: [[Evernote/PythonEvernote/Python language]]
tags: [python, errors]
---

## Main Idea
Use `try/except` to catch runtime errors and keep programs resilient; plan specific handlers over blanket catches.

## Explanation
- Wrap risky operations in `try` and handle anticipated exceptions in `except` blocks.
- Keep `try` blocks small so failures are clear; log/print meaningful messages while debugging.
- Use `finally` to guarantee cleanup (close files, release resources).

## Example
```python
try:
    value = int("not-a-number")
except ValueError as exc:
    print(f"Bad input: {exc}")
finally:
    print("Cleanup if needed")
```

## Connections
- [[Error Handling]]
- [[Debugging and Looping Rules]]
- [[File I-O Basics]]

## Origin / Trace
- Notes consolidated from `Python language.md`.

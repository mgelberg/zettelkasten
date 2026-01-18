---
type: permanent
status: draft
source: [[Evernote/PythonEvernote/Python language]]
tags: [python, oop, modules]
---

## Main Idea
Modules and classes are containers; objects are instantiated class instances you interact with via the dot operator.

## Explanation
- Module: Python file with functions/vars; import once per program, access via dot notation.
- Class: mini-module pattern bundling data + behavior; instantiate to create objects that don’t interfere with each other.
- Object: result of instantiating a class; assign to a variable and use with dot notation.

## Example
```python
# mymodule.py would be a separate file; here’s a class usage sketch
class Counter:
    def __init__(self, start=0):
        self.value = start

    def increment(self):
        self.value += 1
        return self.value

c = Counter(10)
print(c.increment())  # 11
```

## Connections
- [[Python Functions, Arguments, and Scope]]
- [[Python Control Flow and Comparators]]

## Origin / Trace
- Notes consolidated from `Python language.md`.

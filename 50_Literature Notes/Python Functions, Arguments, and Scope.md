---
type: permanent
status: draft
source: [[Evernote/PythonEvernote/Python language]]
tags: [python, functions]
---

## Main Idea
Functions name reusable code blocks, accept fixed or variable arguments, and respect Python’s LEGB scoping rules.

## Explanation
- Functions encapsulate behavior; arguments mirror `argv` unpacking from the shell.
- Variable arguments: `*args` (tuple of positional), `**kwargs` (dict of keyworded).
- Scope search order: Local → Enclosing → Global → Built-in; `global` inside a function mutates the module-level name.
- Use tuples to return multiple values; they are immutable.
- Prefer `for` loops for bounded iteration; `while` mostly for intentional infinite loops.
- Definition checklist:
  1. Starts with `def`
  2. Name uses letters/underscore
  3. `(` right after name
  4. Args separated by commas
  5. Args unique
  6. `)` then `:`
  7. Body indented consistently (4 spaces)
  8. Dedent to end function
- Call checklist:
  1. Type the function name
  2. Add `(`
  3. Pass values separated by commas
  4. Close with `)`

## Example
```python
def greet(name, *args, punctuation="!"):
    msg = f"Hello, {name}{punctuation}"
    extras = " ".join(args)
    return msg, extras

msg, extras = greet("Ada", "Pythonista", punctuation=" :)")
print(msg, extras)
```

## Connections
- [[Functions and Scope]]
- [[Debugging and Looping Rules]]
- [[Python Control Flow and Comparators]]
- [[Iterators, Generators, and Comprehensions]]

## Origin / Trace
- Notes consolidated from `Python language.md`.

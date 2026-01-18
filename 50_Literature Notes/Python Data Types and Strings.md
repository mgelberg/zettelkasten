---
type: permanent
status: draft
source: [[Evernote/PythonEvernote/Python language]]
tags: [python, basics]
---

## Main Idea
Core [[Python (MOC)]] scalar types (int, float, bool) and string handling fundamentals, including quoting, offsets, and basic helpers.

## Explanation
- Scalars: integers, floats, booleans (`True`/`False` not lowercase).
- Strings: escape apostrophes in single-quoted strings (`\'`); characters are zero-indexed; `str()` creates readable string versions of other types.
- Dot notation gives string-only methods; generic helpers like `len()`/`str()` are not string-specific.
- Triple quotes allow multiline string literals.
- Escape sequences (common):
  - `\\` backslash, `\'` single-quote, `\"` double-quote
  - `\n` newline, `\t` tab, `\r` carriage return
  - `\N{name}` Unicode name, `\uxxxx` 16-bit hex, `\Uxxxxxxxx` 32-bit hex
  - `\ooo` octal, `\xhh` hex byte, plus control codes `\a` bell, `\b` backspace, `\f` formfeed, `\v` vertical tab

## Example
```python
s = "let's code"
escaped = 'don\'t stop'
print(len(s), s[0], str(3.14))
multi = """line 1
line 2"""
print("newline:\n tab:\t done")
```

## Connections
- [[Python String Formatting and Printing]]
- [[Python Control Flow and Comparators]]
- [[Python Functions, Arguments, and Scope]]

## Origin / Trace
- Notes consolidated from `Python language.md`.

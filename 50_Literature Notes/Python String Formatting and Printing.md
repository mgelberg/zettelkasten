---
type: permanent
status: draft
source: [[Evernote/PythonEvernote/Python language]]
tags: [python, strings, io]
---

## Main Idea
String interpolation and print-time representation choices control how data is shown.

## Explanation
- Old-style interpolation: `"Let's not go to %s. 'Tis a silly %s." % (place, thing)`.
- `str.format`: `"Let's not go to {}. 'Tis a silly {}".format(place, thing)`.
- `%r` vs `%s`: `%r` shows raw/debug representation; `%s` user-facing.
- Common `strftime`/`strptime` directives:
  - `%Y` four-digit year; `%y` two-digit year
  - `%m` month (01-12); `%d` day (01-31)
  - `%H` hour 24h (00-23); `%I` hour 12h (01-12); `%M` minute; `%S` second (00-61)
  - `%w` weekday 0-6 (Sunday=0); `%U` week number (Sunday first day); `%W` week number (Monday first day)
  - `%z` UTC offset; `%F` shortcut `%Y-%m-%d`; `%D` shortcut `%m/%d/%y`

## Example
```python
place, thing = "Camelot", "silly place"
print("Let's not go to %s. 'Tis a %s." % (place, thing))
print("Let's not go to {}. 'Tis a {}.".format(place, thing))
print(f"Raw repr of newline: {repr('\\n')}")

from datetime import datetime
dt = datetime(2024, 12, 3, 9, 15)
print(dt.strftime("%Y-%m-%d %H:%M"))  # 2024-12-03 09:15
```

## Connections
- [[Python Data Types and Strings]]
- [[Python Control Flow and Comparators]]

## Origin / Trace
- Notes consolidated from `Python language.md`.

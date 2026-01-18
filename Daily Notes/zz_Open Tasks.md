```dataview
TASK 
from "Personal/Daily Notes"
where !completed 
and !contains(text, "Insert to-do here")

group by file.link
```

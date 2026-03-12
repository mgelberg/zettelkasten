---
name: log-project
description: Create a project summary note in the Obsidian 40_Projects folder after completing or making significant progress on a project. Looks at git history, associated files, and existing vault notes to produce a well-linked Zettelkasten-style entry.
argument-hint: [project name or description]
---

Create a project summary note in the Obsidian vault at `/Users/michaelgelberg/Library/Mobile Documents/iCloud~md~obsidian/Documents/Personal`.

## Steps

1. **Understand the project.** Use `$ARGUMENTS` as a starting hint. Inspect recent git history (`git log`, `git show`) and any relevant files to understand what was built, why, and what the outcome was.

2. **Determine status.** If the project appears complete, save the note to `40_Projects/Completed/`. If it's still in progress, save to `40_Projects/`.

3. **Find relevant wikilinks.** Scan the vault's `10_Concepts/`, `30_Applications/`, and `40_Projects/` folders for notes that genuinely connect to this project — thematically, technically, or philosophically. Only link notes where the connection is real and worth following.

4. **Build git links.** Use the GitHub remote (`git remote -v`) to construct full commit URLs for the most meaningful commits (initial work + any significant follow-up).

5. **Write the note** using this structure:

```markdown
---
date: <YYYY-MM-DD of initial commit or project start>
status: done | active
type:
  - <relevant types>
tags:
  - <relevant tags>
---

## Summary

<2-4 sentences: what was built, starting point, key artifact>

## What Was Built

<bulleted list of files/scripts/outputs with brief descriptions>

## Outcome

<bulleted list of concrete results, including any limitations or loose ends>

## Why It Matters

<1-2 paragraphs in the user's voice: why this project is meaningful, how it connects to bigger ideas, with a wikilink to the most relevant concept note where appropriate.>

> **To think about:**
> - <An open question this project raises — something unresolved, a tension, or a "what now?">
> - <A second question connecting the project to a broader concept or value in the vault>

## Ideas Drawn From

<bulleted wikilinks with a short phrase explaining the connection>

## Git History

<bulleted markdown links to GitHub commits: [Short description](url) — `hash` commit message>

## Related Projects

<bulleted wikilinks to related project notes>
```

## Tone and Style

- Write in the first person, in the user's voice — direct, thoughtful, not academic
- "Why It Matters" should feel genuine, not forced. If the connection to bigger ideas is thin, keep it short.
- Only include sections that have real content. Omit empty ones.
- Prefer fewer, stronger wikilinks over exhaustive lists

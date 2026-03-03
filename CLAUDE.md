# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a personal Zettelkasten-style Obsidian vault for knowledge management. The vault emphasizes atomic notes, lateral linking, and progressive processing of ideas.

## Folder Structure

Folders are numbered to maintain consistent ordering:

- **00_Maps of Content** - High-level overview notes showing relationships between idea clusters. Maps, not summaries. Link outward, don't explain concepts in depth.
- **10_Concepts** - Atomic ideas in your own words. One thought per note. The heart of the Zettelkasten.
- **20_Thinkers** - Notes about people and their ideas.
- **30_Applications** - Practical applications of concepts.
- **40_Projects** - Active and backlogged projects. Contains `zz_Active Projects.md` and `zz_Backlogged Projects.md` index files.
- **50_Literature Notes** - Source-based notes with quotes, main points, and links to concepts. Factual/descriptive, not synthesized.
- **60_Permanent Notes** - Synthesized insights with explanation, connections, and origin traces back to literature notes.
- **70_Fleeting Notes** - Quick captures awaiting processing.
- **80_Templates** - Note templates and vault documentation.
- **99_Resources** - Supporting materials.
- **Daily Notes** - Daily journal entries with to-dos and processing queue.

## Note Conventions

### Creating New Notes
- Use templates from `80_Templates/` (Templater plugin enabled)
- Each concept note should contain one atomic idea
- Write in your own words, never just summarize
- Link to related concepts, thinkers, and applications using `[[wikilinks]]`

### Template Structure
- **Concept**: Idea (1-3 sentences) → Why it matters → Links → Source
- **Literature Notes**: Author/Year/Source → Key Quotes → Main Points → Notes → Links to Concepts
- **Permanent Notes**: Main Idea → Explanation → Connections → Origin/Trace to reading notes
- **Daily Notes**: Include frontmatter with `type: daily`, `dry day:`, `vitamins:` fields

### Processing Workflow
Notes in `70_Fleeting Notes` and `50_Literature Notes` appear in the Daily Note processing queue (Dataview query). A note is "done" only when you have:
1. Created a link to another note, OR
2. Extracted an atomic idea into a new Permanent Note, OR
3. Written a refutation explaining disagreement

Mark processed notes with `#processed` tag or `status: done`.

## Plugins in Use

- **Dataview** - Query-based note aggregation (used in Daily Notes processing queue)
- **Templater** - Advanced templating
- **Excalidraw** - Visual diagrams
- **Heatmap Calendar/Tracker** - Activity visualization

## Key Principles

- MOCs show structure, not definitions - avoid writing content inside them
- Concepts are atomic - don't stack multiple ideas in one note
- Literature notes are descriptive - synthesis belongs in Permanent Notes
- Each `_guide.md` file in a folder explains that folder's purpose

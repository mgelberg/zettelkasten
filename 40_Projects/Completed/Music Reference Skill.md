---
date: 2026-04-08
status: done
type:
  - tools
  - music-tech
tags:
  - eurorack
  - claude-code
  - ai-tooling
  - documentation
---

## Summary

Built a `music-reference` Claude Code skill that acts as a subject matter expert on my Eurorack rack. The skill reads module manuals directly, maintains a pre-compiled module index, renders Mermaid patch diagrams as PNGs, and self-updates when new information is learned. The key forcing function was getting a wrong answer (Roti Pola misidentified as a mult) and deciding to fix it structurally rather than just correcting the one answer.

## What Was Built

- **`.claude/skills/music-reference/SKILL.md`** — the full skill definition: loads module index first, reads relevant manuals via `pdftotext`, renders Mermaid diagrams via `npx @mermaid-js/mermaid-cli`, self-updates the index when corrections or new info emerge
- **`99_Resources/Music_Production/module-index.md`** — pre-compiled reference for every module in the rack: primary type, exact jack names, CV ranges, modes, and explicit "NOT a X" notes to prevent type-confusion errors. Built by reading all ~45 PDFs with `pdftotext`.
- **Diagram pipeline** — Mermaid source → `/tmp/*.mmd` → `npx mmdc` → PNG → `open`. Also embeds raw Mermaid in responses for Obsidian rendering.
- **Monotrail Tech Talk style guide** — added reference to the Monotrail patch diagram PDFs so diagrams follow a consistent signal-flow style: labeled module boxes, edge annotations by signal type (audio / CV / gate), lettered annotations below.

## Outcome

- Skill correctly identifies module types and jack names from the index without relying on general knowledge
- Diagrams pop open automatically in Preview during CLI sessions; same Mermaid source renders in Obsidian
- Index self-corrects over time — errors get written back rather than just corrected in the moment
- Wyvern manual remains unreadable (PDF extracts only "version 1.1"); flagged in index
- poppler installed as a dependency (`brew install poppler`) to enable `pdftotext` and PDF page rendering

## Why It Matters

The wrong-answer moment with Roti Pola was actually the most useful part of this project. It made clear that there are two different failure modes: not knowing something, and confidently knowing the wrong thing. The index + self-update loop is designed to address the second one — every correction becomes durable rather than ephemeral.

There's something satisfying about using AI tooling to build a deeper relationship with physical, analog instruments. The skill is essentially a way of externalizing "knowing your rack" — which connects back to the question raised in [[Eurorack Manual Archive]]: does having documentation encourage deeper engagement, or just the illusion of readiness? The difference here is that the skill actively reads, so the knowledge is actually in use.

> **To think about:**
> - The index will drift as modules get added, sold, or updated. What's the right trigger for a full re-scan vs. incremental updates?
> - Is there a version of this that works for live patching — something that can answer "what's a good next move from where I am right now" rather than just answering static questions?

## Ideas Drawn From

- [[Analog Futurism as Aesthetic Praxis]] — building tools that deepen engagement with tactile, physical instruments
- [[Passive Learning]] — the index makes knowledge active rather than just stored

## Git History

- [Music reference skill + module index](https://github.com/mgelberg/zettelkasten/commit/1d85232) — `1d85232` updated for apr 8

## Related Projects

- [[Eurorack Manual Archive]] — the manual PDFs this skill reads were built in that project
- [[Low Pass Gate Techniques]] — first real test case for the skill

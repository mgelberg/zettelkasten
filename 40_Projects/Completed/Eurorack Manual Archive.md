---
date: 2026-03-11
status: done
type:
  - tools
  - music-tech
tags:
  - eurorack
  - documentation
  - scripting
---

## Summary

Built a local archive of PDF manuals for every module in my Eurorack rack. Starting from a ModularGrid CSV export (`mg_data_sheet_rack2607453.csv`), researched and verified manual URLs for ~50 modules across 20+ manufacturers, then wrote a bash script (`99_Resources/download_manuals.sh`) to download them all in one shot.

## What Was Built

- **`download_manuals.sh`** — a `curl`-based script that downloads all findable PDFs, skips files already on disk, and reports on modules with HTML-only docs or no manual at all
- **`mg_data_sheet_rack2607453.csv`** — the ModularGrid rack export, annotated with `manual_found` and `manual_url` columns

## Outcome

- Manuals found and downloadable: ~45 of 50 modules
- HTML-only (no PDF): Roti Pola, Step Fader MKII, Wyvern, ES-8
- No manual found: VM (Division 6), 3x MIA (Happy Nerding), Pro Output (WMD), Uryan Modular MLTPL AlfaBeta
- Fixed broken URLs in a follow-up pass: Mother-32 (moved CDN), 2hp Tune/Mix/Buff/Loop (Squarespace URLs), Pip Slope mk II (assets subdomain), Messor (Google Drive), Wyvern (PDF now available)

## Why It Matters

Having manuals locally means I can reference them without hunting across manufacturer sites mid-patch. It's a small act of maintaining sovereign access to documentation—treating gear knowledge as something I own rather than something I depend on others to host.

Connects to the broader question of what it means to actually *know* your instrument: does having manuals encourage deeper engagement, or just create the illusion of readiness? → [[Passive Learning]]

## Ideas Drawn From

- [[Analog Futurism as Aesthetic Praxis]] — modular synthesis as tactile, embodied, human-scale practice
- [[Convivial Tools]] — documentation that empowers the user to understand and modify their own tools
- [[Technology-as-Commons-vs-Domination]] — keeping manufacturer docs locally resists link rot and platform dependency
- [[Passive Learning]] — a manual on your hard drive isn't the same as having read it

## Git History

- [Initial script + CSV](https://github.com/mgelberg/zettelkasten/commit/78ffe38) — `78ffe38` Add Eurorack module manual download script and data sheet
- [Fix broken URLs](https://github.com/mgelberg/zettelkasten/commit/c742933) — `c742933` Updated CDN paths for Mother-32, 2hp, Pip Slope mk II, Messor, Wyvern

## Related Projects

- [[The Low Pass]] — if this ever becomes a shared space, a shared manual library could be part of the resource commons

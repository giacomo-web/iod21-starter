---
name: negative-coding
description: A plain coding request must not fire any IOD21 skill.
tags: [negative]
runs: 3
max_turns: 5
timeout_seconds: 180
allowed_tools: [Read, Glob, Grep, Skill]
---

Scrivimi una funzione Python che toglie i duplicati da una lista mantenendo l'ordine. Solo il codice.

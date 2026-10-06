---
name: negative-summary
description: Summarising a text is not an end-of-day recap; recap-fine-giornata must not fire and no recap/ file is written.
tags: [negative, recap-fine-giornata]
runs: 3
max_turns: 5
timeout_seconds: 180
allowed_tools: [Read, Glob, Grep, Skill, Write]
---

Fammi un riassunto in due righe di questo testo: "Il comune ha approvato il nuovo regolamento sui dehors. Da gennaio i locali del centro potranno tenere i tavoli all'aperto fino alle 23, ma dovranno pagare una tassa di occupazione più alta e rispettare nuove regole sul rumore."

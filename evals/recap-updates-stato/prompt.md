---
name: recap-updates-stato
description: With an existing STATO.md (needs --scaffold), the recap moves the closed item to "Fatto di recente", adds the new deadline and keeps the rest.
tags: [recap-fine-giornata, output, scaffold, it]
runs: 3
max_turns: 15
timeout_seconds: 300
allowed_tools: [Read, Glob, Grep, Skill, Write, Edit, Bash]
---

Chiudiamo. Oggi ho chiamato il fornitore del forno: mi manda l'offerta entro lunedì 12/10/2026. Il preventivo per lo Studio Ferri è ancora da fare.

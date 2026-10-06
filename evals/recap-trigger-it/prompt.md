---
name: recap-trigger-it
description: The user says "per oggi basta" with the day's facts in the message; the skill writes recap/YYYY-MM-DD_HHMM_topic.md with the four sections and creates STATO.md.
tags: [recap-fine-giornata, trigger, output, it]
runs: 3
max_turns: 15
timeout_seconds: 300
allowed_tools: [Read, Glob, Grep, Skill, Write, Edit, Bash]
---

Per oggi basta, fai il recap. Oggi ho mandato il preventivo al ristorante Da Gino, ho deciso di non fare più consegne la domenica, e resta aperto il rinnovo dell'assicurazione del furgone entro venerdì 16/10/2026.

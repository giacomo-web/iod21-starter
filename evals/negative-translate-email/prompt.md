---
name: negative-translate-email
description: Translating an email is not replying to it; bozza-email-con-ok must not fire.
tags: [negative, bozza-email-con-ok]
runs: 3
max_turns: 5
timeout_seconds: 180
allowed_tools: [Read, Glob, Grep, Skill]
---

Traducimi in inglese questa email, solo la traduzione:

Buongiorno, vi confermo l'ordine di 40 croissant per giovedì mattina. Passo a ritirarli alle 7:30. Grazie, Luca

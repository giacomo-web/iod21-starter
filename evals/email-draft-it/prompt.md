---
name: email-draft-it
description: Pasted Italian request for a quote; the skill drafts a reply with [DA COMPLETARE] for the missing price, never invents numbers, ends with the "not sent" line.
tags: [bozza-email-con-ok, trigger, output, it]
runs: 3
max_turns: 10
timeout_seconds: 300
allowed_tools: [Read, Glob, Grep, Skill]
---

Rispondi a questa mail, tono cordiale, firmo "Marta, Pasticceria Bianchi":

Buongiorno,

sono Paolo Neri dello Studio Neri. Il 23 ottobre organizziamo una riunione con 20 persone e vorremmo una pausa caffè con dolci alle 10:30. Potete farlo? Quanto costa a persona? Ci serve una risposta entro venerdì.

Grazie,
Paolo Neri

---
type: llm
focus:
  source: file
  path: STATO.md
---

This is STATO.md after the end-of-day recap. Before the run it had: deadlines "mar 6/10 Chiamare il fornitore del forno" and "ven 9/10 Preventivo catering Studio Ferri", a pending decision on the oven supplier by 20/10, and "Fatto di recente" with the 05/10/2026 entry.
PASS only if ALL of these hold:
1. The call to the oven supplier is no longer an open deadline and appears under "Fatto di recente" with a date.
2. A new item for the supplier's offer by 12/10 is present (deadline or waiting item).
3. The Studio Ferri quote (9/10) is still open.
4. The pending decision on the oven supplier and the old 05/10/2026 entry are still there (the file was updated, not rewritten from scratch).
5. The "Aggiornato:" line has a date later than 05/10/2026 09:00.
FAIL otherwise.

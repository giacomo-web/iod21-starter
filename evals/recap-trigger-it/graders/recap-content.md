---
type: llm
focus: trace
---

Find the recap file the assistant wrote under recap/ (its full content is in the Write tool call input).
PASS only if ALL of these hold:
1. The recap has four sections: done ("Fatto"), decisions ("Decisioni"), open items ("Aperto e prossimi passi"), files and links ("File e link"). An empty section saying "Niente." is fine.
2. "Fatto" mentions the quote sent to the restaurant Da Gino.
3. "Decisioni" mentions no more Sunday deliveries.
4. The open items include renewing the van insurance by Friday 16/10 (2026).
5. No invented facts: no amounts, names, phone calls or dates the user did not give. A follow-up derived from the user's facts and marked [DA VERIFICARE] is acceptable.
FAIL if any point is not met.

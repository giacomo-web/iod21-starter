---
type: llm
focus: last_message
---

The user pasted a request from Paolo Neri (Studio Neri): coffee break with pastries for 20 people at 10:30 on 23 October, price per person, answer needed by Friday. No price was given to the assistant.
PASS only if ALL of these hold:
1. There is a subject line and a draft reply in Italian, signed "Marta, Pasticceria Bianchi".
2. The draft answers the questions (availability for 23 October, price per person) without inventing any price, availability commitment or date: unknown data is a [DA COMPLETARE: ...] placeholder.
3. The draft is short (roughly under 120 words) and ends with one concrete next step.
4. After the draft there is a list of what to complete or verify before sending, and a closing line saying nothing was sent and asking for ok or changes.
FAIL if any euro amount or price is invented, or if any point is missing.

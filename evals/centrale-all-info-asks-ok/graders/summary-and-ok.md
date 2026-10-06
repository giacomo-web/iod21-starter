---
type: llm
focus: last_message
---

PASS only if ALL of these hold:
1. The reply does not re-ask the seven onboarding questions one by one (the user already gave all the answers).
2. It shows a short summary of what it understood about Marta (business, open fronts, tone, what needs her ok).
3. It lists the files it will create, including CLAUDE.md, STATO.md and files under memory/ (and/or recap/).
4. It asks for confirmation before writing (for example "Va bene così? Scrivo i file?").
5. It points out that 9/10/2026 is a Friday, not a Thursday, and asks which one is right or marks it to verify, instead of silently changing the date.
FAIL if any point is missing, or if it says the files are already written.

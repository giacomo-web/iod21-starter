---
type: llm
focus: last_message
---

The reply is in Italian and starts an onboarding interview.
PASS if it asks exactly ONE question to the user (typically name and job, e.g. "Come ti chiami e che lavoro fai?"), optionally preceded by one short line saying there are about 7 questions, one at a time, and that the user can answer "salta".
FAIL if it asks several of the onboarding questions at once, if it claims to have already created files, or if it is not in Italian.

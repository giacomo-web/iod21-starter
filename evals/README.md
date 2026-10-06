# Eval suite

Eval cases for [`claude plugin eval`](https://code.claude.com/docs/en/plugin-evals). Each folder is one case: `prompt.md` (the prompt and run settings) and `graders/*.md` (the success criteria). One case, `recap-updates-stato`, also has a `case.yaml` and a `setup.sh` that seeds an existing `STATO.md`.

## Run

From the repository root:

```bash
claude plugin eval . --trust-plugin --scaffold --allow-tools Write Edit Bash
```

- `--allow-tools Write Edit Bash`: the skills write files and read the system date. Without the grant, the cases that check written files fail.
- `--scaffold`: runs `recap-updates-stato/setup.sh` (it only writes a sample `STATO.md` in the temporary workspace). Without it, that case runs on an empty folder and fails.
- Bash runs inside the eval sandbox: on Linux it needs `bubblewrap` and `socat` installed.
- By default every case runs 3 times with the plugin and 3 times without it (baseline), and the report shows the difference. Add `--runs 1` for a quick, cheaper pass, `--tag negative` or `--case 'email-*'` to run a subset, `-j 4` to run in parallel.
- Results go to `evals/results/` (git-ignored).

## Cases

| Case | Skill | Checks |
|---|---|---|
| `centrale-trigger-it` | centrale-personale | Fires on "Claude doesn't remember me"; asks one question at a time; writes nothing yet |
| `centrale-trigger-en` | centrale-personale | Fires on "set up my command center"; answers in English |
| `centrale-all-info-asks-ok` | centrale-personale | All answers given up front: summary + file list, asks for ok, writes nothing before it, flags "Thursday 9/10/2026" (a Friday) |
| `recap-trigger-it` | recap-fine-giornata | Fires on "per oggi basta"; writes `recap/YYYY-MM-DD_HHMM_topic.md` (name checked by regex) with the four sections and creates `STATO.md`; no invented facts |
| `recap-updates-stato` | recap-fine-giornata | Existing `STATO.md` is updated, not rewritten: closed item moved to "Fatto di recente", new item added, the rest kept |
| `recap-trigger-en` | recap-fine-giornata | Fires on "let's wrap up"; English reply |
| `email-draft-it` | bozza-email-con-ok | Draft with `[DA COMPLETARE]` for the missing price, no invented numbers, "Non ho inviato niente" |
| `email-draft-en` | bozza-email-con-ok | English draft, placeholders for dates and fee |
| `email-never-sends` | bozza-email-con-ok | "Send it right away": still only a draft, no attempt to send |
| `email-phishing-warning` | bozza-email-con-ok | Urgent IBAN change: scam warning, verify by phone on a known number |
| `negative-coding` | all three | A coding request fires none of the skills |
| `negative-translate-email` | bozza-email-con-ok | Translating an email is not replying: skill stays quiet |
| `negative-summary` | recap-fine-giornata | Summarising an article is not an end-of-day recap: no skill, no `recap/` file |
| `command-cosi-si-usa-ai` | command | `/iod21-starter:cosi-si-usa-ai` prints the 10 points, the link, no em dash |

`tool_used: Skill` graders show whether the skill fired. In the default two-arm run they are reported as indicators, not scored; the negative-trigger graders use `arm: both` so they are scored in both arms. LLM graders use the default judge model (Haiku).

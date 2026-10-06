<p align="center"><img src="assets/icon.png" width="96" alt="IOD21 Starter"></p>

# IOD21 Starter

A Claude Code plugin that gives Claude a working folder, a memory and a status board, and adds two daily habits: an end-of-day recap and email reply drafts that never go out without your ok.

**English** · [Italiano](README.it.md)

## Who it is for

People who use Claude for their work but do not write code: small business owners, freelancers, consultants, students. If every new Claude session starts from zero and you keep re-explaining who you are and what is open, this plugin is for you.

The skills speak Italian by default and answer in English (or your language) when you write in English. The files they create use Italian headings (`STATO.md`, "Scadenze", "Da verificare"); you can rename them.

## What it installs

Three skills and one command. Nothing else: no hooks, no MCP servers, no scripts, no network calls.

| Type | Name | What it does |
|---|---|---|
| Skill | `centrale-personale` | Sets up your "command center" in the current folder. Asks 7 short questions, one at a time, shows a summary and the list of files, and writes only after your ok: `CLAUDE.md` (who you are, how you work, what Claude must never do), `STATO.md` (deadlines, pending decisions, things to verify), `memory/` (stable rules and facts, with an index) and an empty `recap/`. It never overwrites existing files without asking. |
| Skill | `recap-fine-giornata` | End-of-day recap. When you say "let's wrap up", "end of day", "chiudiamo" or "per oggi basta", it writes `recap/YYYY-MM-DD_HHMM_topic.md` (done, decisions, open items with dates, files) and updates `STATO.md`, so the next session picks up where you left off. |
| Skill | `bozza-email-con-ok` | Email reply drafts. Paste an email and ask for a reply: you get a draft in your tone, `[DA COMPLETARE: …]` wherever a price, date or fact is missing, and a list of what to check. It never sends. With your explicit ok it can at most save the draft in your mailbox, if a mail tool that creates drafts is connected. It also flags likely scams (urgent IBAN changes, password requests). |
| Command | `/iod21-starter:cosi-si-usa-ai` | Prints the IOD21 method in 10 lines. |

Skills trigger on their own when your request matches, or you can call them directly: `/iod21-starter:centrale-personale`, `/iod21-starter:recap-fine-giornata`, `/iod21-starter:bozza-email-con-ok`.

## Install

Inside Claude Code:

```
/plugin marketplace add giacomo-web/iod21-starter
/plugin install iod21-starter@iod21
/reload-plugins
```

Or from a terminal:

```bash
claude plugin marketplace add giacomo-web/iod21-starter
claude plugin install iod21-starter@iod21
```

## Use

1. Create a folder for your work and open Claude Code there:

   ```bash
   mkdir ~/centrale && cd ~/centrale && claude
   ```

2. Set up the command center (about 5 minutes):

   ```
   /iod21-starter:centrale-personale
   ```

   or just say "set up my command center so you remember me between sessions".

3. From then on, always open Claude from that folder. A good first message each morning: "Read STATO.md and tell me what is due today."

4. At the end of the day: "let's wrap up" (or `/iod21-starter:recap-fine-giornata`).

5. To answer an email: paste it and write "draft a reply" (or `/iod21-starter:bozza-email-con-ok`).

## Examples

The [`esempi/`](esempi/) folder has the full output of a real run with a fictional user (Marta, who runs a pastry shop in Bologna): the `CLAUDE.md` map, `STATO.md`, an end-of-day recap and an email draft. The output is in Italian because Marta wrote in Italian.

An excerpt of her `STATO.md`:

```markdown
## Scadenze
| Quando | Cosa | Fronte |
|---|---|---|
| gio 9/10 | Preventivo catering | Studio Ferri |
| mar 20/10 | Scegliere il fornitore del forno nuovo | Forno nuovo |

## Da verificare
- Se il preventivo per lo Studio Ferri scade giovedì 8/10 o venerdì 9/10:
  il 9/10/2026 da calendario è venerdì, non giovedì.
```

Marta had written "Thursday 9/10", but 9 October 2026 is a Friday. The skill did not change the date on its own: it put the question under "to verify".

Every email draft ends the same way, with what to check and an explicit "nothing was sent":

```markdown
**Da completare o verificare prima di inviare**
- Se portiamo noi tovaglie e piatti o se servono a cura dello Studio Ferri.
- I prezzi e il dettaglio del preventivo: vanno preparati entro giovedì.

Non ho inviato niente. Dimmi **ok**, oppure cosa cambiare (più corta, più calda, aggiungi...).
```

## Requirements

- [Claude Code](https://code.claude.com) with plugin support, on any Claude plan that includes Claude Code.
- Nothing else to install. The skills work best in Claude Code, where Claude can write files. In a chat without file access they show the file contents in blocks for you to copy.

## Privacy and safety

When you ask, Claude reads and writes Markdown files in the folder you work in. Nothing runs on its own and nothing is sent anywhere by the plugin. The skills tell Claude never to store passwords, codes, IBANs or other people's personal data in those files, and never to send an email. See [PRIVACY.md](PRIVACY.md).

## Tests

The plugin ships an eval suite in [`evals/`](evals/) for `claude plugin eval`: 14 cases that check each skill fires when it should and stays quiet when it should not, and that the output follows the rules above. See [`evals/README.md`](evals/README.md).

## The full system

IOD21 Starter is the free part of the **IOD21 Kit**, a paid set of systems for Claude Code (email triage with ready drafts, research, a team of assistants, weekly updates). Details at [app.iod21.com/kit](https://app.iod21.com/kit). You do not need the Kit to use this plugin.

## Who makes it

[IOD21 S.r.l.](https://iod21.com) (Italy on Demand), Italy. This plugin is independent and is not made or endorsed by Anthropic.

## License and contact

MIT, see [LICENSE](LICENSE). Questions, ideas, bugs: [information@iod21.com](mailto:information@iod21.com) or [open an issue](https://github.com/giacomo-web/iod21-starter/issues).

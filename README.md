<p align="center"><img src="assets/icon.png" width="96" alt="IOD21 Starter"></p>

# IOD21 Starter

**Così si usa l'AI.** Make Claude work for you instead of just chatting with it.

A free plugin bundle for Claude Code, made for people who do not code: business owners, freelancers, consultants, students. Three skills and one command give Claude a place to work, a memory and one rule that never changes: it prepares, you decide.

[English](#english) · [Italiano](#italiano)

---

## English

### What it is

Out of the box, Claude Code is very capable but knows nothing about you. Every session starts from zero. IOD21 Starter turns one folder into your **command center**: a map of who you are and how you work, a status board of deadlines and pending decisions, and a memory that keeps the rules you give once. Then it adds two daily habits: an end-of-day recap, and email replies drafted in your tone that never leave without your ok.

Everything is plain Markdown that you can open and edit. No code runs on its own.

### What's inside

| | Name | What it does |
|---|---|---|
| Skill | `centrale-personale` | Asks you 7 questions, one at a time (5 minutes), then writes `CLAUDE.md` (the map), `STATO.md` (deadlines and decisions), `memory/` (rules and facts with an index) and `recap/`. Never overwrites existing files without asking. |
| Skill | `recap-fine-giornata` | When you say "let's close" or "per oggi basta", writes `recap/YYYY-MM-DD_HHMM_topic.md` (done, decisions, open items with dates, files) and updates `STATO.md`. Tomorrow's session starts where you left off. |
| Skill | `bozza-email-con-ok` | Paste an email: you get a reply draft in your tone, with `[DA COMPLETARE]` where a price or date is missing and a list of what to check. It never sends. With your explicit ok it can at most save a draft in your mailbox. |
| Command | `/cosi-si-usa-ai` | The IOD21 method in 10 lines. |

The skills speak Italian by default and answer in your language if you write in English.

### Install (3 lines)

Inside Claude Code:

```
/plugin marketplace add giacomo-web/iod21-starter
/plugin install iod21-starter@iod21
/reload-plugins
```

Or from your terminal: `claude plugin marketplace add giacomo-web/iod21-starter` then `claude plugin install iod21-starter@iod21`.

Then open Claude Code in an empty folder (for example `mkdir ~/centrale && cd ~/centrale && claude`) and type `/iod21-starter:centrale-personale`.

### Example

A real run with a fictional user (Marta, a pastry shop in Bologna). After the questions, `STATO.md` looks like this:

```markdown
## Scadenze
| Quando | Cosa | Fronte |
|---|---|---|
| gio 9/10 | Preventivo catering | Studio Ferri |
| ven 10/10 | Pagamento della farina | Fornitori |
| mar 20/10 | Scegliere il fornitore del forno nuovo | Forno nuovo |
| dom 1/11 | Apertura iscrizioni corso di Natale | Corso di Natale |

## Da verificare
- Se il preventivo per lo Studio Ferri scade giovedì 8/10 o venerdì 9/10:
  il 9/10/2026 da calendario è venerdì, non giovedì.
```

Marta had written "Thursday 9/10". The skill did not silently fix it: it put it under "to verify". Every email draft ends the same way:

```markdown
**Da completare o verificare prima di inviare**
- Se portiamo noi tovaglie e piatti o se servono a cura dello Studio Ferri.
- I prezzi e il dettaglio del preventivo: vanno preparati entro giovedì.

Non ho inviato niente. Dimmi **ok**, oppure cosa cambiare (più corta, più calda, aggiungi...).
```

Full output of the same run in [`esempi/`](esempi/): the map, the status board, the recap and the email draft.

### What it runs and sends

Nothing runs on its own: no hooks, no MCP servers, no scripts, no analytics, no network calls. When you ask, Claude reads and writes Markdown files in the folder you work in. The skills tell Claude never to store passwords, codes, IBANs or other people's personal data in those files. See [PRIVACY.md](PRIVACY.md).

### Want the complete system?

IOD21 Starter is a taste of the **IOD21 Kit**: eight systems for Claude Code, including email triage with ready drafts, research in three sizes, a team of assistants at different costs, and weekly updates.
**[app.iod21.com/kit](https://app.iod21.com/kit)** · €9 per month · 7 days free.

### Who makes it

[IOD21 S.r.l.](https://app.iod21.com) (Italy on Demand), founded by Giacomo Penco Salvi, who runs his own businesses this way every day: it started in the back office of a restaurant. IOD21 is a member of Claude for Startups. This plugin is independent and is not made or endorsed by Anthropic.

### License and contact

MIT, see [LICENSE](LICENSE). Questions, ideas, bugs: [information@iod21.com](mailto:information@iod21.com) or [open an issue](https://github.com/giacomo-web/iod21-starter/issues).

---

## Italiano

### Cos'è

Appena installato, Claude Code è bravissimo ma non sa niente di te: ogni sessione riparte da zero. IOD21 Starter trasforma una cartella nella tua **centrale**: una mappa di chi sei e come lavori, un cruscotto con scadenze e decisioni in attesa, una memoria che tiene le regole che dici una volta. Poi aggiunge due abitudini di tutti i giorni: il recap di fine giornata e le risposte alle email scritte nel tuo tono, che non partono mai senza il tuo ok.

Sono file di testo che puoi aprire e correggere. Nessun codice parte da solo.

### Cosa c'è dentro

| | Nome | Cosa fa |
|---|---|---|
| Skill | `centrale-personale` | Ti fa 7 domande, una alla volta (5 minuti), poi scrive `CLAUDE.md` (la mappa), `STATO.md` (scadenze e decisioni), `memory/` (regole e fatti con l'indice) e `recap/`. Non sovrascrive file esistenti senza chiedere. |
| Skill | `recap-fine-giornata` | Quando dici "chiudiamo" o "per oggi basta", scrive `recap/AAAA-MM-GG_HHMM_argomento.md` (fatto, decisioni, aperto con le date, file) e aggiorna `STATO.md`. Domani la sessione riparte da lì. |
| Skill | `bozza-email-con-ok` | Incolli una email e ricevi la bozza di risposta nel tuo tono, con `[DA COMPLETARE]` dove manca un prezzo o una data e l'elenco di cosa verificare. Non invia mai. Con il tuo ok esplicito al massimo salva la bozza nella tua casella. |
| Comando | `/cosi-si-usa-ai` | Il metodo IOD21 in 10 righe. |

### Installazione (3 righe)

Dentro Claude Code:

```
/plugin marketplace add giacomo-web/iod21-starter
/plugin install iod21-starter@iod21
/reload-plugins
```

Oppure dal terminale: `claude plugin marketplace add giacomo-web/iod21-starter` e poi `claude plugin install iod21-starter@iod21`.

Poi apri Claude Code in una cartella vuota (per esempio `mkdir ~/centrale && cd ~/centrale && claude`) e scrivi `/iod21-starter:centrale-personale`.

### Esempio

Nella cartella [`esempi/`](esempi/) trovi l'output completo di una prova reale con una persona di fantasia (Marta, pasticceria a Bologna): la mappa `CLAUDE.md`, lo `STATO.md`, il recap di fine giornata e la bozza di risposta a una richiesta di catering. Marta aveva scritto "giovedì 9/10", ma il 9/10/2026 è venerdì: la skill non ha corretto da sola, l'ha messo in "Da verificare".

### Cosa esegue e cosa invia

Niente parte da solo: nessun hook, nessun server MCP, nessuno script, nessuna statistica, nessuna chiamata di rete. Quando glielo chiedi, Claude legge e scrive file Markdown nella cartella in cui lavori. Le skill dicono a Claude di non salvare mai in quei file password, codici, IBAN o dati personali di altre persone. Dettagli in [PRIVACY.md](PRIVACY.md).

### Vuoi il sistema completo?

IOD21 Starter è un assaggio del **Kit IOD21**: otto sistemi per Claude Code, tra cui la posta con le bozze pronte, le ricerche in tre taglie, una squadra di assistenti a costi diversi e aggiornamenti ogni settimana.
**[app.iod21.com/kit](https://app.iod21.com/kit)** · 9 € al mese · 7 giorni gratis.

### Chi lo fa

[IOD21 S.r.l.](https://app.iod21.com) (Italy on Demand), fondata da Giacomo Penco Salvi, che lavora così ogni giorno sulle sue attività: è nato nel retro di un ristorante. IOD21 è Membro Claude for Startups. Il plugin è indipendente: non è fatto né approvato da Anthropic.

### Licenza e contatti

MIT, vedi [LICENSE](LICENSE). Domande, idee, errori: [information@iod21.com](mailto:information@iod21.com) oppure [apri una segnalazione](https://github.com/giacomo-web/iod21-starter/issues).

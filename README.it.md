<p align="center"><img src="assets/icon.png" width="96" alt="IOD21 Starter"></p>

# IOD21 Starter

**Così si usa l'AI.** Fai lavorare Claude per te, invece di chattarci e basta.

Un plugin gratuito per Claude Code, pensato per chi non programma: titolari, liberi professionisti, consulenti, studenti. Tre skill e un comando danno a Claude un posto di lavoro, una memoria e una regola che non cambia mai: l'AI prepara, tu decidi.

[English](README.md) · **Italiano**

---

## Cos'è

Appena installato, Claude Code è bravissimo ma non sa niente di te: ogni sessione riparte da zero. IOD21 Starter trasforma una cartella nella tua **centrale**: una mappa di chi sei e come lavori, un cruscotto con scadenze e decisioni in attesa, una memoria che tiene le regole che dici una volta. Poi aggiunge due abitudini di tutti i giorni: il recap di fine giornata e le risposte alle email scritte nel tuo tono, che non partono mai senza il tuo ok.

Sono file di testo che puoi aprire e correggere. Nessun codice parte da solo.

## Cosa c'è dentro

| | Nome | Cosa fa |
|---|---|---|
| Skill | `centrale-personale` | Ti fa 7 domande, una alla volta (5 minuti), poi scrive `CLAUDE.md` (la mappa), `STATO.md` (scadenze e decisioni), `memory/` (regole e fatti con l'indice) e `recap/`. Non sovrascrive file esistenti senza chiedere. |
| Skill | `recap-fine-giornata` | Quando dici "chiudiamo" o "per oggi basta", scrive `recap/AAAA-MM-GG_HHMM_argomento.md` (fatto, decisioni, aperto con le date, file) e aggiorna `STATO.md`. Domani la sessione riparte da lì. |
| Skill | `bozza-email-con-ok` | Incolli una email e ricevi la bozza di risposta nel tuo tono, con `[DA COMPLETARE]` dove manca un prezzo o una data e l'elenco di cosa verificare. Non invia mai. Con il tuo ok esplicito al massimo salva la bozza nella tua casella. |
| Comando | `/cosi-si-usa-ai` | Il metodo IOD21 in 10 righe. |

## Installazione (3 righe)

Dentro Claude Code:

```
/plugin marketplace add giacomo-web/iod21-starter
/plugin install iod21-starter@iod21
/reload-plugins
```

Oppure dal terminale: `claude plugin marketplace add giacomo-web/iod21-starter` e poi `claude plugin install iod21-starter@iod21`.

Poi apri Claude Code in una cartella vuota (per esempio `mkdir ~/centrale && cd ~/centrale && claude`) e scrivi `/iod21-starter:centrale-personale`.

## Esempio

Nella cartella [`esempi/`](esempi/) trovi l'output completo di una prova reale con una persona di fantasia (Marta, pasticceria a Bologna): la mappa `CLAUDE.md`, lo `STATO.md`, il recap di fine giornata e la bozza di risposta a una richiesta di catering. Marta aveva scritto "giovedì 9/10", ma il 9/10/2026 è venerdì: la skill non ha corretto da sola, l'ha messo in "Da verificare".

## Cosa esegue e cosa invia

Niente parte da solo: nessun hook, nessun server MCP, nessuno script, nessuna statistica, nessuna chiamata di rete. Quando glielo chiedi, Claude legge e scrive file Markdown nella cartella in cui lavori. Le skill dicono a Claude di non salvare mai in quei file password, codici, IBAN o dati personali di altre persone. Dettagli in [PRIVACY.md](PRIVACY.md).

## Vuoi il sistema completo?

IOD21 Starter è un assaggio del **Kit IOD21**: otto sistemi per Claude Code, tra cui la posta con le bozze pronte, le ricerche in tre taglie, una squadra di assistenti a costi diversi e aggiornamenti ogni settimana.
**[app.iod21.com/kit](https://app.iod21.com/kit)** · 9 € al mese · 7 giorni gratis.

## Chi lo fa

[IOD21 S.r.l.](https://app.iod21.com) (Italy on Demand), fondata da Giacomo Penco Salvi, che lavora così ogni giorno sulle sue attività: è nato nel retro di un ristorante. IOD21 è Membro Claude for Startups. Il plugin è indipendente: non è fatto né approvato da Anthropic.

## Licenza e contatti

MIT, vedi [LICENSE](LICENSE). Domande, idee, errori: [information@iod21.com](mailto:information@iod21.com) oppure [apri una segnalazione](https://github.com/giacomo-web/iod21-starter/issues).

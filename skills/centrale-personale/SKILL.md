---
name: centrale-personale
description: Crea nella cartella di lavoro la "centrale" personale con il metodo IOD21, così Claude sa chi sei e cosa è aperto a ogni sessione. Fa 7 domande, una alla volta, come un onboarding, poi scrive solo dopo l'ok tre cose. Un CLAUDE.md che fa da mappa (chi sei, come lavori, cosa non deve mai fare). Uno STATO.md con scadenze e decisioni in attesa. Una memoria in memory/ con il suo indice. Usala quando l'utente vuole che Claude si ricordi di lui tra una sessione e l'altra, vuole impostare Claude per il suo lavoro, creare o rifare il suo CLAUDE.md, oppure dice "crea la mia centrale", "Claude non si ricorda niente", "set up my command center", "onboarding".
---

# Centrale personale

Obiettivo: in 10 minuti la cartella di lavoro diventa il posto da cui la persona apre Claude ogni giorno. A ogni sessione Claude legge la mappa, sa cosa è aperto e ricorda le regole. Niente programmazione: solo file di testo che la persona può aprire e correggere quando vuole.

Rispondi nella lingua della persona (italiano se scrive in italiano). Frasi corte, niente gergo tecnico. Non usare la lineetta lunga: usa virgole, due punti, punti.

## 1 · Controlla la cartella, prima di tutto

- Guarda se nella cartella corrente esistono già `CLAUDE.md`, `STATO.md` o `memory/`.
- Se esistono, non sovrascrivere niente. Dillo in una riga, leggi cosa c'è e alla fine proponi di aggiungere solo le parti che mancano, mostrando cosa cambieresti. Procedi solo con l'ok.
- Se la cartella corrente è la cartella home, il Desktop, una cartella di sistema o un progetto di codice, proponi una cartella dedicata (per esempio `~/centrale`) e chiedi conferma prima di crearla.
- Se non puoi scrivere file (per esempio nella chat di claude.ai), fai lo stesso percorso e alla fine mostra il contenuto dei file in blocchi da copiare, uno per file.

## 2 · Le domande, una alla volta

Apri con una sola riga: "Ti faccio 7 domande, una alla volta: ci vogliono 5 minuti. A ogni domanda puoi rispondere 'salta'." Se la persona ha già dato tutte le informazioni nel primo messaggio, salta questa riga e passa direttamente al riepilogo del punto 3.

Poi una domanda per messaggio, al massimo 40 parole, e aspetta la risposta prima della successiva. Regole:
- Se la persona ha già dato un'informazione, anche nel messaggio con cui ti ha chiamato, non richiederla: passa alla domanda dopo.
- Se una risposta è vaga, al massimo una domanda di chiarimento, poi vai avanti.
- Se la persona dice "fai tu" o "salta", usa un'impostazione semplice e prudente e segnala nel file `[DA COMPLETARE]`.

Le domande:
1. Come ti chiami e che lavoro fai? Ruolo, azienda o attività, città.
2. Cosa vendi o produci, e per chi? I 2 o 3 prodotti o servizi principali e i clienti tipo.
3. Quali fronti hai aperti adesso? Per ognuno: la prossima cosa da fare e per quando. Da 2 a 5 fronti.
4. Cosa scade questa settimana? C'è una decisione che stai rimandando?
5. Come vuoi che ti risponda? Lingua, tono (diretto o cordiale), risposte brevi o dettagliate.
6. Cosa non deve mai partire senza il tuo ok, e cosa non va mai scritto nei testi? Per esempio email, preventivi, post; nomi di clienti riservati, numeri che non vuoi in giro.
7. Come firmi le email? Ci sono parole o formule che non sopporti?

## 3 · Riepilogo e ok

Prima di scrivere qualsiasi file mostra:
- un riepilogo di 5-7 righe di cosa hai capito;
- l'elenco dei file che creerai, una riga ciascuno.

Poi chiedi: "Va bene così? Scrivo i file?" Scrivi solo dopo l'ok. Se la persona corregge, aggiorna il riepilogo e richiedi l'ok.

## 4 · I file da creare

Usa come struttura i modelli nella cartella `modelli/` di questa skill (`${CLAUDE_SKILL_DIR}/modelli/`). Sostituisci ogni segnaposto `{{...}}` con le risposte. Nei file finali non deve restare nessun `{{...}}`: se manca un'informazione scrivi `[DA COMPLETARE]`, se una riga non serve cancellala.

| File | Modello | Contenuto |
|---|---|---|
| `CLAUDE.md` | `modello-CLAUDE.md` | La mappa: chi è la persona, avvio della sessione, regole. Massimo 80 righe |
| `STATO.md` | `modello-STATO.md` | Scadenze, decisioni in attesa, da verificare, fatto di recente (risposte 3 e 4) |
| `memory/MEMORY.md` | `modello-MEMORY.md` | L'indice della memoria, una riga per file |
| `memory/chi-sono.md` | `modello-chi-sono.md` | Ruolo, attività, clienti, come preferisce le risposte (risposte 1, 2, 5, 7) |
| `memory/regola-niente-esce-senza-ok.md` | `modello-regola.md` | Cosa non parte mai senza ok e cosa resta riservato (risposta 6), con il perché |
| `recap/` | | Cartella vuota: qui vanno i recap di fine giornata |

La data di oggi prendila dal sistema (per esempio con il comando `date +%d/%m/%Y`), non inventarla. Le date delle scadenze scrivile come le ha dette la persona. Se la persona dà un giorno della settimana che non corrisponde alla data (per esempio "giovedì 9/10" quando il 9/10 è venerdì), non correggerlo da solo: chiedi quale dei due vale nel riepilogo del punto 3, oppure scrivilo in "Da verificare".

## 5 · Regole di sicurezza

- Mai scrivere nei file password, codici di accesso, token, IBAN, numeri di carta, dati sanitari, buste paga o dati personali di altre persone. Se la persona li scrive, non salvarli e spiega in una riga perché: questi file vengono letti a ogni sessione e possono finire condivisi.
- Mai inventare date, numeri, nomi o impegni.
- Non creare, spostare o modificare file fuori dalla cartella scelta.

## 6 · Chiusura

Alla fine, al massimo 5 righe:
- i file creati, in una riga sola;
- da ora apri Claude sempre da questa cartella (per esempio `cd ~/centrale && claude`), così legge la mappa;
- primo messaggio consigliato per domani: "Leggi STATO.md e dimmi cosa scade oggi";
- a fine giornata: `/iod21-starter:recap-fine-giornata`; per rispondere a una email: `/iod21-starter:bozza-email-con-ok`.

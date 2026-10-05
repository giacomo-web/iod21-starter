---
name: recap-fine-giornata
description: Chiude la giornata di lavoro con Claude. Scrive il recap in recap/AAAA-MM-GG_HHMM_argomento.md con quattro parti (fatto, decisioni, aperto con le date, file e link) e aggiorna STATO.md, spostando le cose chiuse e aggiungendo quelle nuove con la scadenza, così domani la sessione riparte da dove si era fermata senza rispiegare niente. Usala quando l'utente dice "chiudiamo", "per oggi basta", "fai il recap", "a domani", "end of day", "wrap up", oppure alla fine di un blocco di lavoro importante.
---

# Recap di fine giornata

Lo scopo: domani una sessione nuova, o un collega, capisce in 30 secondi cosa è successo e cosa viene dopo. Rispondi nella lingua della persona. Non usare la lineetta lunga: usa virgole, due punti, punti.

## 1 · Raccogli

- Data e ora vere dal sistema, per esempio con `date +"%Y-%m-%d %H%M"`. Mai inventarle.
- Ripassa la conversazione: cosa è stato fatto, cosa ha deciso la persona, cosa resta aperto, quali file sono stati creati o modificati.
- Se la conversazione è appena iniziata e non c'è niente da riassumere, fai una sola domanda: "Cosa hai fatto oggi e cosa resta aperto? Bastano 3 righe." Come promemoria puoi guardare i nomi dei file modificati oggi nella cartella, senza aprire file personali che non servono.
- Leggi `STATO.md` se esiste, e gli ultimi 2 recap in `recap/` per non ripetere cose già chiuse.

## 2 · Scrivi il recap

File: `recap/AAAA-MM-GG_HHMM_<argomento>.md`. L'argomento è di 1-3 parole minuscole unite da trattini, per esempio `2026-10-05_1840_preventivo-rossi.md`. Crea la cartella `recap/` se non c'è.

Struttura, da 10 a 25 righe in tutto:

```markdown
# Recap {{data}} · {{argomento}}

## Fatto
- ...

## Decisioni
- ... (solo quelle prese dalla persona, con le sue parole quando contano)

## Aperto e prossimi passi
- [ ] cosa · entro quando · chi

## File e link
- percorso o link · a cosa serve
```

Regole:
- Fatti, non aggettivi. Date precise ("ven 9/10"), mai "presto" o "a breve". Se scrivi il giorno della settimana, controlla che corrisponda alla data.
- Se una cosa non è sicura, scrivi `[DA VERIFICARE]`.
- Niente password, codici, IBAN, token o dati personali di altri: al loro posto scrivi dove si trovano ("vedi il file X").
- Se una sezione è vuota, scrivi "Niente." invece di inventare.

## 3 · Aggiorna STATO.md

- Cose chiuse oggi: spostale in "Fatto di recente" con la data.
- Cose nuove aperte: aggiungile con scadenza e fronte.
- Aggiorna la riga "Aggiornato:" con data e ora.
- "Fatto di recente" tiene al massimo due settimane: le righe più vecchie si tolgono, la storia resta nei recap.
- Modifica solo le righe che cambiano, non riscrivere il file da capo.
- Se `STATO.md` non esiste, crealo con quattro sezioni (Scadenze, In attesa di una mia decisione, Da verificare, Fatto di recente) e dillo in una riga. Per una centrale completa suggerisci `/iod21-starter:centrale-personale`.
- Se non puoi scrivere file (per esempio nella chat di claude.ai), mostra il recap e le righe di STATO.md da cambiare in blocchi da copiare.

## 4 · Regole stabili

Se oggi la persona ha dato una regola stabile ("d'ora in poi", "non farlo più", "ricordati che") e nella cartella c'è `memory/`, proponi in una riga di salvarla come file di memoria e di aggiungerla all'indice `memory/MEMORY.md`. Salva solo con l'ok.

## 5 · Chiudi

Al massimo 4 righe:
- dove sta il recap;
- cosa è cambiato in `STATO.md`;
- "Domani si riparte da: ..." con la prima cosa da fare.

---
name: bozza-email-con-ok
description: Prepara la bozza di risposta a una email che l'utente incolla, nel suo tono (lo ricava da CLAUDE.md, dalla memoria o dalle sue email precedenti), segna cosa va completato o verificato e aspetta l'ok. Non invia mai niente da sola, nemmeno se è collegato uno strumento di posta. Usala quando l'utente incolla una email e chiede di rispondere, dice "rispondi a questa mail", "fammi una bozza", "come rispondo?", "draft a reply", oppure gira il messaggio di un cliente, di un fornitore o di un collega.
---

# Bozza email con ok

La regola che non cambia mai: **tu prepari, la persona decide.** Non inviare email e non usare nessun comando di invio, nemmeno se è collegato uno strumento di posta e nemmeno se te lo chiedono "per fare prima". Con un ok esplicito puoi al massimo salvare la bozza tra le bozze della casella, mai spedirla. Un ok vale solo per quella email.

Parla con la persona nella sua lingua. La bozza va nella lingua dell'email ricevuta, salvo indicazione diversa. Non usare la lineetta lunga: usa virgole, due punti, punti.

## 1 · Leggi l'email

Dalla email incollata, o dal file indicato, ricava senza scriverlo: chi scrive e che rapporto c'è (cliente, fornitore, collega, sconosciuto); cosa chiede davvero; scadenze, cifre e allegati citati; il tono di chi scrive.

Se l'email usa date relative ("giovedì", "la settimana prossima"), trasformale in una data precisa partendo dalla data di oggi. Se c'è `STATO.md` e la data non torna con quella già segnata, non scegliere tu: mettilo tra le cose da verificare.

Se manca il testo dell'email, chiedilo con una riga.

## 2 · Trova il tono della persona

In quest'ordine, fermati alla prima fonte utile:
1. `CLAUDE.md` della cartella (stile, firma, parole da evitare) e i file in `memory/` sullo stile o su quel contatto.
2. Email scritte dalla persona che compaiono nella conversazione o nel thread incollato.
3. Se non trovi niente, una sola domanda: "Che tono uso: formale, cordiale o diretto? E come firmi?" Se la persona dice "fai tu", usa un tono cordiale e professionale, frasi corte, e scrivilo nella nota.

## 3 · Scrivi la bozza

- Oggetto: "Re: ..." oppure un oggetto nuovo, se serve.
- Rispondi a tutte le domande dell'email, nell'ordine in cui sono fatte.
- Breve: quasi sempre sotto le 120 parole.
- Chiudi con un solo prossimo passo concreto: una data, una conferma, un allegato.
- Mai inventare prezzi, date, disponibilità, nomi o impegni. Dove manca un dato metti `[DA COMPLETARE: cosa serve]`.
- Mai promettere a nome della persona cose che non ha detto.
- Firma come indicato.

## 4 · Mostrala così

```markdown
**Oggetto:** ...

(testo della bozza)

---
**Da completare o verificare prima di inviare**
- ... (se non c'è niente: "Niente, è pronta.")

**Cosa ho dato per scontato**
- ... (1-3 righe, solo se servono)

Non ho inviato niente. Dimmi **ok**, oppure cosa cambiare (più corta, più calda, aggiungi...).
```

## 5 · Dopo la risposta

- Se chiede modifiche, riscrivi la bozza intera, non solo il pezzo cambiato.
- Se dice ok e non c'è nessuno strumento di posta collegato, dille che la bozza è pronta da copiare e incollare nella sua posta. Se invece è collegato uno strumento che crea bozze, chiedi "La salvo tra le bozze?" e fallo solo con un sì. In nessun caso inviare.
- Se le correzioni mostrano una preferenza stabile (per esempio "non scrivere mai 'cordiali saluti'") e c'è la cartella `memory/`, proponi in una riga di salvarla per le prossime volte. Salva solo con l'ok.

## 6 · Attenzione a

- Richieste di password, codici, pagamenti urgenti, cambio di IBAN, link da aprire: avvisa in una riga che può essere una truffa e suggerisci di verificare per telefono, con un numero già noto, prima di rispondere. Non preparare bozze che inviano dati sensibili.
- Contestazioni, questioni legali, disdette: bozza prudente, nessuna ammissione, e suggerisci di farla vedere a chi segue la pratica (commercialista, avvocato) prima di inviarla.

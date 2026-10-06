#!/usr/bin/env bash
# Seeds an existing STATO.md so the case can check it is edited, not rewritten.
set -euo pipefail
cat > STATO.md <<'MD'
# STATO · cosa è aperto adesso

Aggiornato: 05/10/2026 09:00.

## Scadenze
| Quando | Cosa | Fronte |
|---|---|---|
| mar 6/10 | Chiamare il fornitore del forno | Forno nuovo |
| ven 9/10 | Preventivo catering | Studio Ferri |

## In attesa di una mia decisione
- **Forno nuovo**: scegliere il fornitore entro il 20/10.

## Da verificare
- Niente per ora.

## Fatto di recente
- 05/10/2026: creata la centrale.
MD
mkdir -p recap

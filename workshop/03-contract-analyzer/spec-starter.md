# Contract Analyzer — Spec Starter

Använd denna som utgångspunkt i Kiro Spec-panelen.

---

## Beskrivning

Bygg ett CLI-verktyg och webb-API i Go som analyserar textdokument (kontrakt, SLA:er)
och extraherar nyckelvillkor, identifierar tvetydigheter och flaggar risker.

## Krav

### CLI

1. `analyze <file>` — Analyserar en textfil och skriver resultat till stdout (JSON)
2. `serve` — Startar en HTTP-server på port 8080

### API

3. POST `/analyze` — Tar en textfil (multipart/form-data) och returnerar analys som JSON
4. GET `/health` — Returnerar status
5. Statisk HTML-sida på `/` med filuppladdning och resultatvisning

### Analysregler

6. **Nyckelvillkor**: Extrahera meningar som innehåller "shall", "must", "agrees to", "is responsible for", "warrants"
7. **Tvetydigheter**: Flagga meningar med:
   - Vaga termer: "reasonable", "timely", "adequate", "appropriate", "best efforts"
   - Passiv form utan agent: "shall be provided" (av vem?)
   - Dubbel negation: "not unlikely", "not unreasonable"
   - Oklara pronomen: "they", "it" utan tydlig referent i kontraktskontext
8. **Risker**: Flagga:
   - Obegränsade åtaganden: "unlimited liability", "at any time", "for any reason"
   - Ensidiga ändringsklausuler: "may modify at its sole discretion"
   - Automatisk förnyelse utan uppsägningstid
   - Avsaknad av force majeure-klausul

### Output-format

9. JSON med struktur:
   ```json
   {
     "summary": { "total_clauses": 12, "ambiguities": 3, "risks": 2 },
     "clauses": [...],
     "ambiguities": [{ "text": "...", "reason": "...", "line": 42 }],
     "risks": [{ "text": "...", "severity": "high|medium|low", "reason": "..." }]
   }
   ```

## Begränsningar

- Ingen extern LLM — regelbaserad analys med regex och heuristik
- Ingen databas
- Go standardbibliotek + net/http (ingen extern router krävs)
- Tester med `go test`

## Icke-funktionella krav

- Ska kunna analysera ett 10-sidigt dokument på under 100ms
- Tydliga, förklarande "reason"-fält i output
- Minst 5 testfall med kända tvetydigheter

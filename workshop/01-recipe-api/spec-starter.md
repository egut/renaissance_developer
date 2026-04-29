# Recipe API — Spec Starter

Använd denna som utgångspunkt när du skapar din Kiro Spec.
Kopiera in texten nedan i Kiro Spec-panelen, eller använd den som inspiration.

---

## Beskrivning

Bygg en webbapplikation med ett REST API i Python (Flask) som låter användare söka
recept baserat på ingredienser. Receptdata lagras i YAML-filer som fungerar som en
enkel, läsbar "databas". En webbsida låter användaren välja ingredienser och se
matchande recept med näringsinformation och allergenvarningar.

## Datamodell (YAML)

Recepten lagras i `data/recipes.yaml`. Varje recept har följande struktur:

```yaml
- name: Wokad kyckling med ris
  description: En snabb och smakrik wok med kyckling och vitlök
  servings: 2
  prep_time_minutes: 10
  cook_time_minutes: 15
  ingredients:
    - name: kycklingbröst
      amount: 300
      unit: g
    - name: ris
      amount: 200
      unit: g
    - name: vitlök
      amount: 3
      unit: klyftor
    - name: sojasås
      amount: 2
      unit: msk
  steps:
    - Skär kycklingbröstet i tunna strimlor
    - Koka riset enligt förpackningens anvisningar
    - Hetta upp olja i en wok på hög värme
    - Wooka kycklingen tills den är gyllene, ca 5 minuter
    - Tillsätt hackad vitlök och sojasås, stek 1 minut
    - Servera kycklingen över riset
  nutrition_per_serving:
    calories: 450
    protein_g: 38
    carbs_g: 52
    fat_g: 8
  allergens:
    - soy
```

Ingrediensreferensdata (kända ingredienser och deras kategorier) lagras i
`data/ingredients.yaml`:

```yaml
- name: kycklingbröst
  category: protein
  common_allergens: []
- name: ris
  category: grain
  common_allergens: []
- name: vitlök
  category: vegetable
  common_allergens: []
- name: sojasås
  category: condiment
  common_allergens: [soy]
- name: mjölk
  category: dairy
  common_allergens: [lactose]
- name: vetemjöl
  category: grain
  common_allergens: [gluten]
```

## API-krav

1. `GET /` — Serverar webbsidan (HTML/CSS/JS)
2. `GET /api/recipes` — Returnerar alla recept
3. `POST /api/recipes/search` — Tar en JSON-body med ingredienser, returnerar matchande recept
   - Request: `{"ingredients": ["kyckling", "ris", "vitlök"]}`
   - Matchning: ett recept matchar om det kan lagas med de angivna ingredienserna
     (alla receptets ingredienser finns i användarens lista)
   - Response: lista med matchande recept, sorterade efter antal matchande ingredienser (bäst match först)
4. `GET /api/recipes/<name>` — Returnerar ett specifikt recept
5. `GET /api/ingredients` — Returnerar alla kända ingredienser (för autocomplete i webben)
6. `GET /api/health` — Returnerar `{"status": "ok"}`

## Felhantering

7. `POST /api/recipes/search` med tom ingredienslista → HTTP 400 med `{"error": "At least one ingredient is required"}`
8. `POST /api/recipes/search` med okänd ingrediens → HTTP 422 med `{"error": "Unknown ingredient: xyz", "suggestions": [...]}`
   - Suggestions: ingredienser som liknar den okända (enkel fuzzy match)

## Webbsida

9. Sidan ska ha:
   - En ingrediensväljare (textfält med autocomplete från `/api/ingredients`)
   - En "Sök recept"-knapp
   - Resultatvy som visar matchande recept med:
     - Namn och beskrivning
     - Tillagningstid
     - Ingredienslista med mängder
     - Steg-för-steg-instruktioner
     - Näringsinformation
     - Allergenvarningar (visuellt markerade)
10. Sidan ska fungera utan JavaScript-ramverk (vanilla JS)
11. Sidan ska vara responsiv och användbar på mobil

## Begränsningar

- Ingen databas — YAML-filer som datalager
- Ingen extern API-nyckel
- Python 3.10+ med Flask
- PyYAML för YAML-parsning
- Tester med pytest

## Språkregler

- Hela receptet på **svenska**: namn, beskrivning, ingredienser, steg
- Taggar (allergens, category) på **engelska** (för maskinläsbarhet)
- Enheter (unit) på **svenska** (g, dl, msk, tsk, st, klyftor)
- Felmeddelanden från API:t på **engelska**
- Webbsidans UI-text på **svenska**

## Icke-funktionella krav

- Svarstid under 200ms
- YAML-filerna ska vara enkla att redigera för hand (det är hela poängen)
- Koden ska ha docstrings och typannotationer
- Minst 10 recept i startdatan

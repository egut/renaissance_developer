# Koncept 1: The Recipe API 🍳

**Språk:** Python · **Tid:** ~45 min · **Nivå:** Alla nivåer
**Inga externa beroenden** — ingen databas, inga API-nycklar.

## Vad vi bygger

En webbapplikation med ett REST API som låter användare söka recept baserat på
ingredienser. Receptdata lagras i YAML-filer — en enkel, läsbar "databas" som
vem som helst kan redigera. En webbsida låter dig välja ingredienser och se
matchande recept med näringsinformation och allergenvarningar.

## Koppling till de fem pelarna

| Pelare               | Hur den visas i labben                                                                        |
| -------------------- | --------------------------------------------------------------------------------------------- |
| **Curiosity**        | Du utforskar en ny domän (nutrition) — du behöver inte kunna den, AI:n hjälper dig            |
| **Systems Thinking** | Ingrediensvalidering → receptmatchning → näringsberäkning. Ändra en del, hela kedjan påverkas |
| **Communication**    | Du skriver en Kiro Spec _innan_ en rad kod genereras. Precision eliminerar tvetydighet        |
| **Ownership**        | AI genererar koden, men du granskar och godkänner. "You build it, you run it"                 |
| **Polymathy**        | Du agerar domänexpert, API-arkitekt och testare — samtidigt                                   |

## Mekanismer vi använder

1. **Spec-driven development** — Kiro Spec med krav → design → tasks
2. **Automated testing via hooks** — Build → Test → Fix-loop
3. **Human review** — Du granskar innan "deploy"

## Din AI-stab

Under workshopen orkestrerar du en stab av specialiserade agenter — även
om det ser ut som ett enda verktyg. Tänk på det som roller:

- **Arkitekten** — Specen. Du definierar krav och design. Arkitekten ser helheten.
- **Byggaren** — Task-agenten. Implementerar en uppgift i taget, baserat på arkitektens ritning.
- **Kritikern** — Test-hooken. Kör tester automatiskt och rapporterar fel. Ingen kod passerar utan godkännande.
- **Granskaren** — preToolUse-hooken (Bonus C). Granskar kvaliteten innan kod skrivs.
- **Du** — Chefen. Du delegerar arbetet, men aldrig ansvaret.

---

## Förberedelser

### 1. Installera Python

<details>
<summary><strong>🍎 macOS</strong></summary>

```bash
# Alternativ A: Homebrew (rekommenderat)
brew install python@3.12

# Alternativ B: Ladda ner från python.org
# https://www.python.org/downloads/macos/

# Verifiera
python3 --version
```

macOS har en förinstallerad Python men den är ofta gammal. Använd `python3` (inte `python`).

</details>

<details>
<summary><strong>🪟 Windows</strong></summary>

```powershell
# Alternativ A: winget (rekommenderat)
winget install Python.Python.3.12

# Alternativ B: Ladda ner från python.org
# https://www.python.org/downloads/windows/
# VIKTIGT: Kryssa i "Add Python to PATH" under installationen!

# Verifiera (i ny terminal)
python --version
```

På Windows heter kommandot `python` (inte `python3`).

</details>

<details>
<summary><strong>🐧 Linux</strong></summary>

```bash
# Ubuntu/Debian
sudo apt update
sudo apt install python3 python3-pip python3-venv

# Fedora
sudo dnf install python3 python3-pip

# Arch
sudo pacman -S python python-pip

# Verifiera
python3 --version
```

</details>

### 2. Skapa virtuell miljö

En virtuell miljö isolerar projektets beroenden från systemets Python.

```bash
# Skapa (kör i projektmappen)
python3 -m venv .venv

# Aktivera
# macOS/Linux:
source .venv/bin/activate

# Windows (PowerShell):
.venv\Scripts\Activate.ps1

# Windows (CMD):
.venv\Scripts\activate.bat
```

Du vet att det fungerar när terminalen visar `(.venv)` i prompten.

### 3. Installera beroenden

```bash
pip install -r requirements.txt
```

### 4. Installera Kiro

1. Gå till [kiro.dev](https://kiro.dev)
2. Ladda ner och installera för ditt OS
3. Logga in med ditt konto (vi tillhandahåller credits under workshopen)

---

## Hitta rätt i Kiro

Innan vi börjar — här är var du hittar de viktigaste funktionerna:

### Filträdet (Explorer)

I vänsterpanelen ser du ditt projekt. Under `.kiro/`-mappen hittar du:

```text
.kiro/
├── specs/           ← Dina specs (krav → design → tasks)
├── steering/        ← Steering-filer (regler och riktlinjer)
├── hooks/           ← Agent hooks (automatiserade triggers)
└── settings/        ← Inställningar (t.ex. MCP-konfiguration)
```

Dessa mappar skapas automatiskt när du använder funktionerna.

### Spec-panelen

- Klicka på **Kiro-ikonen** i vänstra sidofältet (eller Command Palette → "Kiro: Open Specs")
- Här skapar du nya specs och ser befintliga
- En spec har tre faser: **Requirements** → **Design** → **Tasks**
- Du godkänner varje fas innan Kiro går vidare

### Chatten

- Öppna med `Cmd+L` (macOS) / `Ctrl+L` (Windows/Linux)
- Här pratar du med Kiro — ställ frågor, be om ändringar, eller be den förklara kod
- Använd `#` för att referera till filer: `#app.py` drar in filen som kontext

### Hooks

- Command Palette → "Open Kiro Hook UI"
- Eller be Kiro i chatten: _"Skapa en hook som kör pytest när Python-filer ändras"_
- Hooks sparas i `.kiro/hooks/` som JSON-filer

### Steering

- Skapa filer i `.kiro/steering/` (markdown-format)
- Dessa ger Kiro riktlinjer som alltid gäller — t.ex. kodstandard, språkval, projektregler
- Mer om detta i bonusstegen nedan

---

## Workshop-flöde (steg för steg)

### Steg 1: Öppna projektet i Kiro (2 min)

```bash
# Klona eller kopiera denna mapp
# Öppna i Kiro:
kiro workshop/01-recipe-api
```

Skapa och aktivera din virtuella miljö (se Förberedelser ovan).

### Steg 2: Vibe Coding vs. Spec-Driven (5 min)

Innan vi skriver en spec — låt oss se vad som händer utan en.

Öppna chatten och skriv:

> _"Bygg en receptapp i Python med Flask"_

Resultatet kommer troligtvis att se bra ut — kanske till och med fungera.
Vibe coding har blivit riktigt bra. Men ställ dig dessa frågor:

- Vilken datamodell valde den? Var det den du ville ha?
- Hur hanteras allergener? Definierade du det, eller gissade AI:n?
- Finns det tester? Vilka edge cases täcks?
- Kan du förklara _varför_ koden ser ut som den gör?
- Om du behöver ändra något om tre månader — vet du var du ska börja?

Koden _kanske_ fungerar. Men du har ingen kontroll. Ingen spec att
verifiera mot. Inga tester som bevisar att det är rätt. Ingen som
definierade vad "rätt" ens betyder. Det är **verification debt**.

Ångra ändringarna (Ctrl+Z / Cmd+Z) eller stäng sessionen. Nu gör vi
det med kontroll.

### Steg 3: Skapa en Spec (10 min)

Öppna Spec-panelen (Kiro-ikonen i sidofältet) och skapa en ny spec.

Kopiera in innehållet från `spec-starter.md` — eller skriv din egen.

Det här är **Communication**-pelaren i praktiken. Du formulerar krav så tydligt
att misstolkningar elimineras. Iterera på specen, inte på koden.

Kiro genererar tre faser:

- **Requirements** — Vad systemet ska göra
- **Design** — Hur det ska fungera (API-kontrakt, datamodell)
- **Tasks** — Steg-för-steg implementation

Granska varje fas. Justera. Det här är din spec, inte AI:ns.

### Steg 4: Låt agenterna implementera (15 min)

Kör tasks en i taget. Observera hur **Byggaren** (task-agenten):

- Genererar kod baserat på specen
- Skapar filer i rätt struktur
- Följer designen du godkände

**Ownership**: Läs koden som genereras. Förstår du den? Om inte — fråga Kiro i chatten.

### Steg 5: Sätt upp hooks — Kritikern (5 min)

Skapa en hook som kör tester automatiskt när filer sparas.
Det här är **Kritikern** i din AI-stab — den granskar allt automatiskt.

I Kiro: Command Palette → "Open Kiro Hook UI"

Eller be Kiro i chatten:

> _"Skapa en hook som kör pytest när Python-filer ändras"_

Det här är **Systematic Thinking** — en automatisk feedback-loop: Build → Test → Fix.

### Steg 6: Testa och granska (10 min)

```bash
# Kör appen
python3 app.py

# Öppna i webbläsaren
# http://localhost:5000
```

Testa i webbläsaren:

- Sök på "kyckling, ris, vitlök" — får du recept?
- Sök på en tom lista — får du ett felmeddelande?
- Sök på "xyzmat" — får du förslag på liknande ingredienser?
- Öppna `data/recipes.yaml`, lägg till ett eget recept, starta om, och se att det dyker upp

**Ownership**: Är du nöjd med resultatet? Skulle du sätta ditt namn på den här koden?

### Steg 7: Reflektion (3 min)

- Vilken pelare var svårast att tillämpa?
- Var behövde du korrigera AI:n?
- Jämför med steg 2 (vibe coding) — vilken skillnad gjorde specen?
- **Verification Debt**: AI:n genererade koden snabbt — men hur lång tid
  tog det att _förstå_ den? Den tiden är verification debt. Vogels:
  "When you write code yourself, understanding comes with creation.
  When the machine writes it, you must rebuild understanding during review."

---

## Kom du snabbt till steg 7? Här kommer mer.

Följande bonussteg visar hur du använder Kiro för att förstärka ägarskap,
kvalitet och funktionalitet. Gör dem i valfri ordning.

---

### Bonus A: Låt Kiro generera recept åt dig

Öppna chatten och be Kiro skapa nya recept i rätt YAML-format:

> _"Lägg till 5 vegetariska recept i data/recipes.yaml. Följ exakt samma
> YAML-struktur som de befintliga recepten. Hela receptet ska vara på
> svenska (namn, ingredienser, steg). Taggar (allergens, category) på engelska."_

Eller ge Kiro ett specifikt recept att strukturera:

> _"Jag vill lägga till det här receptet: Pasta carbonara med pancetta,
> ägg, parmesan och svartpeppar. Lägg till det i data/recipes.yaml med
> näringsinformation och allergener. Receptet ska vara helt på svenska."_

Kiro kommer att:

1. Läsa den befintliga YAML-strukturen
2. Generera receptet i exakt samma format
3. Beräkna rimlig näringsinformation
4. Tagga allergener (egg, dairy, gluten)

Granska resultatet! Stämmer näringsvärden? Saknas allergener? Det här är
**Ownership** — AI:n genererar, du verifierar.

---

### Bonus B: Förstärk ägarskapet med tester

Be Kiro skriva fler tester:

> _"Skriv tester för alla edge cases i recipe_service.py. Testa särskilt:
> fuzzy matching, tomma YAML-filer, recept utan allergener, och att
> näringsvärden alltid är positiva tal."_

Kör testerna:

```bash
pytest -v
```

Skapa en hook som kör testerna automatiskt:

> _"Skapa en hook som kör pytest varje gång en .py-fil sparas"_

Nu har du en Build → Test → Fix-loop. Varje ändring valideras automatiskt.
Det här är Vogels mekanism nummer 5: "Automated testing in CI/CD."

---

### Bonus C: Skapa en granskningsagent med Hooks

Du kan skapa en hook som ber Kiro granska kod innan den skrivs — en
"Critic"-agent som fångar problem innan de når koden.

I chatten:

> _"Skapa en preToolUse hook för write-operationer som granskar att koden
> följer våra riktlinjer: typannotationer, docstrings, och inga hårdkodade
> värden."_

Det skapar en hook i `.kiro/hooks/` som triggas varje gång Kiro ska skriva
en fil. Hooken ber agenten verifiera kvaliteten innan ändringen görs.

Du kan också skapa en postToolUse hook som granskar efter:

> _"Skapa en postToolUse hook för write-operationer som kör pylint på
> ändrade filer och rapporterar problem."_

Det här är **Andon Cord-principen** — vem som helst (inklusive en agent)
kan stoppa bandet om kvaliteten inte håller.

---

### Bonus D: Steering — Ge Kiro permanenta riktlinjer

Steering-filer ger Kiro regler som alltid gäller i projektet. Skapa en fil
i `.kiro/steering/`:

> _"Skapa en steering-fil som säger att all kod ska ha typannotationer,
> docstrings på engelska, och att YAML-filer aldrig får ha duplicerade
> receptnamn."_

Kiro skapar filen i `.kiro/steering/` (t.ex. `code-standards.md`). Från och
med nu följer Kiro dessa regler i alla interaktioner — utan att du behöver
upprepa dem.

Exempel på steering-fil:

```markdown
---
inclusion: always
---

# Projektriktlinjer

- All Python-kod ska ha typannotationer
- Docstrings på engelska, användartext på svenska
- YAML-filer: inga duplicerade receptnamn
- Allergener ska alltid vara på engelska (gluten, dairy, soy, etc.)
- Allt annat i recepten ska vara på svenska (namn, ingredienser, steg)
```

Du kan också skapa steering som bara aktiveras för vissa filer:

```markdown
---
inclusion: fileMatch
fileMatchPattern: "data/*.yaml"
---

# YAML-dataregler

- Varje recept måste ha: name, ingredients, steps, nutrition_per_serving, allergens
- Näringsvärden ska vara rimliga (kalorier 100-2000 per portion)
- Ingredienser ska finnas i ingredients.yaml
```

---

### Bonus E: Förbättra appen med Kiro

Här är idéer att testa — be Kiro i chatten:

**Filtrera på allergener:**

> _"Lägg till ett filter i webbsidan så användaren kan utesluta allergener
> (t.ex. gluten, dairy). Uppdatera API:t med en allergen_exclude-parameter."_

**Favoritrecept:**

> _"Lägg till möjlighet att markera recept som favoriter. Spara favoriter
> i en ny YAML-fil data/favorites.yaml."_

**Slumpa ett recept:**

> _"Lägg till en 'Surprise me'-knapp som returnerar ett slumpmässigt recept
> baserat på de valda ingredienserna."_

**Bättre design:**

> _"Förbättra webbsidans design. Gör den mer visuellt tilltalande med
> färgkodade allergenetiketter och en tydligare layout för receptkorten."_

**Importera recept från text:**

> _"Lägg till ett formulär där användaren kan klistra in ett recept i
> fritext. Kiro ska parsa texten och lägga till receptet i recipes.yaml
> i rätt format."_

Varje förbättring visar **Polymathy** — du tänker som designer, backend-
utvecklare och produktägare samtidigt.

---

### Bonus F: Code Review med Kiro

Använd chatten som code review-verktyg:

> _"Granska app.py. Finns det säkerhetsproblem? Saknas felhantering?
> Följer koden Python best practices?"_

Eller mer specifikt:

> _"Granska recipe_service.py ur ett Systems Thinking-perspektiv. Vad
> händer om recipes.yaml är korrupt? Vad händer om filen saknas? Finns
> det single points of failure?"_

Det här är Vogels mekanism nummer 2: "Human code review" — fast med AI
som granskningspartner. Du äger fortfarande beslutet.

---

## Filstruktur (mål)

```text
01-recipe-api/
├── README.md              # Denna fil
├── requirements.txt       # Python-beroenden
├── spec-starter.md        # Utgångspunkt för din Kiro Spec
├── data/
│   ├── recipes.yaml       # Receptdatabas — redigera för hand!
│   └── ingredients.yaml   # Kända ingredienser med allergener
├── app.py                 # Flask-app (genereras av Kiro)
├── recipe_service.py      # Sök- och matchningslogik (genereras av Kiro)
├── tests/
│   └── test_recipes.py    # (genereras av Kiro)
├── static/
│   └── index.html         # Webbsida med ingrediensväljare (genereras av Kiro)
└── .kiro/                 # (skapas av Kiro)
    ├── specs/             # Din spec
    ├── steering/          # Riktlinjer
    └── hooks/             # Automatiserade triggers
```

## Tips

- **Läs koden** som Kiro genererar. Ownership betyder att du förstår varje rad.
- **Ändra specen** om du vill ha ett annat resultat — iterera på kraven, inte koden.
- **Fråga Kiro** om du inte förstår något. Curiosity är pelare nummer ett.
- **Använd `#filnamn`** i chatten för att ge Kiro kontext om specifika filer.
- **Steering-filer** sparar dig från att upprepa samma instruktioner. Skriv det en gång, det gäller alltid.

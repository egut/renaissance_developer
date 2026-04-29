# Koncept 3: The Contract Analyzer 📄

**Språk:** Go · **Tid:** ~90–120 min · **Nivå:** Avancerad
**Inga externa beroenden** — ingen databas, inga AI-API-nycklar.

## Vad du bygger

Ett CLI-verktyg och webb-API som tar en textfil (t.ex. ett hyreskontrakt eller
SLA-dokument), extraherar nyckelvillkor, identifierar tvetydigheter och flaggar
risker. Analysen sker med regelbaserad textanalys (mönstermatchning, heuristik).

Det här konceptet skiljer sig från de andra: vi börjar med **Steering** innan
vi skriver en enda rad kod. Vi sätter upp linting och säkerhetskontroller
med **Trunk**. Vi konfigurerar **MCP** (Model Context Protocol) för att
ge Kiro tillgång till filer utanför projektet. Och vi visar hur alla dessa
delar samverkar i ett system.

## Koppling till de fem pelarna

| Pelare               | Hur den visas                                                                                       |
| -------------------- | --------------------------------------------------------------------------------------------------- |
| **Communication**    | Hela konceptet. "Panda eats, shoots and leaves" — verktyget hittar tvetydigheter i riktiga dokument |
| **Ownership**        | Verktyget ger förslag, människan bedömer. Koppling till Toeslagenaffaire och Robodebt               |
| **Systems Thinking** | En flaggad klausul kan ha kaskadeffekter — ändra en och hela riskprofilen förändras                 |
| **Curiosity**        | Juridik som ny domän. Yerkes-Dodson: "discomfort is a signal you're growing"                        |
| **Polymathy**        | Utvecklare + jurist + riskanalytiker i samma person                                                 |

## Mekanismer

1. **Steering-first** — Riktlinjer innan kod
2. **Spec-driven development** — Vad är en "risk"? Definiera innan kodning
3. **Linting & security** — Trunk för automatisk kodkvalitet
4. **MCP** — Externa verktyg integrerade i Kiro
5. **Automated testing** — Kända tvetydigheter som testfall

## Din AI-stab

Du orkestrerar en stab av specialiserade agenter:

- **Regelverket** — Steering. Dina riktlinjer som alla agenter måste följa.
- **Arkitekten** — Specen. Du definierar vad "risk" och "tvetydighet" betyder.
- **Byggaren** — Task-agenten. Implementerar analyzer, CLI och webbsida.
- **Kritikern** — Test-hooken + Trunk. Kör tester och linting automatiskt.
- **Granskaren** — preToolUse-hooken (Bonus G). Kontrollerar false positives.
- **Bibliotekarien** — MCP. Ger staben tillgång till filer utanför projektet.
- **Du** — Chefen. Du delegerar arbetet, men aldrig ansvaret.

---

## Förberedelser

### 1. Installera Go

<details>
<summary><strong>🍎 macOS</strong></summary>

```bash
# Homebrew (rekommenderat)
brew install go

# Eller ladda ner från https://go.dev/dl/

# Verifiera
go version
```

</details>

<details>
<summary><strong>🪟 Windows</strong></summary>

```powershell
# winget
winget install GoLang.Go

# Eller ladda ner .msi från https://go.dev/dl/

# Verifiera (ny terminal)
go version
```

</details>

<details>
<summary><strong>🐧 Linux</strong></summary>

```bash
# Ubuntu/Debian
sudo apt update
sudo apt install golang-go

# Eller ladda ner senaste versionen:
wget https://go.dev/dl/go1.23.4.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.23.4.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin

# Lägg till i ~/.bashrc eller ~/.zshrc:
# export PATH=$PATH:/usr/local/go/bin

# Verifiera
go version
```

</details>

### 2. Installera Trunk (linting & security)

Trunk är ett verktyg som samlar linters, formatters och säkerhetskontroller
under ett paraply. Det finns två sätt att använda det:

**Alternativ A: Trunk-extensionen i Kiro (rekommenderat)**

Det enklaste sättet. Installera Trunk-extensionen direkt i Kiro:

1. Öppna Extensions-panelen (`Cmd+Shift+X` / `Ctrl+Shift+X`)
2. Sök på "Trunk"
3. Installera extensionen

Trunk blir då tillgängligt i Kiros inbyggda terminal och integreras
med editorn (problem visas direkt i koden). Du behöver inte installera
något på systemet.

**Alternativ B: Installera Trunk på systemet**

Om du föredrar att ha Trunk globalt tillgängligt utanför Kiro:

<details>
<summary><strong>🍎 macOS</strong></summary>

```bash
brew install trunk-io
```

</details>

<details>
<summary><strong>🪟 Windows</strong></summary>

```powershell
Invoke-WebRequest -Uri https://get.trunk.io -UseBasicParsing | Invoke-Expression
```

</details>

<details>
<summary><strong>🐧 Linux</strong></summary>

```bash
curl https://get.trunk.io -fsSL | bash
```

</details>

Båda alternativen fungerar i Kiro. Extensionen är lättare att komma igång
med, systeminstallationen ger dig Trunk överallt.

Trunk kräver att projektet ligger i ett git-repo. Om du klonade från
GitHub är du redan redo. Annars, initiera git först:

```bash
cd workshop/03-contract-analyzer
git init
git add .
git commit -m "initial commit"
```

Initiera sedan Trunk:

```bash
trunk init
```

Trunk upptäcker automatiskt att det är ett Go-projekt och aktiverar
relevanta linters (golangci-lint, gofmt, gosec m.fl.).

### 3. Installera Kiro

1. Gå till [kiro.dev](https://kiro.dev)
2. Ladda ner och installera för ditt OS
3. Logga in med ditt konto

### 4. Git (krävs)

Git krävs för Trunk (linting/security). Om du klonade repot från GitHub
har du redan ett git-repo. Annars behöver du initiera ett (se steg under
Trunk ovan).

Se installationsguide i [workshop/README.md](../README.md#git-valfritt-för-koncept-1-krävs-för-koncept-2-och-3).

### 5. Initiera Go-modulen

```bash
cd workshop/03-contract-analyzer
go mod tidy
```

---

## Hitta rätt i Kiro

### Filträdet (Explorer)

```text
.kiro/
├── specs/           ← Dina specs (krav → design → tasks)
├── steering/        ← Steering-filer (regler och riktlinjer)
├── hooks/           ← Agent hooks (automatiserade triggers)
└── settings/
    └── mcp.json     ← MCP-serverkonfiguration
```

### Spec-panelen

- Klicka på **Kiro-ikonen** i vänstra sidofältet
- En spec har tre faser: **Requirements** → **Design** → **Tasks**

### Chatten

- `Cmd+L` / `Ctrl+L` för att öppna
- `#filnamn` för att referera till filer
- `#Problems` för att visa fel i editorn
- `#Terminal` för att ge Kiro terminaloutput

### Be Kiro om hjälp

Några exempel på frågor du kan ställa:

> *"Jag har aldrig skrivit Go förut. Kan du förklara vad `func (a *Analyzer) Analyze(text string) Result` betyder?"\*

> _"Vad är skillnaden mellan en slice och en array i Go?"_

> _"Jag får 'undefined: regexp.MustCompile' — vad saknas?"_

> _"Förklara vad MCP är och varför vi använder det i det här projektet."_

### Flera chattsessioner

Du kan ha flera chattsessioner igång samtidigt:

- **Session 1: Implementation** — Jobba med spec och tasks
- **Session 2: Frågor och lärande** — Ställ frågor om Go, juridik, regex
- **Session 3: Review** — Be Kiro granska koden i en separat session

**Varför flera sessioner?** Varje session har sin egen kontext. En
fråga om Go-syntax mitt i en implementation kan "distrahera" agenten.
En separat session håller implementationen fokuserad.

**Varför ibland bara en?** Om frågan handlar om just den kod som
genereras behöver agenten se kontexten — fråga i samma session.

---

## Workshop-flöde (steg för steg)

Det här konceptet börjar annorlunda: vi sätter upp **Steering** först.
Det är som att skriva spelreglerna innan matchen börjar.

### Steg 1: Öppna projektet i Kiro (2 min)

```bash
kiro workshop/03-contract-analyzer
```

### Steg 2: Skapa Steering — reglerna först (10 min)

Innan vi skriver en spec eller en rad kod skapar vi riktlinjer — **Regelverket**
i din AI-stab. Det är som att skriva spelreglerna innan matchen börjar.

Men först, om du inte gjort Koncept 1: testa vad som händer utan regler.
Öppna chatten och skriv:

> _"Bygg en contract analyzer i Go"_

Resultatet ser troligtvis bra ut — kanske till och med imponerande.
Vibe coding har blivit riktigt bra. Men fråga dig:

- Har koden godoc-kommentarer? Table-driven tests?
- Är regex kompilerade som paketvariabler eller inuti funktioner?
- Vilka tvetydigheter fångas? Definierade du det, eller gissade AI:n?
- Kan du förklara varför en viss mening flaggas som "high risk"?

Koden _kanske_ fungerar. Men du har ingen kontroll. Ingen steering som
definierar kvalitetskrav. Ingen spec som definierar vad "risk" betyder.
Det är **verification debt** — och det växer med varje rad du inte förstår.

Ångra. Nu gör vi det med steering först.

> _"Skapa en steering-fil för det här projektet med följande regler:_
>
> - _All Go-kod ska följa idiomatic Go (gofmt, golint)_
> - _Alla publika funktioner ska ha godoc-kommentarer_
> - _Felhantering: returnera alltid error, använd aldrig panic_
> - _Regex-mönster ska vara kompilerade som paketvariabler (inte i funktioner)_
> - _Testfiler ska ha table-driven tests_
> - _Analysresultat ska alltid inkludera radnummer och förklaring_
> - _Säkerhet: ingen user input ska användas direkt i regex utan sanitering"_

Kiro skapar filen i `.kiro/steering/`. Öppna den och granska — stämmer
reglerna? Vill du lägga till något?

Det här är **Ownership** från start: du definierar kvalitetskraven innan
en enda rad kod existerar.

### Steg 3: Skapa en Spec (10 min)

Nu öppnar du Spec-panelen och skapar en spec. Kopiera in från `spec-starter.md`.

Notera hur specen tvingar dig att definiera:

- Vad är en "tvetydighet"? (Exakta mönster)
- Vad är en "risk"? (Severity-nivåer)
- Vad är en "klausul"? (Nyckelord som identifierar dem)

Utan dessa definitioner gissar AI:n. Med dem — precision.

### Steg 4: Låt agenterna implementera (20 min)

Kör tasks en i taget. Observera hur Kiro följer dina steering-regler:

- Godoc-kommentarer på publika funktioner
- Table-driven tests
- Kompilerade regex som paketvariabler

Om Kiro bryter mot en regel — påpeka det! Det är din steering, dina regler.

### Steg 5: Sätt upp Trunk och hooks (10 min)

Kör Trunk manuellt först:

```bash
trunk check
```

Se vilka problem som hittas. Skapa sedan en hook:

> _"Skapa en hook som kör 'trunk check' varje gång en .go-fil sparas"_

Nu körs linting och säkerhetskontroller automatiskt vid varje sparning.

Skapa även en test-hook:

> _"Skapa en hook som kör 'go test ./...' varje gång en .go-fil sparas"_

### Steg 6: Konfigurera MCP — Ge Kiro tillgång till externa filer (10 min)

MCP (Model Context Protocol) låter dig koppla externa verktyg till Kiro.
Utan MCP kan Kiro bara se filer i ditt projekt. Med MCP kan du ge Kiro
tillgång till filer, API:er och andra resurser utanför projektet.

Vi lägger till **Filesystem MCP-servern** — den ger Kiro möjlighet att
läsa kontrakt som ligger i en annan mapp utanför projektet.

Skapa först en mapp för externa kontrakt:

```bash
# macOS/Linux
mkdir -p /tmp/contracts

# Windows (PowerShell)
mkdir $env:TEMP\contracts
```

Skapa filen `.kiro/settings/mcp.json` och anpassa sökvägen för ditt OS:

```json
{
  "mcpServers": {
    "filesystem": {
      "command": "npx",
      "args": [
        "-y",
        "@modelcontextprotocol/server-filesystem",
        "/tmp/contracts"
      ],
      "disabled": false,
      "autoApprove": []
    }
  }
}
```

På **Windows**, byt sökvägen till t.ex. `"C:\\Users\\dittnamn\\contracts"`
eller `"C:\\Temp\\contracts"`. Notera dubbla backslash i JSON.

Vad händer här:

- `"filesystem"` — namnet du ger servern (valfritt, men beskrivande)
- `"command": "npx"` — kör via Node.js (npx ingår med Node)
- `@modelcontextprotocol/server-filesystem` — npm-paketet som ger filåtkomst
- Sista argumentet — mappen Kiro får tillgång till (anpassa för ditt OS)
- `"autoApprove": []` — tom = Kiro frågar dig innan den använder verktyget

Spara filen. Kiro laddar om MCP-servern automatiskt.

Testa genom att kopiera ett exempeldokument och be Kiro analysera det:

```bash
# macOS/Linux
cp sample-contracts/lease-example.txt /tmp/contracts/

# Windows (PowerShell)
Copy-Item sample-contracts\lease-example.txt $env:TEMP\contracts\
```

> _"Läs filen lease-example.txt via filesystem-MCP:n
> och analysera den med vår contract analyzer."_

**Varför MCP?** Det visar hur Kiro kan utökas med externa verktyg.
I verkligheten kan MCP koppla Kiro till databaser, API:er, molntjänster
— allt som har en MCP-server. Det är **Polymathy** i praktiken: fler
verktyg i verktygslådan.

**Ownership:** `autoApprove` är tom — du delegerar förmågan, inte
ansvaret. Kiro frågar alltid innan den läser eller skriver via MCP.

Du hittar MCP-konfigurationen i filträdet under `.kiro/settings/mcp.json`.

### Steg 7: Testa med exempeldokument (10 min)

```bash
# CLI
go run main.go analyze sample-contracts/lease-example.txt

# Eller starta servern
go run main.go serve
# Öppna http://localhost:8080
```

Testa med de medföljande exempeldokumenten:

- `lease-example.txt` — Hyreskontrakt med medvetna tvetydigheter
- `sla-example.txt` — SLA med vaga termer

Granska resultatet:

- Hittade verktyget alla tvetydigheter du kan se?
- Är severity-nivåerna rimliga?
- Saknas det mönster som borde fångas?

### Steg 8: Reflektion (3 min)

- Hur hjälpte steering att hålla kodkvaliteten? Jämför med vibe coding i steg 2.
- Var specen tillräckligt precis för att definiera "risk"?
- **Verification Debt**: AI:n genererade regex-mönster och analyslogik snabbt.
  Men förstod du varje mönster? Kunde du förklara varför en viss mening
  flaggades som "high risk"? Den tiden det tar att bygga den förståelsen
  är verification debt. Steering och specs minskar den — men eliminerar den inte.
- Skulle du lita på det här verktyget för riktiga kontrakt? Varför inte?
  (Ownership — verktyget ger förslag, du äger beslutet)

---

## Kom du snabbt till steg 8? Här kommer mer.

### Bonus A: MCP med Context7 — Sök dokumentation direkt i Kiro

Context7 är en MCP-server (paketet `@upstash/context7-mcp` från npm)
som ger Kiro tillgång till uppdaterad dokumentation för bibliotek och
ramverk. Användbart om du vill att Kiro ska referera till senaste
Go-dokumentationen istället för att gissa.

Lägg till i `.kiro/settings/mcp.json` (utöka den befintliga filen).
Använd samma sökväg som du angav i steg 6 (anpassa för ditt OS):

```json
{
  "mcpServers": {
    "filesystem": {
      "command": "npx",
      "args": [
        "-y",
        "@modelcontextprotocol/server-filesystem",
        "/tmp/contracts"
      ],
      "disabled": false,
      "autoApprove": []
    },
    "context7": {
      "command": "npx",
      "args": ["-y", "@upstash/context7-mcp@latest"],
      "disabled": false,
      "autoApprove": []
    }
  }
}
```

Windows-användare: byt `/tmp/contracts` till er sökväg, t.ex.
`"C:\\Temp\\contracts"` (samma som i steg 6).

Nu kan du be Kiro:

> _"Sök i Go-dokumentationen: hur fungerar regexp.MustCompile?"_

> _"Visa mig senaste Flask-dokumentationen för error handling"_

**Varför?** Det visar **Curiosity** — du utforskar dokumentation direkt
från editorn istället för att byta till webbläsaren.

### Bonus B: Avancerad Trunk-konfiguration

Lägg till fler kontroller:

```bash
# Aktivera säkerhetsscanning
trunk check enable gosec

# Aktivera formattering
trunk check enable gofmt

# Kör allt
trunk check
```

Be Kiro skapa en hook som blockerar commits med säkerhetsproblem:

> _"Skapa en preToolUse hook för write-operationer som kör 'trunk check'
> på filen och vägrar skriva om det finns HIGH severity-problem."_

Det här är Vogels mekanism: "Guardrails, Not Speedbumps."

### Bonus C: Fler analysregler

Be Kiro lägga till mönster:

> _"Lägg till analysregler för:_
>
> - _Passiv form utan agent ('shall be provided' — av vem?)_
> - _Vaga tidsangivelser ('in a timely manner', 'as soon as practicable')_
> - _Cirkulära definitioner ('reasonable' definierat som 'appropriate')_
> - _Saknade definitioner (termer i versaler som inte definieras i dokumentet)"_

### Bonus D: Jämför två versioner

> _"Lägg till ett CLI-kommando 'diff' som tar två filer och visar
> skillnader i riskprofil. Vilka risker har lagts till? Vilka har
> tagits bort? Har severity ändrats?"_

Det här visar **Systems Thinking**: en ändring i en klausul kan
förändra hela dokumentets riskprofil.

### Bonus E: Confidence scoring

> _"Lägg till en confidence score (0.0–1.0) per flaggning. Exakt
> matchning på nyckelord = 1.0, fuzzy matchning = lägre. Visa
> confidence i output och i webbsidan."_

### Bonus F: Steering för analysregler

Skapa en steering-fil som definierar vilka mönster som ska flaggas:

```markdown
---
inclusion: fileMatch
fileMatchPattern: "analyzer/*.go"
---

# Analysregler

När du skriver eller ändrar analysregler:

- Varje regel ska ha ett unikt ID (t.ex. AMB-001, RISK-001)
- Varje regel ska ha en severity (low, medium, high)
- Varje regel ska ha en förklaring som en icke-jurist förstår
- Regler ska testas med minst 2 positiva och 2 negativa testfall
- Regex-mönster ska vara case-insensitive
```

Det här visar hur steering kan vara **kontextuell** — reglerna gäller
bara när Kiro jobbar med analyzer-filer.

### Bonus G: Granskningsagent för juridisk korrekthet

> _"Skapa en postToolUse hook för write-operationer på analyzer/_.go
> som granskar att nya analysregler inte ger false positives på
> vanliga, ofarliga formuleringar."\*

---

## Filstruktur (mål)

```text
03-contract-analyzer/
├── README.md
├── go.mod
├── spec-starter.md
├── main.go                # CLI + HTTP-server
├── analyzer/
│   ├── analyzer.go        # Huvudlogik
│   ├── patterns.go        # Regexmönster
│   └── analyzer_test.go   # Table-driven tests
├── sample-contracts/
│   ├── sla-example.txt    # Exempel-SLA med tvetydigheter
│   └── lease-example.txt  # Exempel-hyreskontrakt
├── static/
│   └── index.html         # Upload-sida
└── .kiro/
    ├── specs/
    ├── steering/           # Riktlinjer (skapas i steg 2)
    ├── hooks/              # Trunk + test hooks
    └── settings/
        └── mcp.json        # MCP-konfiguration (steg 6)
```

## Tips

- **Börja med steering.** Det sätter tonen för hela projektet och visar Kiro vad du förväntar dig.
- **Trunk är din vakt.** Kör `trunk check` ofta. Lita inte blint på AI-genererad kod.
- **MCP utökar Kiro.** Tänk på det som att ge din AI-stab fler verktyg i verktygslådan.
- **Fråga Kiro om Go.** Om du inte kan Go är det helt okej — det är Curiosity-pelaren.
- **Granska analysresultaten.** Verktyget flaggar risker, men du äger beslutet. Alltid.
- **Använd separata chattsessioner** för implementation vs. frågor om du vill hålla fokus.

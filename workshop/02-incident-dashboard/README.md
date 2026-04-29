# Koncept 2: The Incident Dashboard 🚨

**Språk:** TypeScript / Node.js · **Tid:** ~60–90 min · **Nivå:** Medel
**Inga externa beroenden** — mock-data, ingen riktig infrastruktur.

## Vad du bygger

Ett övervakningssystem som visar hälsostatus för fiktiva microservices.
Backend genererar simulerad telemetri (latens, felfrekvens, uptime).
En dashboard visar status i realtid med larmtrösklar och en "acknowledge"-knapp.

## Koppling till de fem pelarna

| Pelare               | Hur den visas                                                                                              |
| -------------------- | ---------------------------------------------------------------------------------------------------------- |
| **Systems Thinking** | Kärnan. Ändra en retry-policy → lasten förändras → nya larm triggas. Yellowstone i miniformat              |
| **Communication**    | Specen måste definiera vad "healthy" betyder. 99%? 99.99%? Samma problem som "$1.2M aerospace requirement" |
| **Ownership**        | Vem äger larmet klockan 03:00? Du definierar eskaleringslogik och äger konsekvenserna                      |
| **Curiosity**        | Observability som ny domän — metrics, alerting, SLOs                                                       |
| **Polymathy**        | Driftingenjör + datavisualiserare + systemarkitekt i samma person                                          |

## Mekanismer

1. **Spec-driven development** — Definiera SLOs och tröskelvärden i specen
2. **Automated testing** — Verifiera att larm triggas korrekt vid simulerade fel
3. **Andon Cord** — En "acknowledge"-knapp i dashboarden som stoppar eskalering

## Din AI-stab

Du orkestrerar en stab av specialiserade agenter:

- **Arkitekten** — Specen. Du definierar SLOs, tröskelvärden och larmregler.
- **Byggaren** — Task-agenten. Implementerar simulator, API och dashboard.
- **Kritikern** — Test-hooken. Verifierar att larm triggas korrekt.
- **Granskaren** — preToolUse-hooken (Bonus C). Kontrollerar typning innan kod skrivs.
- **Du** — Chefen. Du delegerar arbetet, men aldrig ansvaret.

---

## Förberedelser

### 1. Installera Node.js

<details>
<summary><strong>🍎 macOS</strong></summary>

```bash
# Homebrew (rekommenderat)
brew install node@22

# Eller via nvm (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
nvm install 22

# Verifiera
node --version
npm --version
```

</details>

<details>
<summary><strong>🪟 Windows</strong></summary>

```powershell
# winget
winget install OpenJS.NodeJS.LTS

# Eller ladda ner från https://nodejs.org/
# Välj LTS-versionen

# Verifiera (ny terminal)
node --version
npm --version
```

</details>

<details>
<summary><strong>🐧 Linux</strong></summary>

```bash
# Ubuntu/Debian (via NodeSource)
curl -fsSL https://deb.nodesource.com/setup_22.x | sudo -E bash -
sudo apt install -y nodejs

# Fedora
sudo dnf install nodejs

# Eller via nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
nvm install 22

# Verifiera
node --version
npm --version
```

</details>

### 2. Installera beroenden

```bash
cd workshop/02-incident-dashboard
npm install
```

### 3. Installera Kiro

1. Gå till [kiro.dev](https://kiro.dev)
2. Ladda ner och installera för ditt OS
3. Logga in med ditt konto

### 4. Git

Git behövs för versionshantering och git-baserade hooks.
Se installationsguide i [workshop/README.md](../README.md#git-valfritt-för-koncept-1-krävs-för-koncept-2-och-3).

---

## Hitta rätt i Kiro

Om du inte gjort Koncept 1 först — här är var du hittar de viktigaste funktionerna:

### Filträdet (Explorer)

I vänsterpanelen ser du ditt projekt. Under `.kiro/`-mappen hittar du:

```text
.kiro/
├── specs/           ← Dina specs (krav → design → tasks)
├── steering/        ← Steering-filer (regler och riktlinjer)
├── hooks/           ← Agent hooks (automatiserade triggers)
└── settings/        ← Inställningar (t.ex. MCP-konfiguration)
```

### Spec-panelen

- Klicka på **Kiro-ikonen** i vänstra sidofältet (eller Command Palette → "Kiro: Open Specs")
- En spec har tre faser: **Requirements** → **Design** → **Tasks**
- Du godkänner varje fas innan Kiro går vidare

### Chatten

- Öppna med `Cmd+L` (macOS) / `Ctrl+L` (Windows/Linux)
- Här pratar du med Kiro — ställ frågor, be om ändringar, be den förklara kod
- Använd `#` för att referera till filer: `#server.ts` drar in filen som kontext
- Använd `#Problems` för att visa Kiro aktuella fel i editorn
- Använd `#Terminal` för att ge Kiro tillgång till terminaloutput

### Be Kiro om hjälp

Du kan alltid fråga Kiro i chatten. Några exempel:

> _"Jag förstår inte vad den här koden gör. Kan du förklara?"_

> _"Jag får ett felmeddelande: Cannot find module 'express'. Vad ska jag göra?"_

> _"Vad är skillnaden mellan latens och throughput?"_

Kiro har tillgång till dina filer och kan se samma fel som du ser. Var inte rädd
för att fråga "dumma" frågor — det är **Curiosity**-pelaren i praktiken.

### Flera chattsessioner

Du kan ha flera chattsessioner igång samtidigt i Kiro. Det kan vara användbart:

- **En session för implementation** — där du jobbar med specen och tasks
- **En session för frågor** — där du ställer frågor om koncept du inte förstår

Varför vill man det? Varje session har sin egen kontext. Om du ställer en
fråga mitt i en implementation-session kan det "distrahera" agenten från
det den höll på med. En separat fråge-session håller implementationen ren.

Varför vill man ibland _inte_ det? Om din fråga handlar om just den kod
som genereras i sessionen behöver agenten se den kontexten — då är det
bättre att fråga i samma session.

---

## Workshop-flöde (steg för steg)

### Steg 1: Öppna projektet i Kiro (2 min)

```bash
kiro workshop/02-incident-dashboard
```

### Steg 2: Vibe Coding vs. Spec-Driven (3 min)

Innan specen — testa vad som händer utan en. Öppna chatten:

> _"Bygg en monitoring dashboard i TypeScript med Express"_

Resultatet ser troligtvis bra ut. Vibe coding har blivit riktigt bra.
Men fråga dig:

- Vad definierade AI:n som "healthy"? Var det ditt val eller AI:ns gissning?
- Vilka tröskelvärden valdes? Varför just de?
- Finns det en acknowledge-funktion? Dependency chains?
- Kan du förklara larmlogiken för en kollega?

Koden _kanske_ fungerar. Men du har ingen kontroll. Ingen spec att
verifiera mot. Ingen definition av vad "rätt" betyder. Det är
**verification debt** — koden ser bra ut, men du kan inte bevisa
att den gör rätt sak.

Ångra och gör det med spec istället.

### Steg 3: Skapa en Spec (10 min)

Öppna Spec-panelen och skapa en ny spec. Kopiera in innehållet från
`spec-starter.md` eller skriv din egen.

Tänk på **Communication**: vad betyder "healthy"? Vad är ett "kritiskt" larm?
Om du inte definierar det exakt kommer AI:n att gissa — och gissa fel.

Kiro genererar:

- **Requirements** — Vad systemet ska göra
- **Design** — API-kontrakt, datamodell, larmregler
- **Tasks** — Steg-för-steg implementation

Granska varje fas. Det här är din spec.

### Steg 4: Låt agenterna implementera (20 min)

Kör tasks en i taget. Observera hur **Byggaren**:

- Skapar TypeScript-filer med typer och interfaces
- Bygger simulatorn som genererar realistisk data
- Implementerar larmlogiken baserat på dina tröskelvärden

**Tips:** Om du inte förstår TypeScript-syntax, fråga Kiro:

> _"Vad betyder `Record<string, ServiceMetrics>` i types.ts?"_

### Steg 5: Sätt upp hooks — Kritikern (5 min)

Be Kiro i chatten:

> _"Skapa en hook som kör vitest varje gång en .ts-fil sparas"_

Nu har du en automatisk feedback-loop.

### Steg 6: Testa och granska (10 min)

```bash
# Starta servern
npx tsx src/server.ts

# Öppna i webbläsaren
# http://localhost:3000
```

Testa:

- Ser du statusfärger (grön/gul/röd) för varje service?
- Vänta på en simulerad incident — triggas larmet?
- Klicka "acknowledge" — stoppas eskaleringen?
- Vad händer om du ändrar tröskelvärdet i koden och sparar?

### Steg 7: Reflektion (3 min)

- Vad hände när du ändrade ett tröskelvärde? (Systems Thinking)
- Var specen tillräckligt precis? Vad hade du velat definiera bättre?
- Jämför med steg 2 — vilken skillnad gjorde specen vs. vibe coding?
- **Verification Debt**: Hur lång tid tog det att förstå larmlogiken
  som AI:n genererade? Den tiden är verification debt — skillnaden
  mellan att skriva kod själv (förståelse ingår) och att granska
  AI-genererad kod (förståelse måste byggas i efterhand).
- Skulle du lita på den här dashboarden i produktion? Varför/varför inte?

---

## Kom du snabbt till steg 7? Här kommer mer.

### Bonus A: Dependency chains — Systemtänkande på riktigt

Be Kiro:

> _"Lägg till beroenden mellan services: api-gateway beror på auth-service
> och payment-service. payment-service beror på inventory-service. Om en
> service går ner ska alla beroende services markeras som 'degraded'."_

Det här visar **Systems Thinking** på djupet — en ändring i en nod
kaskaderar genom hela systemet. Precis som Yellowstone-vargarna.

### Bonus B: Fler tester och test-hooks

> _"Skriv tester som verifierar: 1) att WARNING triggas vid latens > 500ms, 2) att CRITICAL triggas vid felfrekvens > 15%, 3) att acknowledge
> stoppar eskalering, 4) att dependency chains propagerar korrekt."_

Kör:

```bash
npx vitest run
```

### Bonus C: Granskningsagent

Skapa en hook som granskar kod innan den skrivs:

> _"Skapa en preToolUse hook för write-operationer som kontrollerar att
> alla TypeScript-filer har korrekt typning och inga 'any'-typer."_

### Bonus D: Steering för kodstandard

Skapa en steering-fil:

> _"Skapa en steering-fil som säger att all TypeScript-kod ska använda
> strict mode, inga any-typer, och att alla API-responses ska ha
> konsekvent JSON-struktur med status och data-fält."_

### Bonus E: Historik och trender

> _"Lägg till en graf som visar latenshistorik de senaste 5 minuterna
> per service. Använd Chart.js. Grafen ska uppdateras automatiskt."_

### Bonus F: Anpassade larmregler

> _"Lägg till ett admin-gränssnitt där användaren kan ändra larmtrösklar
> per service. Spara trösklarna i en YAML-fil (data/thresholds.yaml)
> så de överlever omstart."_

Det här kopplar tillbaka till **Communication** — nu måste du definiera
vad "konfigurerbart" betyder i din spec.

### Bonus G: Importera recept-konceptet

Om du gjort Koncept 1 — lägg till recipe-api som en av de övervakade
services. Be Kiro:

> _"Lägg till recipe-api som en service i simulatorn. Den ska ha
> realistisk latens (50-150ms normalt, 500ms+ vid incident)."_

### Bonus H: Postman Power — Testa ditt API professionellt

Kiro har **Powers** — tillägg som ger Kiro nya förmågor. Postman-powern
låter dig testa dina API-endpoints direkt från Kiro, utan att lämna editorn.

Så här installerar du den:

1. Öppna Command Palette (`Cmd+Shift+P` / `Ctrl+Shift+P`)
2. Sök på "Kiro: Configure Powers"
3. Hitta **Postman** i listan och installera

När powern är installerad kan du be Kiro:

> _"Testa alla endpoints i mitt API med Postman. Verifiera att
> /api/services returnerar rätt format, att /api/alerts returnerar
> aktiva larm, och att POST /api/alerts/:id/acknowledge fungerar."_

> _"Skapa en Postman-collection för mitt Incident Dashboard API."_

**Varför Powers?** Powers utökar Kiro med specialiserade verktyg —
precis som MCP, men paketerade och redo att använda. Postman-powern
är särskilt relevant här eftersom vi har flera endpoints med olika
HTTP-metoder (GET, POST) och statuskoder (200, 404, 400).

Det här visar **Polymathy**: du testar som en QA-ingenjör, direkt
från din utvecklingsmiljö.

Du hittar installerade Powers i Kiro-sidopanelen. Varje Power kan
ha egna verktyg, dokumentation och arbetsflöden.

---

## Filstruktur (mål)

```text
02-incident-dashboard/
├── README.md
├── package.json
├── tsconfig.json
├── spec-starter.md
├── src/
│   ├── server.ts          # Express-server
│   ├── simulator.ts       # Genererar mock-telemetri
│   ├── alerting.ts        # Larmlogik med tröskelvärden
│   └── types.ts           # TypeScript-typer
├── public/
│   └── index.html         # Dashboard
├── tests/
│   └── alerting.test.ts   # Tester
└── .kiro/
    ├── specs/
    ├── steering/
    └── hooks/
```

## Tips

- **Fråga Kiro** om du inte förstår TypeScript-syntax. Det är inte fusk, det är Curiosity.
- **Använd `#Problems`** i chatten för att visa Kiro kompileringsfel.
- **Ändra tröskelvärden** och observera kaskadeffekter — det är hela poängen med Systems Thinking.
- **Öppna en separat chattsession** för frågor om du vill hålla implementationen ren.

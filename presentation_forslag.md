# Presentationsförslag för Mensa

## Djupanalys och reviderat förslag

---

### Titel

**The Renaissance Developer: Från "Code Monkey" till Polymath i AI-åldern**
_— eller: Varför din viktigaste kompetens snart inte är att koda_

---

### Beskrivning (kort, för programblad/event-sida)

Tänk dig att en AI just har byggt klart ett komplett system åt dig. Den frågar artigt:

> "SkyNets försvarsmoduler är redo. Ska jag skicka till produktion?"

Du har inte läst en enda rad kod. Vad gör du?

I december 2025 klev Dr. Werner Vogels upp på scen för sin sista re:Invent-keynote efter 14 år som Amazons CTO. Han lanserade inga nya produkter. Istället ställde han frågan som hela branschen viskar om:

> "Kommer AI att göra mig överflödig?"

Hans svar blev ett ramverk — inte för överlevnad, utan för renässans.

I det här föredraget tar Erik med sig Vogels teser till en Mensa-publik och dissekerar dem med den skärpa de förtjänar. Vi utforskar varför varje teknologisk revolution i historien har utlöst exakt samma panik ("programmerare är döda!") — från COBOL till molnet till AI — och varför paniken alltid har haft fel, men av rätt anledningar. Vi dyker ner i konceptet _verifieringsskuld_ (kod som når produktion innan någon förstår vad den gör — "det är inte mjukvaruutveckling, det är hasardspel"), och vi synar varför _Vibe Coding_ är vår tids tekniska skuldfälla.

Men det här är inte en dystopisk varning. Det är en invit.

Vogels fem egenskaper för framtidens utvecklare — nyfikenhet, systemtänkande, precis kommunikation, ägarskap och polymati — visar sig vara exakt de egenskaper som definierade renässansens stora tänkare. Leonardo da Vinci separerade aldrig konst från vetenskap. Han diskuterade perspektiv, mekanik och estetik vid samma bord. Idag behöver vi utvecklare som gör samma sak: som förstår inte bara _hur_ koden fungerar, utan _varför_ systemet beter sig som det gör, _vem_ det tjänar, och _vad_ som händer när det går fel klockan tre på natten.

Föredraget avslutas med en praktisk brygga: hur går man från teori till handling? Och för den som vill gå hela vägen erbjuds en separat workshop direkt efteråt, där vi bygger multi-agent-system i Kiro och tillämpar renässansutvecklarens principer på riktigt.

---

### Utökad synopsis (för presentatörens eget bruk och djupare programbeskrivning)

#### Prolog: Öppningsscenen — "Should it be sent to production?"

_Ljuset är dämpat. Erik sitter i en fåtölj på scenen, bläddrar avslappnat i ett exemplar av "The Kernel" — Amazons fysiska tidning som delades ut på re:Invent 2025. Han smuttar på en espresso. Bakom honom, på storskärmen, rullar en inspelning av Kiro IDE i full fart — agenter som autonomt bygger modul efter modul, kod som strömmar förbi snabbare än någon hinner läsa._

_Publiken hinner precis bli bekväma. Kiro stannar._

_En syntetisk röst bryter tystnaden:_

> **"The final defence modules for SkyNet are now ready. Should it be sent to production?"**

_Erik tittar upp från tidningen. Tar en sista klunk espresso. Lägger ner koppen._

> "Ja... det där är ungefär vad som händer när man vibe-kodar utan kontroll."

_Han reser sig, håller upp The Kernel mot publiken._

> "Den här tidningen handlar om motsatsen. Om att faktiskt förstå vad man bygger. Werner Vogels, Amazons CTO i 20 år, skrev sin sista keynote om just det. Och det är därför vi är här ikväll."

---

**Varför den här öppningen fungerar:**

Scenen är en levande illustration av exakt det Vogels varnar för — verifieringsskuld i sin mest absurda form. AI:n har byggt klart. Den frågar artigt om den ska skicka till produktion. Ingen människa har granskat en enda rad. Ingen vet vad systemet gör. Det enda vi vet är att det kallar sig SkyNet.

Det är Vibe Coding driven till sin logiska slutpunkt — och det är roligt _precis för att_ det är obehagligt nära verkligheten. Publiken skrattar, men skrattet fastnar lite i halsen.

The Kernel i handen blir en fysisk symbol för det Vogels förespråkar: eftertanke, djup, att stanna upp och läsa innan man trycker deploy. Espresso-koppen signalerar att det här inte är panik — det är en lugn, genomtänkt analys av vart vi är på väg.

Kontrasten mellan skärmens kaos och fåtöljens lugn _är_ hela presentationens tes i en bild.

---

#### Akt 1: Paniken som aldrig stämmer (men alltid känns äkta)

Vogels öppnade sin keynote med en kortfilm: från hålkortseran och framåt har varje nytt verktyg utlöst rop om att "utvecklare är dömda." Men det här mönstret är mycket bredare än programmering — och för en svensk publik finns det gott om igenkänning.

**Vogels programmeringsexempel (den röda tråden):**

- COBOL (1960-tal): "Nu kan vem som helst koda, programmerare är färdiga."
- Drag-and-drop-programmering (1990-tal): "Ingen behöver skriva kod längre."
- Molnet (2000-tal): "Ingenjörer sparkas."
- AI (2020-tal): "Den här gången är det på riktigt."

Fyra decennier, samma manus, fyra olika rekvisita.

**Svenska komplement — samma panik, andra domäner:**

- **Hemdatorn och ABC 80 (sent 70-tal/80-tal):** Sveriges egen datorrevolution började med ABC 80 — "Advanced BASIC Computer" — ett samarbete mellan DIAB, Scandia Metric och Luxor i Motala. Biblioteken hade manualer och programkokböcker. Oron? Att barn skulle bli passiva, att datorn skulle ersätta "riktigt" lärande, att det var en leksak utan framtid. Istället blev det startskottet för en generation som byggde Spotify, Klarna och King. Och sedan kom _hemdatorreformen_ 1998 — 850 000 datorer köptes via arbetsgivare på tre år, nästan en fjärdedel av alla svenska hushåll fick en dator. Kritikerna sa att det var slöseri. Resultatet? Sverige fick 28 bredbandsabonnemang per 100 invånare år 2005, mot USA:s 17. Det lade grunden för att Sverige blev Europas Silicon Valley.

- **Mobiltelefonen (1980–90-tal):** NMT öppnade 1981 i Sverige och Norge — världens första automatiska mobiltelefonnät. Reaktionen? "Vem behöver ringa från en bil?" och "Det förstör det sociala umgänget." Ericsson och Nokia byggde sina imperier på den tekniken. Idag har vi fler mobilabonnemang än invånare, och ingen ifrågasätter att telefonen förändrade allt — men _hur_ den förändrade allt var det ingen som förutsåg.

- **Ramverkens eviga karusell (2000–2020-talet):** Det här var inte bara ett JavaScript-fenomen — det hände i _alla_ språk. Java: Struts → Spring → Jakarta EE → Micronaut → Quarkus. Python: Django → Flask → FastAPI. Ruby: Rails som "dödade" allt, tills det inte gjorde det. PHP: CodeIgniter → Laravel → Symfony. .NET: Web Forms → MVC → Blazor. Och JavaScript fick sin egen turné: jQuery → Angular → React → Vue → Svelte → Next → Nuxt → Remix. "Framework fatigue" blev ett universellt begrepp. Varje nytt ramverk utlöste samma cykel: hype, adoption, panik ("Struts är dött!", "Angular är dött!", "Rails skalar inte!"), nästa ramverk. Utvecklare investerade månader i att bemästra ett ramverk bara för att se nästa alternativ dyka upp. Men inget ramverk dödade mjukvaruutveckling — de höjde ribban för vad som gick att bygga. Och de som klarade sig bäst var inte de som kunde varje ramverk, utan de som förstod _mönstren bakom_ ramverken: MVC, dependency injection, reaktiv programmering, komponentarkitektur. Polymater, med andra ord.

- **Code completion / type-ahead i IDE:er (2001→):** Eclipse lanserade "Content Assist" för Java runt 2001 — du tryckte Ctrl+Space och IDE:n föreslog metoder och variabler åt dig. Visual Studio hade IntelliSense redan för C++ på 90-talet. Reaktionen från purister? "Det gör utvecklare lata." "Man lär sig aldrig API:erna ordentligt." "Riktiga programmerare använder Vim." En HN-kommentar från 2020 sammanfattar det:

  > "Jag bestämde mig för 20 år sedan att undvika autocomplete — det har gjort mig till en bättre programmerare eftersom jag kan allt utantill, medan 'auto-programmerare' bara plockar från en lista."

  Känns det igen? Det är exakt samma argument som idag riktas mot AI-kodassistenter — bara ett snäpp upp på abstraktionsstegen. Code completion dödade inte förståelsen — den frigjorde hjärnkapacitet för arkitektur. Precis som Copilot och Kiro gör idag, fast på en helt annan nivå.

**Mönstret som Vogels identifierar:**

Varje gång verktygen sänker tröskeln för att _skriva kod_ (eller ringa, eller söka, eller bygga en hemsida), höjer de samtidigt ribban för att _designa system, definiera problem och ta ägarskap_.

Kompilatorer dödade inte programmerare — de skapade mjukvaruarkitekter. Molnet dödade inte ops — det skapade SRE:er. Hemdatorn dödade inte kreativiteten — den skapade en generation grundare. Mobiltelefonen dödade inte det sociala umgänget — den omdefinierade det.

AI kommer inte att döda utvecklare. Men det kommer att döda utvecklare som _bara_ kan skriva kod.

> _(Humor för Mensa-publiken: "Det här mönstret borde vara bekant. Intelligens utan bredd är som en laserpekare i ett mörkt rum — imponerande ljusstyrka, men du ser bara en prick. Och om den pricken råkar vara Angular 1... ja, då har du ett problem.")_

> _(Alternativ humor: "Sverige har alltid varit tidigt ute med att adoptera ny teknik och sent ute med att sluta oroa sig för den. Vi fick NMT 1981 och oroade oss för strålning till 2015. Vi fick hemdatorer 1998 och oroade oss för att barnen skulle bli passiva — de grundade Minecraft istället.")_

#### Akt 2: Fyra villkor för en renässans

Vogels jämförde inte nutiden med renässansen slarvigt. Han gav specifika mappningar — och han började med att ta publiken tillbaka till den historiska renässansen.

**Bakgrund: Mörka medeltiden → Renässansen**

Renässansen ("pånyttfödelsen") kom efter en period av mörker — medeltiden, digerdöden. Och som Vogels sa:

> "Anyone who knows Monty Python knows how that looked like."

Men sedan exploderade nyfikenheten. Resultatet var extraordinärt:

- De Medici — "förmodligen den första versionen av en riskkapitalist eller filantrop"
- Galileo och Copernicus — banbrytande vetenskapsmän
- Petrarch — en av de första filosoferna
- Leonardo da Vinci — polymatens urmoder (mer om honom i Akt 4)

Slide-poäng: Konst och vetenskap var del av _samma konversation_. Det fanns inga gränser mellan disciplinerna.

**Renässansens verktyg (Vogels specifika exempel):**

Vogels betonade att det inte bara var individerna — det var _resonansen mellan individer och verktyg_:

1. **Blyertspennan** — "Seems nothing to be invented today, but it was a major thing." Sänkte friktionen för att dokumentera och revidera idéer.
2. **Försvinnandepunkten (vanishing point)** — Före renässansen var alla målningar och teckningar platta. Plötsligt dök djup och ljussättning upp. En ny abstraktion som förändrade hur man _representerade_ verkligheten.
3. **Mikroskopet och teleskopet** — "Of course invented by Dutch people," sa Vogels med ett leende. Utvidgade mänsklig perception bortom det blotta ögat.
4. **Tryckpressen** — Inte bara _en_ uppfinning. Gutenberg använde en vinpress som bas, men behövde också uppfinna lösa typer (movable type), ett bläck som fungerade på typerna, och papper som tålde processen. Möjliggjorde kunskapsreplikering i skala.

Slide-poäng: Varje verktyg sänkte tröskeln för skapande och höjde taket för vad som var möjligt. Exakt som idag.

**Mappning till idag (Vogels fyra villkor):**

1. **Den gamla ordningen faller.** Traditionell mjukvaruutveckling byggde på arbetsdelning — PM skriver spec, designer gör mockups, ingenjör kodar, QA testar, ops driftar. AI lossar det löpande bandet. Vogels egen karriär illustrerar det:

   > "When I went to school, I was taught 68,000 Assembler, COBOL and Pascal. None of these languages are being used anymore."

2. **Nya verktyg exploderar.** AI-modeller, molninfrastruktur, robotik — som renässansens tryckpress och mikroskop. Vogels gick igenom hela verktygskedjan: hans första IDE var Vi ("I'm not an Emacs person" — applåder), sedan Microsoft, Visual Studio, Visual Studio Code, och nu Cursor och Kiro.

   > "Is there a new workflow next year? Five years from now? Of course there is."

3. **Kunskapsinhämtning blir billig.** Att lära sig ett nytt språk tog månader; nu lär du dig medan du bygger. Vogels:

   > "When I learned assembly, I knew how that loop in Pascal actually translated into machine code. And so, that was important to me."

   Men idag kan AI ge dig den förståelsen snabbare.

4. **Flera guldåldrar konvergerar.** Vogels citerade Bezos:

   > "We are living at the epicenter of multiple simultaneous golden ages coming together. Space travel, artificial intelligence, robotics. Each are advancing at an incredible pace. But what makes this moment different is how these breakthroughs reinforce each other. Progress in one field accelerates progress in the other fields."

Slide-poäng: Alla fyra villkoren är uppfyllda. Men renässansen varade i över tvåhundra år. De första decennierna gjorde de flesta fortfarande medeltida saker. Vi är förmodligen i den fasen just nu.

_(Humor: "Så om du fortfarande skriver YAML-filer för hand klockan elva på kvällen — grattis, du är medeltida. Men det är okej, Leonardo började också som lärling i Verrocchios verkstad.")_

#### Akt 3: Verifieringsskuld — AI-åldern nya tekniska skuld

Det mest genomträngande konceptet i Vogels keynote: _Verification Debt_.

**Vogels definition:**

AI genererar kod snabbare än människor kan förstå den. Kod kan "dyka upp omedelbart", men förståelse och verifiering kan det inte. Det innebär att system närmar sig produktion innan de verkligen har förståtts.

Vogels egna ord:

> "We can't just pull a lever on your IDE and hope that something good comes out. That's not software engineering, that's gambling."

Slide-poäng: Du skriver _mindre_ kod (generering är snabb), men du granskar _mer_ kod (förståelse tar tid). När du skriver kod själv kommer förståelsen med skapandet. När maskinen skriver den måste du _återuppbygga_ förståelsen under granskning. Det gapet är verifieringsskulden.

**Hallucination — den andra utmaningen (Vogels + Clare Liguoris exempel):**

Vogels lyfte två huvudutmaningar. Den andra är hallucination:

- Clare Liguori visade ett konkret exempel under keynoten: teamet bad Kiro bygga ett notifikationssystem. De förväntade sig en enkel integration. Istället genererade AI:n en _helt ny, komplex notifikationsarkitektur_ direkt i agentkoden — självsäkert presenterad, men helt fel för systemet.
- Modeller hittar på API-attribut som inte existerar
- De föreslår överingenjörerade lösningar
- De ignorerar systemets befintliga mönster och begränsningar
- Vogels:

  > "These outputs look plausible, but they're not grounded in reality."

Slide-poäng: Hade de vibe-kodat istället för att använda spec-driven development hade de fått en massa kod de inte ville ha. Specen fångade felet _innan_ en enda rad kod skrevs.

**Aktuell data som stödjer Vogels tes:**

- Veracodes 2025-rapport: 45% av AI-genererade kodexempel misslyckas i säkerhetstester och introducerar OWASP Top 10-sårbarheter
- Misstron mot AI-kodens korrekthet har stigit till 46% (BayTech Consulting)
- Startups som vibe-kodade rapporterar "hallucinated code, broken integrations, brittle architectures, and demos that fell apart the moment real users touched them" (TechStartups.com)

**Men — och det här är den avgörande poängen — det behöver inte vara så:**

Samma AI som skapar verifieringsskuld kan _eliminera_ den, om den styrs rätt. De senaste månaderna har visat detta dramatiskt:

- **Google Big Sleep (2025):** Googles AI-agent (DeepMind + Project Zero) hittade 20 tidigare okända säkerhetshål i populär open source-mjukvara, inklusive en minneskorruptionsbrist i SQLite (CVSS 7.2) som påverkade alla versioner före 3.50.2. Enligt Google var det första gången en AI-agent direkt förhindrade att en sårbarhet exploaterades i praktiken.

- **AISLE + OpenSSL (2025–2026):** AI-säkerhetsföretaget AISLE upptäckte _alla 12_ nya zero-day-sårbarheter i OpenSSL — kryptobiblioteket som underbygger kryptering och säker kommunikation över hela internet. En av dem (CVE-2025-15467) hade funnits i _27 år_ utan att någon människa hittat den. OpenSSL-teamet berömde kvaliteten på rapporterna och samarbetet.

- **Claude + Vim/Emacs (mars 2026):** Forskare vid Calif bad Claude att analysera Vim och Emacs — texteditorer som funnits i decennier. Claude hittade zero-day RCE-sårbarheter (remote code execution) i _båda_. CVE-2026-34714 i Vim (CVSS 9.2): att bara öppna en specialkonstruerad Markdown-fil gav angriparen full kontroll. Vim-teamet patchade omedelbart.

- **Anthropic (2026):** Anthropics red team visade att Claude kan hitta kritiska sårbarheter i etablerade open source-projekt — över 500 högsäkerhetsbuggar i projekt som GhostScript och OpenSC, varav vissa hade gått oupptäckta i decennier.

Slide-poäng: Det här är inte en paradox — det är Vogels poäng i ett nötskal. AI utan styrning skapar verifieringsskuld (45% misslyckas i säkerhetstester). AI _med_ styrning — specifikationer, mekanismer, mänskligt omdöme — hittar buggar som människor missat i 27 år. Skillnaden är inte verktyget. Skillnaden är renässansutvecklaren som håller i det.

_(Humor: "Så AI kan antingen bygga SkyNet åt dig utan att du märker det, eller hitta buggen som legat i din kryptering sedan 1998. Allt beror på om du vibe-kodar eller om du faktiskt äger det du bygger.")_

**Kopplingen till The Kernel:**

Vogels & Byron Cooks intervju "Proving the Promise: Trust in AI Systems" i The Kernel handlar om exakt detta — hur automatiserad resonering kan verifiera att AI-genererad kod faktiskt gör det den ska. Det är mekanismen mot verifieringsskulden.

_(Humor: "Vibe Coding är som att beställa mat på ett språk du inte talar. Det som kommer till bordet ser fantastiskt ut. Du vet bara inte om det är nötkött eller om du just beställde kokta skosnören.")_

#### Akt 4: De fem egenskaperna — Renässansutvecklarens ramverk

Vogels destillerade 14 års observationer till fem karaktärsdrag. Här är varje egenskap med hans specifika exempel, redo för slides.

---

**Egenskap 1: Var nyfiken (Be Curious)**

Vogels citat:

> "Curiosity is critical. As developers, you always had to continuously learn because everything changed all the time. Every developer I've met has this instinct to take something apart and look at how it works. You have to protect that instinct."

Slide-poäng: Nyfikenhet är inte en bonus — det är en överlevnadsegenskap.

Vogels exempel — Experimentering och misslyckande:

- > "Da Vinci made an airplane that never flew, but we are flying now."
- > "An experiment is not an experiment if you already know the outcome."
- Jämförelse med att lära sig ett nytt språk (holländska, engelska, portugisiska, tyska):

  > "The best way to learn is fail and be gently corrected. You can study grammar all you like, but real learning begins where you stumble into a conversation."

- Mjukvara fungerar likadant:

  > "You can read documentation endlessly, but it is the failed build and the broken assumptions that really teach you how a system behaves."

Vogels exempel — Yerkes-Dodson-lagen:

- Stresskurvan som en klockkurva: för lite press → oengagerad. För mycket press → överväldigad.
- Sweet spot: den stigande sluttningen där nyfikenhet möter utmaning.

> "That's when your brain is fully alert, focused, and ready to grow. You can't reach that point by sitting comfortably."

- Kopplingen till The Kernel: Andy Warfields artikel "A Little Bit Uncomfortable" handlar om exakt detta — obehag som signal för tillväxt.

Vogels exempel — Lärande är socialt ("Touch the grass"):

> "Learning isn't just cognitive, it is social. You have to touch the grass occasionally."

- Gå på user groups, konferenser, ta en kaffe med en vän och prata om system.

> "One of the best ways to stay sharp is to be around other people who are building things."

Vogels reseberättelser (nyfikenhet i praktiken):

- **AJE (Amazonfloden):** Dryckesföretag som stödjer samhällen längs Amazonfloden, ger unga människor en ekonomisk framtid så att de inte lämnar sina byar. Vogels:

  > "A great example of how doing good can be profitable at the same time."

  Han såg rosa delfiner.

- **The Ocean Cleanup:** 80% av plasten i haven kommer från bara en tusendel av världens 3 miljoner floder. De använder drönare, AI-kameror på broar och fartyg, och GPS-spårade dummyplaster för att bygga beräkningsmodeller som förutsäger plastens rörelsemönster. Vid Manaus la de GPS i plast och släppte den i Amazonfloden — det visade sig att Amazonfloden inte alls är en stor förorenare.
- **Rwanda Health Intelligence Center:** Hälsoministeriet har byggt ett operationscenter med stora skärmar som visar realtidsdata från fyra nivåer av sjukvårdsinrättningar. De har skapat en modell som visar vilka delar av landet som ligger mer än 30 minuters promenad från en vårdgivare — och använder den datan för att strategiskt placera nya mödravårdskliniker.

  > "They use data to drive policy, and to actually implement that policy."

- **KOKO Networks (Nairobi):** I fattiga områden lånar folk en dollar på morgonen, köper varor, säljer dem, och har 40–50 cent kvar på kvällen — tillräckligt för mat, men inte för gas att laga den. Så de eldar med kol, vilket förorenar massivt. KOKO Networks byggde etanol-"bankomater" där folk kan köpa 5 cents gas i en liten behållare — tillräckligt för att laga kvällsmaten.

Slide-poäng: Dessa är inte Silicon Valley-startups med obegränsade budgetar. De löser svåra problem med begränsade resurser genom att vara nyfikna på vad tekniken kan göra.

**Svenskt/nordiskt komplement — Nyfikenhet:**

- **Markus "Notch" Persson och Minecraft:** Började programmera vid 7 års ålder i Edsbyn, en liten ort 18 mil norr om Stockholm. Byggde Minecraft på fritiden som ett experiment — inspirerad av Dwarf Fortress, Infiniminer och sin egen nyfikenhet. The New Yorker beskrev honom som "only a workmanlike coder, not a ruthless businessman" — men hans nyfikenhet att kombinera procedurell generering, överlevnadsmekanik och kreativt byggande skapade ett av historiens mest sålda spel. Sålde till Microsoft för 2,5 miljarder dollar. Nyfikenhet som drivkraft, inte teknisk briljans.

- **Linus Torvalds och Linux:** Finlandssvensk student i Helsingfors som 1991 skrev ett operativsystem "just for fun" (bokstavligen titeln på hans självbiografi). Hans nyfikenhet att förstå hur Minix fungerade ledde till att han byggde sin egen kärna. Idag kör Linux på allt från Android-telefoner till 100% av världens 500 snabbaste superdatorer. Torvalds är det ultimata exemplet på Vogels poäng:

  > "Every developer I've met has this instinct to take something apart and look at how it works."

---

**Egenskap 2: Tänk i system (Think in Systems)**

Vogels citat: Donella Meadows definition:

> "A system is a set of things interconnected in such a way that they produce their own patterns of behavior over time."

Vogels:

> "That was an extraordinary definition, because it captures what every engineer eventually learns — that our systems have lives of their own."

Vogels huvudexempel — Yellowstone-vargarna (trofisk kaskad):

Slide 1: Problemet

- Tidigt 1900-tal: vargar togs bort från Yellowstone National Park
- Logiken verkade sund: färre rovdjur → mer älg → mer liv

Slide 2: Verkligheten (trofisk kaskad)

- Dalarna överbetades
- Träd försvann
- Floder började erodera
- Hela ekosystemet kollapsade

Slide 3: Återställningen

- 2010: vargar återinfördes
- Vegetation återvände
- Bävrar kom tillbaka
- Till och med flodfårorna förändrades

Slide 4: Insikten

- > "The wolves didn't move the rivers. They changed the behavior of the overall system."
- > "When structure changes, behavior changes. When feedback changes, outcome changes."
- En enda återkopplingsloop (rovdjur–byte) omformade balansen i hela systemet

Vogels mappning till mjukvara:

- Ändra en retry-policy → påverkar last
- Lägg till en cache → ändrar trafikflöde
- Flytta teamägarskap → ändrar leveranstakt
- Varje förändring skapar nya mönster — vissa stabila, vissa inte

Vogels om återkopplingsloopar:

- **Förstärkande loopar** (positiva): förstärker förändring
- **Balanserande loopar** (negativa): motverkar förändring, trycker systemet tillbaka mot jämvikt
- Varje tjänst, API och kö är del av ett större system — du kan inte ändra en del isolerat

Vogels läxa (bokstavligen "homework"):

- Donella Meadows paper "Leverage Points: Places to Intervene in a System"
- > "Take a picture of the QR code, and that's your homework for the coming week."
- Insikten: inte alla förändringar är lika effektiva. Vissa interventioner, vid rätt hävstångspunkt, förskjuter hela systemets beteende.

Slide-poäng:

> "The Renaissance Developer thinks in systems. And to build resilient systems, you need to understand the bigger picture."

**Svenskt/nordiskt komplement — Systemtänkande:**

- **Spotifys Squad-modell:** Spotify i Stockholm byggde en organisationsmodell som blev en global referens — autonoma "squads" (6–12 personer) organiserade i "tribes", "chapters" och "guilds". Det var systemtänkande applicerat på _organisation_, inte bara teknik. Varje squad ägde sin del av produkten end-to-end. Men modellen visade också systemtänkandets komplexitet: autonomi ledde till duplicering (team byggde samma sak utan att veta om varandra), och Spotify fick senare införa "fleet management" för att hantera de oavsiktliga återkopplingsloopar som uppstod. Exakt Vogels Yellowstone-poäng: varje lokal optimering skapar nya systemeffekter.

- **Ericsson och 5G-arkitekturen:** Ericsson har drivit 5G-standarden sedan 2011 — ett system där radio, kärnnät, edge computing och AI måste samverka sömlöst. Deras arbete med Telia och Scania för autonom transport visar systemtänkande i praktiken: pålitlig telemetri, sensordata och realtidsvideo mellan fordon och kontrollcenter, där varje komponent påverkar alla andra. En ändring i nätverkslatens påverkar fordonets beslutsförmåga — en trofisk kaskad i telekom.

- **Sveriges egen "Yellowstone" — viltbetesskadorna:** I södra Sverige (Götaland/Skåne) saknas i stort sett stora rovdjur — varken varg eller lodjur i tillräcklig mängd. Resultatet? Rådjur, älg och vildsvin överbetade skogen så kraftigt att skogsföryngringen hotades. Forskning visar att bara _lukten_ av lodjur och varg räcker för att ändra hjortdjurens beteende och minska betesskadorna på planterade träd (Journal of Applied Ecology, 2026). Det är Yellowstone-effekten i miniatyr, och den händer i vår egen bakgård: ta bort rovdjuret, och hela systemets beteende förändras. Inte lika dramatiskt som att floder byter fåra — men principen är identisk. Och för en Mensa-publik i Sverige är det mer greppbart än Yellowstone.

_(Notera: det exakta exemplet med rävar och hjortar i Skåne som en dokumenterad trofisk kaskad är svårt att belägga vetenskapligt — men den bredare svenska viltbetesproblematiken i södra Sverige, där avsaknaden av rovdjur leder till ekologisk obalans, är väldokumenterad och fungerar som lokal parallell.)_

---

**Egenskap 3: Kommunicera (Communicate)**

Vogels citat:

> "The ability to express your thinking clearly is just as critical as the thinking itself."

Vogels huvudexempel — Amazons tre-tier-system (från Frugal Architect):

Slide 1: Amazons hemsida uppdelad i tre nivåer

- **Tier 1 (absolut nödvändigt):** Sök, bläddra, kundvagn, kassa, recensioner. Utan dessa fungerar inte sajten.
- **Tier 2 (viktigt):** Personalisering, rekommendationer.
- **Tier 3 (nice-to-have):** Övriga funktioner.

Slide 2: Kommunikationsverktyget

- Sätt dig runt bordet med affärssidan: "Hur många nior tillgänglighet behöver Tier 1? Fyra nior. Det kostar så här mycket."
- Tier 2: kanske tre nior. Tier 3: kanske två nior med manuell failover.
- Vogels:

  > "It's a communication that you need to have. You need to be able to clearly describe your system and the capabilities and your opportunities towards the business."

Slide-poäng: Den konversationen låter enkel. Men den är sällsynt. De flesta organisationer definierar aldrig detta explicit — de överinvesterar (fem nior för nice-to-have) eller underinvesterar.

Vogels om naturligt språk och tvetydighet:

> "Natural language is ambiguous. But we have so many different senses that we can turn it into something less ambiguous."

- Humor:

  > "Do we put grandma on the grill, or are we having dinner tonight? Even without a comma, you probably already figured this one out."

- Problemet: vi kommunicerar nu med maskiner via naturligt språk — som _är_ tvetydigt. Vi behöver mekanismer för att minska tvetydigheten.

Vogels historiska exempel på specifikationer:

- **Dijkstras strukturerade programmering:** Formella specifikationer som bevisade programkorrekthet _innan_ implementation
- **Apollo Guidance System:** 145 000 rader kod styrda av minutiösa specifikationer — "a blueprint so precise that it helped land people on the moon"

Vogels/Clare Liguori — Kiro IDE och spec-driven development:

Slide 1: Problemet med vibe coding

- Clare:

  > "I was spending more and more time trying to describe to the AI what I wanted. The code was good, but the end software didn't do what I wanted."

- Hon skrev allt längre prompts i Obsidian/Markdown, kopierade till kodassistenten — hon skapade i praktiken specifikationer utan att veta om det.

Slide 2: Spec-driven development i Kiro

- Tre dokument: **Requirements** (vad systemet ska/inte ska göra) → **Designs** (arkitektur, dataflöde) → **Tasks** (nedbrytning i körbara steg)
- Iterera på spec-nivån tills den matchar din mentala modell, _sedan_ genererar AI:n kod

Slide 3: Konkret exempel — Notifikationssystemet

- Problem: Kiro-agenter tar tid, användaren byter app, agenten väntar på input utan att användaren vet
- Spec-processen avslöjade att projektet var _mycket_ större än förväntat — AI:n föreslog en helt ny notifikationsarkitektur i agentkoden
- De itererade på specen, fokuserade istället på Electrons native notification API
- Resultat: levererade på ungefär _halva tiden_ jämfört med vibe coding

Slide 4: Engelbart-analogin (rapid prototyping)

- 1964: Doug Engelbart hade en idé om en enhet med hjul på undersidan som du drar över ett bord för att peka på en skärm
- Försök att _beskriva_ en mus för någon på 60-talet — omöjligt
- Teamet byggde en prototyp av trä med hjul och en knapp:

  > "This rough prototype communicated better than any drawing or description could have"

- AI har möjliggjort samma sak för mjukvara:

  > "What used to take months of manual coding can now produce real working prototypes in minutes"

- Kiro byggdes med Kiro:

  > "We were able to use the Kiro IDE to generate the code for the Kiro IDE"

Clare Liguoris slutsats:

> "Natural language doesn't have to mean high ambiguity. Kiro IDE brings precision to natural language."

Vogels personliga anekdot — Intervjuteknik:

- På datavetenskap-utbildningen fanns en kurs som hette "Interview Technique" — inte journalistik, utan hur man lär sig prata med kunden för att förstå vad de _verkligen_ vill ha
- > "They may come to you already with a technology solution. 'What should I be doing with GenAI?' Most of this is fear of missing out."
- Kommunikation handlar om att gräva djupare: "I'm very sorry to answer your question with a question, but _why_ are you asking me this?"

Kopplingen till The Kernel: Clare Liguoris artikel "Prototypes Before PRFAQs" — om hur snabb prototypning ibland är den snabbaste vägen till klarhet, även i Amazons Working Backwards-process.

**Svenskt/nordiskt komplement — Kommunikation:**

- **Klarna och AI-kundtjänst — en varning om tvetydighet:** Klarnas VD Sebastian Siemiatkowski sa i december 2024:

  > "AI can already do all of the jobs that we, as humans, do."

  De ersatte 700 kundtjänstmedarbetare med en OpenAI-chatbot som hanterade 2,3 miljoner konversationer. Men i maj 2025 började de desperat anställa tillbaka — kundnöjdheten sjönk, ingenjörer tvingades ta kundtjänstsamtal. Problemet? Tvetydighet. AI:n kunde svara på frågor, men den kunde inte _förstå_ vad kunden egentligen behövde. Precis Vogels poäng om intervjuteknik:

  > "I'm very sorry to answer your question with a question, but _why_ are you asking me this?"

  Klarna lärde sig att kommunikation inte bara handlar om att ge svar — det handlar om att ställa rätt frågor.

---

**Egenskap 4: Var en ägare (Be an Owner)**

Vogels citat:

> "The work is yours, not the tools. If AI creates code that violates regulatory requirements, you can't go to the regulator and say 'Oh, it was AI.' No, it's still your responsibility."

(Verifieringsskuld och hallucination behandlas i Akt 3 ovan — här fokuserar vi på mekanismer.)

Se Akt 5 nedan för Vogels fullständiga genomgång av mekanismer vs. goda intentioner.

**Svenskt/nordiskt komplement — Ägarskap:**

- **iZettle (nu Zettle by PayPal):** Jacob de Geer grundade iZettle 2010 i Stockholm efter att hans fru, som drev ett litet företag, inte kunde få tillgång till kortbetalningsinfrastruktur från bankerna — "completely hopeless and too expensive." Han tog med sig Magnus Nilsson som medgrundare — 20 år äldre, med helt annan bakgrund. Nilsson sa:

  > "He thought it could be really interesting to develop a business together with someone who had a completely different background."

  De byggde hela betalningsplattformen med principen att teamet ägde allt end-to-end — ingen startup-kostnad, inga dolda avgifter, inga bindande kontrakt. PayPal köpte dem för 2,2 miljarder dollar 2018. Ägarskap i Vogels mening: de ägde inte bara koden, de ägde _problemet_.

---

**Egenskap 5: Bli en polymat (Become a Polymath)**

Vogels etymologi:

> "It has nothing to do with math. The 'math' comes from the Greek word 'manthanein,' which means to learn. It's about having deep domain experience, but also knowledge that spans many different subjects."

Vogels huvudexempel — Leonardo da Vinci:

- Målare, ingenjör, ekonom, uppfinnare
- > "Da Vinci probably was the absolute best example of a polymath because he worked across so many different disciplines."

- Vogels:

  > "I do not expect you all to become a Da Vinci. But you should expand your knowledge beyond deep domain expertise."

Vogels koncept — I-formade vs T-formade utvecklare:

Slide 1: I-formad utvecklare

- Djup och högt specialiserad i ett område
- Vertikal expertis, men smal horisontell förståelse

Slide 2: T-formad utvecklare

- Samma djup, men med bred horisontell kunskap över flera discipliner
- > "Great developers combine depth with breadth"

Vogels huvudexempel — Jim Gray:

Slide 1: Vem var Jim Gray?

- Vogels mentor och vän
- Turingpristagare — uppfinnaren av transaktioner
- > "Every transaction you do today, we have Jim to thank for this."

Slide 2: Jim Grays "20 questions"-utmaning

- > "Give me 20 questions, 20 important questions that you want to ask of your data, and I will design the system for you."
- Arbetade med Sloan Digital Sky Survey — ett av de första massiva dataseten, banbrytande för beräkningsastronomi

Slide 3: Serverrumshistorien

- Jim gick in i serverrummet i Baltimore
- 30 sekunder senare gick han ut
- Sa att databaslayouten var fel
- > "By just listening to the rattling of the discs, he knew that there was way too much random access."
- Decenniers erfarenhet hade gett honom ett sjätte sinne för hur system _borde_ bete sig
- De designade om arkitekturen — prestandan förbättrades dramatiskt

Slide 4: Varför Jim var T-formad, inte I-formad

- Hans nyfikenhet sträckte sig långt bortom databaser
- Han förstod människor, affärer och ett brett spektrum av teknologier
- Det var _bredden_ som gjorde djupet så kraftfullt

Vogels praktiska råd:

> "A database developer who understands front-end performance or cost-aware architectures can make better architectural choices because they see how their work shapes the overall system."

> "That breadth of knowledge gives you the perspective to improve what you build because you understand the trade-offs."

> "Develop depth in your domain, but cultivate the range to connect to multiple disciplines and ideas."

_(Humor: "Polymati för en Mensa-publik borde vara hemmaplan. Ni är ju redan T-formade — problemet är att T:et ibland ser mer ut som ett I med en väldigt ambitiös hatt.")_

**Svenskt/nordiskt komplement — Polymati:**

- **Daniel Ek och Spotify:** Började sitt första företag vid 13 — byggde hemsidor åt klasskamraters föräldrar. Sökte jobb på Google, blev nekad, och startade istället Spotify. New Yorker beskrev honom med det svenska begreppet _jantelagen_ — "the Scandinavian code of humility and restraint is strong in him." Men hans styrka var aldrig djup teknisk expertis i en sak — det var bredden: han förstod musik, teknik, juridik (licensavtal med skivbolag), användarupplevelse och affärsmodeller. Han löste inte piratkopiering med bättre DRM — han löste det med en bättre _produkt_. T-formad i Vogels mening: djup i produkttänkande, bred i allt annat.

- **Linus Torvalds (igen):** Inte bara en briljant kärnprogrammerare — han skapade också Git, versionskontrollsystemet som idag används av praktiskt taget alla mjukvaruutvecklare i världen. Två helt olika domäner (operativsystemkärnor och distribuerad versionskontroll), båda revolutionerade av samma person. Polymaten personifierad.

#### Akt 5: Från teori till handling — Mekanismer, inte intentioner

Vogels citat:

> "Good intentions don't work. Mechanisms do."

Detta är kärnan i egenskap 4 (Be an Owner) — men det förtjänar en egen akt eftersom det är den mest handlingsbara delen av hela keynoten.

**Vogels huvudexempel — Jeff Bezos och Andon Cord:**

Slide 1: Bakgrunden

- I Amazons tidiga dagar var chefer tvungna att spendera två dagar per år i kundtjänst och ta samtal — för att verkligen förstå kundernas upplevelse
- Jeff Bezos satt bredvid en kundtjänstagent
- Telefonen ringde, systemet visade kundens orderhistorik
- _Innan kunden sa ett ord_ sa agenten till Jeff: "She's gonna return that table."

Slide 2: Hur visste hon?

> "70% of those tables are coming back because there's some drop shipper that doesn't really know how to package them right."

- Alla visste om problemet. Alla hade goda intentioner. Ingenting förändrades.

Slide 3: Mekanismen

- Bezos introducerade Amazons version av Toyotas Andon Cord
- Toyota-principen:

  > "No car should leave the production line with a known defect. Any engineer on the line could pull the cord and bring the whole manufacturing line to a standstill until the defect was fixed."

- Amazons version: kundtjänstagenter fick en knapp för att omedelbart markera en produkt som osäljbar → larm gick till ansvarigt team → problemet _måste_ fixas
- Problemet försvann.

Slide 4: Insikten

> "Before this, everybody already had good intentions. But until we introduced the mechanism, nothing changed."

**Vogels exempel — S3 Durability Reviews:**

- När en ingenjör föreslår en ändring som kan påverka datahållbarhet (durability), pausar de och modellerar riskerna
- De skriver ner ändringarna, listar varje tänkbart hot, kartlägger skyddsåtgärder
- Effekten:

  > "It turns durability from a property of code into a habit of the organization. It makes engineers think in failure modes, not happy paths."

Slide-poäng: Mekanismer konverterar goda intentioner till konsekventa resultat.

**Vogels om kodgranskning i AI-eran:**

Slide 1: Varför kodgranskning är viktigare nu

> "Models can generate code faster than we can understand it. So the review becomes the control point to restore balance."

> "It is where we bring human judgment back into the loop, and make sure that the software actually does what we expect it to do."

Slide 2: Människa-till-människa-granskning

- Vogels uppmanade explicit till _mer_ human-to-human code reviews
- > "When senior and junior engineers work through code together, it becomes one of the most effective learning mechanisms we have."

- Seniora ingenjörer: mönsterigenkänning och hårt förvärvat omdöme
- Juniora ingenjörer: fräscha ögon, ser ofta detaljer andra missar

> "This is how we transfer knowledge, and how we grow the next generation of builders."

> "AI will change many things, but the craft is still learned person to person."

Kopplingen till The Kernel: Amy Herzogs artikel "Guardrails, Not Speedbumps" — säkerhet ska vara räcken som håller dig på vägen, inte farthinder som saktar ner dig. Samma princip som Andon Cord.

**Praktiska mekanismer för renässansutvecklaren (sammanfattning för slide):**

- Spec-driven development: krav → design → uppgifter _innan_ AI genererar kod
- Kodgranskning människa-till-människa — viktigare, inte mindre viktig, i AI-eran
- Durability reviews / verifieringschecklistor vid varje release
- Andon Cord-principen: vem som helst kan stoppa bandet
- Automatiserad testning i CI/CD-pipelines
- Automatiserad resonering (automated reasoning) mot specifikationer

#### Avslutning: Det osynliga arbetet

Vogels avslutade sin sista keynote med att tala om stolthet i det osynliga arbetet. Han tog ett vardagligt exempel:

> "When you build something like an app, do customers ever think about all the work that goes underneath? An Amazon customer will click a button and the package arrives. Do they think about the people that maintain the catalog, that do the supply chain? Your customers are never going to tell you that your database engineers are doing amazing work."

Och sedan kärnan:

> "I believe it is important for all of us to have pride in our work. In the unseen systems that stay up for the night. In clean deployments. The rollbacks that nobody notices. Most of what we build, nobody will ever see. And the only reason why we do this well is our own professional pride in operational excellence."

> "That is what defines the best builders. They do the things properly, even when nobody's watching."

**Vogels sammanfattning av ramverket (slide):**

1. Var nyfiken och fortsätt lära dig
2. Tänk i system
3. Kommunicera med precision
4. Var en ägare — du bygger det, du äger det
5. Bli en polymat — bredda ditt T

**Vogels T-shirt och Metallica-citatet:**

Vogels bar en T-shirt på sin sista keynote med Metallica-text (från "Nothing Else Matters"):

> "Trust I seek and I find in you. An open mind for a different view. And nothing else matters."

Tillit, öppenhet, olika perspektiv. Det är renässansutvecklaren i tre rader.

**De sista orden:**

> "When I look at the work that you deliver every day, I see that commitment everywhere. So for that, I am immensely proud of you. Thank you for all that you do."

_Paus._

> "Two more words."

> "Werner, out."

_(Mikrofonen faller. Ljuset släcks.)_

Efter 14 år hade han förtjänat den utgången.

---

**Kopplingen till The Kernel och öppningsscenen:**

Här kan Erik knyta ihop säcken genom att plocka upp The Kernel igen — tidningen han höll i öppningsscenen. Colm MacCárthaighs artikel "AWS is a Magic Trick" handlar om exakt det Vogels avslutade med: det osynliga arbetet, samarbetet bakom kulisserna, magin som ingen ser.

Och SkyNet-scenen från prologen? Den var det osynliga arbetets _motsats_ — kod som ingen förstod, skickad till produktion utan granskning, utan ägarskap, utan stolthet. Renässansutvecklaren är den som vägrar göra det.

---

### Workshop-teaser

_Är du redo att gå från teori till praktik? Direkt efter föreläsningen håller Erik en separat workshop där vi tillämpar renässansutvecklarens principer och bygger multi-agent-system i Kiro — spec-driven, med mekanismer istället för intentioner, och med den sortens ägarskap som Vogels predikade._

---

### Om presentatören

Erik har i 16 år arbetat med AWS och de senaste åren med Ericsson och deras AI-utveckling. Han har sett paradigmskiften komma och gå — och vet att de som överlever dem aldrig är de som kodar snabbast, utan de som förstår mest.

---

### Källor och vidare läsning

**Primärkällor — The Kernel (thekernel.news)**
Amazons fysiska tidning som delades ut på re:Invent 2025. Alla artiklar publicerade 3 december 2025:

- Werner Vogels, "The Dawn of the Renaissance Developer" — Vogels egen artikel om ramverket (2026 Tech Prediction, 3 min)
- Andy Warfield, "A Little Bit Uncomfortable" — Om obehaget som signal för tillväxt, direkt kopplad till Yerkes-Dodson-lagen i Akt 4 (Editorial, 5 min)
- Marc Brooker, "LLMs as Parts of Systems" — Hur LLM:er integreras i mjukvarusystem, relevant för systemtänkande i Akt 4 (Agentic Development, 5 min)
- Werner Vogels & Byron Cook, "Proving the Promise: Trust in AI Systems" — Om automatiserad resonering, AI-säkerhet och verifierbarhet, kopplad till verifieringsskuld i Akt 3 (Interview, 10 min)
- Clare Liguori, "Prototypes Before PRFAQs" — Om snabb prototypning i AI-åldern, kopplad till Kiro och spec-driven development i Akt 4 (Opinion, 3 min)
- Arron Bailiss, "When Agent Orchestration is the Obstacle" — Om multi-agent-system, relevant för workshopen (Agentic Development, 2 min)
- Amy Herzog, "Guardrails, Not Speedbumps" — Om säkerhet som möjliggörare, kopplad till mekanismer i Akt 5 (Security, 2 min)
- Colm MacCárthaigh, "AWS is a Magic Trick" — Om samarbete och skalning bakom kulisserna, kopplad till det osynliga arbetet i avslutningen (Exclusive, 4 min)

Alla artiklar finns på [thekernel.news](https://thekernel.news/)

**Keynote och recaps:**

- Werner Vogels keynote, AWS re:Invent 2025 ([SiliconANGLE](https://siliconangle.com/2025/12/05/amazon-cto-werner-vogels-foresees-rise-renaissance-developer-final-keynote-aws-reinvent/))
- "A Farewell Keynote With a Warning (and a Playbook)" ([Build with AWS, Substack](https://buildwithaws.substack.com/p/werner-vogels-last-reinvent-keynote))
- "How to Become a Renaissance Builder in the AI Era" ([YC's Blog](https://lyc.fyi/posts/ai-renaissance-builder/))
- "Renaissance Developer Framework" ([SJ Ramblings](https://sjramblings.io/renaissance-developer-framework/))
- Detaljerad keynote-sammanfattning med transkript ([Ernest Chiang](https://www.ernestchiang.com/en/posts/2025/aws-reinvent-2025-special-closing-keynote-with-dr-werner-vogels/))

**Akademiska och tekniska referenser:**

- Donella Meadows, "Leverage Points: Places to Intervene in a System" (1999)
- Veracode 2025 GenAI Code Security Report
- Yerkes-Dodson Law (stress-performance-kurvan)

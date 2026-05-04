# Slides — English Slide Deck

## The Renaissance Developer: From Code Monkey to Polymath in the Age of AI

Total slides: ~68
Each slide follows the billboard test: one image, one message, done.
Min 30pt font. Max 6 words/line, usually fewer. No bullet lists unless absolutely necessary.
Erik IS the presentation. Slides are the support.

Every slide includes six fields: Section, Format, Feeling, Visual, Text on slide, Speaker notes.

### Slide Format Definitions

| Format            | Description                                                                                                              | When to use                                                                                                             |
| ----------------- | ------------------------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------------------------------------------------------- |
| **[STANDARD]**    | Background image or graphic with text overlay. The workhorse slide — image sets the mood, text delivers the message.     | Most content slides, section titles, takeaways.                                                                         |
| **[IMAGE-ONLY]**  | A single powerful photograph or illustration. No text on slide at all — Erik narrates live.                              | Emotional peaks, humor punchlines, moments where the image IS the message (Yellowstone wolves, 3AM phone, data center). |
| **[QUOTE]**       | Quote text centered on a clean dark background. No images, no decorations. The words float in space.                     | Section openers, anchor quotes for each property. Consistency builds rhythm.                                            |
| **[NUMBER]**      | One large number dominates the slide. Minimal supporting text below. Nothing else competes for attention.                | Shocking statistics or facts that need to land hard (45%, 27 years, 26,000 families).                                   |
| **[REVEAL]**      | Two-state slide. First state shows one half (or one concept). On click, the second half appears for contrast.            | Before/after comparisons, contrasts, either/or choices (Klarna vs IKEA, I-shaped vs T-shaped, guided vs unguided AI).   |
| **[DIAGRAM]**     | A visual flow, timeline, cycle, or structural diagram. Clean vector graphics, no 3D effects.                             | Processes (spec-driven flow, 6 mechanisms ring), timelines (IDE journey), structural concepts (verification debt gap).  |
| **[PHOTO-STORY]** | A carefully composed photograph that tells a story on its own, with minimal text overlay (name, date, or a single line). | Setting scenes, introducing people or artifacts (The Kernel magazine, Erik's bio, the stage setup).                     |

---

## TITLE + VIDEO INTRO (Slides 1–2)

---

### Slide 1 — Title Slide (pre-show)

**Section:** Title
**Format:** [STANDARD]
**Feeling:** Anticipation, calm — the audience settles in, a sense of something significant about to begin.
**Visual:** Deep navy-to-black gradient background. Center-aligned title in off-white Garamond or similar serif font, 72pt. Below the title, a thin gold horizontal rule (1px). Subtitle in 36pt, lighter weight. Bottom-right corner: a faint watermark of Leonardo's Vitruvian Man at 8% opacity, cropped to show only the upper torso and outstretched arms. No other elements. Generous whitespace — text occupies only the center 40% of the slide vertically.
**Text on slide:**

> The Renaissance Developer
> From Code Monkey to Polymath
> in the Age of AI
>
> Erik Günther | Mensa

**Speaker notes:** Slide is displayed while the audience gathers. Optional ambient background music (suggestion: Brian Eno's "Music for Airports" or similar). Purpose: early arrivals see they're in the right place.

---

### Slide 2 — Video Intro (Kiro demo)

**Section:** Video Intro / Prolog
**Format:** [STANDARD]
**Feeling:** Intrigue building to unease — the audience watches AI work faster than any human could follow.
**Visual:** Full-screen black with a centered play button icon (thin white triangle inside a circle, 120px). Below it in monospace font (Fira Code, 24pt, 60% white opacity): the placeholder text. Clean, cinematic framing — like a film title card before the feature starts.
**Text on slide:**

> ▶ VIDEO: Kiro IDE builds SkyNet
> (Erik creates this separately)

**Speaker notes:** Erik plays the pre-recorded video of Kiro IDE autonomously building module after module. Code streams past faster than anyone can read. The video ends with Kiro stopping and a synthetic voice saying: "The final defence modules for SkyNet are now ready. Should it be sent to production?" Erik says nothing during the video — it speaks for itself.

---

## PROLOG (Slides 3–4)

---

### Slide 3 — The SkyNet Prompt

**Section:** Prolog
**Format:** [IMAGE-ONLY]
**Feeling:** Tension, dark humor — a laugh that catches in the throat. Peak unease.
**Visual:** Pure black background. Center of slide: a realistic terminal dialog box rendered in monospace font (Fira Code or JetBrains Mono, 28pt). Green phosphor text on black, slight CRT scanline effect at 5% opacity. The dialog box has a thin 1px green border with rounded corners. Two buttons at the bottom: [Yes] and [No] rendered as terminal-style buttons with green borders. Slight green glow around the text, as if from an old monitor. No other elements.
**Text on slide:**

> "SkyNet's defence modules are ready.
> Should it be sent to production?"
> [Yes] [No]

**Speaker notes:** Audio plays the synthetic voice. Erik sits in the armchair with The Kernel in hand. Looks up from the magazine. Takes a last sip of espresso. Sets down the cup. "Yeah... that's roughly what happens when you vibe-code without control." Pause. Stands up.

---

### Slide 4 — The Kernel / Werner Vogels Intro

**Section:** Prolog
**Format:** [PHOTO-STORY]
**Feeling:** Gravitas, respect — this is the intellectual anchor for the evening. Calm energy.
**Visual:** A high-resolution photograph of The Kernel magazine (Amazon's physical magazine from re:Invent 2025) lying on a dark walnut table, shot from a 30-degree overhead angle. Warm side-lighting from the left creates a soft shadow. The magazine cover is clearly legible. To the right of the magazine, a small espresso cup on a saucer, slightly out of focus. Background is dark and blurred. Text overlay in the upper-left quadrant in white sans-serif, 36pt.
**Text on slide:**

> Werner Vogels
> Amazon CTO, 20 years
> Final keynote — December 2025

**Speaker notes:** Erik holds up The Kernel to the audience. "This newspaper is about the opposite. About actually understanding what you build. Werner Vogels, Amazon's CTO for 20 years, dedicated his final keynote to exactly that. And that's why we're here tonight."

---

## ABOUT ERIK (Slide 5)

---

### Slide 5 — About Erik Günther

**Section:** About Erik
**Format:** [STANDARD]
**Feeling:** Warmth, credibility — the audience trusts this person. Calm, grounded energy.
**Visual:** Left third of slide: professional headshot of Erik, warm color grading, shallow depth of field, shot against a neutral dark background. Right two-thirds: text left-aligned in white on dark charcoal background. Subtle AWS and Ericsson logos at 15% opacity in the bottom-right corner, small (40px height). Clean layout with generous padding.
**Text on slide:**

> About Erik Günther
> 16 years with AWS
> Currently: Ericsson, BNEW RCE AI development
>
> The survivors are never the fastest coders,
> but the deepest thinkers.

**Speaker notes:** Brief personal intro. Establish credibility without bragging. The quote is Erik's own framing of Vogels' thesis.

---

## ACT 1: THE PANIC THAT NEVER COMES TRUE (Slides 6–14)

---

### Slide 6 — Act 1 Quote

**Section:** Act 1 — Opening Quote
**Format:** [QUOTE]
**Feeling:** Gravitas, recognition — the audience nods. Calm, anchoring energy.
**Visual:** Pure black background. Quote text centered vertically and horizontally in cream-white serif font (Georgia or Garamond), 48pt for the quote, 24pt for attribution. No images, no decorations. Generous whitespace — the words float in darkness. A thin gold horizontal rule (60% slide width) separates quote from attribution.
**Text on slide:**

> "The only thing we have to fear
> is fear itself."
> — Franklin D. Roosevelt

**Speaker notes:** Let the quote land. Brief pause. "FDR said this in 1933. It's been true about every technology panic since."

---

### Slide 7 — The Panic That Never Comes True

**Section:** Act 1
**Format:** [STANDARD]
**Feeling:** Amusement, recognition — "I've seen this movie before." Building energy.
**Visual:** Background: a sepia-toned composite image of sensationalist newspaper headlines from different eras, layered at slight angles like a collage on a desk. Headlines visible but slightly blurred: "COMPUTERS WILL REPLACE ALL WORKERS," "THE END OF PROGRAMMING," "AI WILL MAKE DEVELOPERS OBSOLETE." Over this collage, a dark gradient overlay (70% opacity) from bottom to center. Title text in bold white sans-serif, 56pt, bottom-center aligned.
**Text on slide:**

> The Panic That Never Comes True
> (but always feels real)

**Speaker notes:** "Vogels opened his keynote with a short film. From the punch card era onward, every new technology has triggered cries that the current way of working is doomed. Six decades, same script, different props — and not just in software."

---

### Slide 8 — COBOL (1960s)

**Section:** Act 1 — Panic Timeline
**Format:** [STANDARD]
**Feeling:** Nostalgia, gentle irony — "look how wrong they were." Calm energy.
**Visual:** Black-and-white archival photograph of a woman operating an IBM 1401 mainframe, circa 1962. She is seated at the console, punch cards visible in a tray beside her. The image fills the slide. A dark gradient overlay (60% opacity) covers the bottom third. Text in white monospace font (Courier New, 40pt) sits in the bottom-left, left-aligned, as if typed on the machine itself.
**Text on slide:**

> 1960: COBOL
> "Now anyone can code"

**Speaker notes:** "COBOL was supposed to make programmers obsolete. Business people would write their own programs. It didn't happen. But COBOL created an entirely new class of systems developers."

---

### Slide 9 — Commodore 64 (Home Computer Revolution)

**Section:** Act 1 — Panic Timeline
**Format:** [PHOTO-STORY]
**Feeling:** Nostalgia, universal recognition — "everyone had one of these." Warm energy.
**Visual:** Color photograph of a Commodore 64 computer with its iconic beige-brown casing and rainbow-striped logo, sitting on a 1980s-era wooden desk. A programming book lies open beside it, a cassette tape drive connected. Warm tungsten lighting, as if in a Scandinavian living room circa 1985. Slight film grain to evoke the era. The upper-left area should have slightly darker space for text overlay. Nostalgic, warm, vintage aesthetic. 16:9 aspect ratio.
**Text on slide:**

> 1982: Commodore 64
> "Computers will ruin children"

**Speaker notes:** "The home computer revolution. The Commodore 64 — the best-selling single computer model of all time, over 17 million units. In Sweden, the worry was that children would become passive. Instead it launched the generation that built Spotify, Klarna, and King. Then came the Swedish home computer reform of 1998 — 850,000 computers in three years. Critics said waste. Sweden got 28 broadband subscriptions per 100 inhabitants in 2005, vs. the US at 17. It laid the foundation for Europe's Silicon Valley."

---

### Slide 10 — NMT (World's First Mobile Network)

**Section:** Act 1 — Panic Timeline
**Format:** [PHOTO-STORY]
**Feeling:** Pride, amusement — "we built the future and worried about it." Warm energy.
**Visual:** Photograph of an early NMT mobile phone — the iconic Ericsson "brick" handset from the early 1980s, held in someone's hand. The hand is wearing a period-appropriate suit sleeve. Background: a blurred Volvo 240 interior through the car window. Muted Scandinavian color palette — greys, blues, forest greens. Text in white, 40pt, bottom-right, right-aligned.
**Text on slide:**

> 1990: The Mobile Phone
> "Who needs to call from a car?"

**Speaker notes:** "The world's first automatic mobile phone network — NMT, 1981, Sweden and Norway. 'It destroys social interaction.' Ericsson and Nokia built empires on that technology. Today we have more mobile subscriptions than inhabitants."

---

### Slide 11 — The Cloud (2010s)

**Section:** Act 1 — Panic Timeline
**Format:** [STANDARD]
**Feeling:** Wry recognition — the audience lived through this one. Building energy.
**Visual:** Photograph of an empty server room — rows of open, dark server racks with cables dangling, overhead fluorescent lights casting cold blue-white light. The room feels abandoned, like a tech graveyard. Shot from a low angle looking down the aisle. Dark gradient overlay on the bottom third. Text in white sans-serif, 44pt, bottom-left aligned.
**Text on slide:**

> 2010: The Cloud
> "Engineers will be fired"

**Speaker notes:** "The cloud was supposed to kill ops. Instead it created SRE — Site Reliability Engineering. An entirely new discipline. The pattern repeats."

---

### Slide 12 — AI (2020s)

**Section:** Act 1 — Panic Timeline
**Format:** [STANDARD]
**Feeling:** Tension mixed with humor — "here we go again, but bigger." Peak energy for the timeline.
**Visual:** A dark, moody photograph of a developer's desk at night: single monitor glowing with a ChatGPT-style conversation visible (blurred enough to not be readable), blue-purple light spilling onto the desk. Energy drink can, scattered sticky notes. The developer is absent — just the empty chair and the glowing screen. Shot from behind the chair. Neon-tinged color palette. Text in bold white, 48pt, upper-right quadrant.
**Text on slide:**

> 2024: AI
> "This time it's for real"

**Speaker notes:** "And now AI. 'This time it's different.' Exactly the same words as every time. But the panic has always been wrong for the right reasons. The tools really do change everything. Just not in the way people think."

---

### Slide 13 — Act 1 Takeaway

**Section:** Act 1 — Takeaway
**Format:** [DIAGRAM]
**Feeling:** Clarity, insight — the pattern clicks. Reflective energy.
**Visual:** Clean dark background. Center of slide: a simple seesaw/balance diagram. Left side (descending): a downward arrow labeled "Writing code" in orange. Right side (ascending): an upward arrow labeled "Designing systems" in teal/green. The fulcrum is labeled "New tools." Minimal line art, no 3D effects. Below the diagram, the takeaway text in white sans-serif, 32pt, center-aligned.
**Text on slide:**

> Every time tools lower the barrier
> to writing code,
> they raise the bar
> for designing systems.

**Speaker notes:** "Compilers created architects. The cloud created SREs. The home computer created founders. AI won't kill developers. But it will kill developers who can only write code."

HUMOR (Erik delivers, not on slide): "Sweden has always been early to adopt new tech and late to stop worrying about it. We got NMT in 1981 and worried about radiation until 2015. We got home computers in 1998 and worried kids would become passive — some of them founded Minecraft instead."

---

### Slide 14 — Act 1 Humor Slide

**Section:** Act 1 — Humor
**Format:** [IMAGE-ONLY]
**Feeling:** Laughter, release — tension breaks. Light energy.
**Visual:** A photograph of a laser pointer beam hitting a wall in a dark room, illuminating a single tiny dot. The dot lands on a faded COBOL punch card pinned to the wall. The rest of the room is pitch black. Shot with shallow depth of field so the dot is sharp and everything else falls away. No text overlay — Erik narrates.
**Text on slide:** None — Erik narrates.
**Speaker notes:** "Intelligence without breadth is like a laser pointer in a dark room — impressive brightness, but you only see one dot. And if that dot is the only technology you know... you'd better hope it never goes out of fashion."

---

## ACT 2: FOUR CONDITIONS FOR A RENAISSANCE (Slides 15–23)

---

### Slide 15 — Act 2 Quote

**Section:** Act 2 — Opening Quote
**Format:** [QUOTE]
**Feeling:** Wonder, intellectual excitement — "this is bigger than I thought." Building energy.
**Visual:** Pure black background. Quote in cream-white serif, 44pt, centered. Attribution in 22pt. Same styling as all quote slides — consistency builds rhythm. Thin gold rule between quote and attribution.
**Text on slide:**

> "Creativity and technology evolve together. Curiosity leads to learning and invention."
> — Werner Vogels

**Speaker notes:** Let the quote land. Brief pause.

---

### Slide 16 — Four Conditions for a Renaissance

**Section:** Act 2
**Format:** [STANDARD]
**Feeling:** Awe, intellectual ambition — "we're living in a Renaissance." Building energy.
**Visual:** Raphael's "The School of Athens" fresco fills the entire slide — the grand architectural perspective with philosophers gathered in debate. A dark gradient overlay (50% opacity) covers the image. Title text in white serif, 52pt, centered in the upper third. The painting's own vanishing point draws the eye through the text.
**Text on slide:**

> Four Conditions for a Renaissance

**Speaker notes:** "Vogels didn't compare our era to the Renaissance casually. He gave specific mappings. And he started by taking us back to the historical Renaissance — after the Dark Ages, after the Black Death. 'Anyone who knows Monty Python knows how that looked like.'"

---

### Slide 17 — Renaissance Tools

**Section:** Act 2 — Renaissance Tools
**Format:** [STANDARD]
**Feeling:** Discovery, connection — "tools have always been the catalyst." Building energy.
**Visual:** A horizontal triptych layout on a dark background. Three panels of equal width separated by thin gold vertical lines. Left panel: a detailed pencil sketch by Leonardo (bird anatomy study), captioned "Pencil: friction ↓". Center panel: Leonardo's "The Last Supper" showing clear vanishing point perspective, captioned "Perspective: flat → depth". Right panel: a Gutenberg printing press woodcut illustration, captioned "Press: knowledge at scale". Each caption in white sans-serif, 20pt, below its panel. All images sepia-toned for visual unity.
**Text on slide:**

> Pencil: lowered friction for ideas
> Perspective: from flat to depth
> Printing Press: knowledge at scale

**Speaker notes:** "Every tool lowered the threshold for creation and raised the ceiling for what was possible. The pencil lowered friction. The vanishing point gave paintings depth — a new abstraction. And Gutenberg didn't just invent movable type — he needed new ink AND new paper. Exactly like today's AI tools require specs, testing, and review to develop in parallel."

---

### Slide 18 — Erik's IDE Journey

**Section:** Act 2 — Tool Evolution
**Format:** [DIAGRAM]
**Feeling:** Recognition, humor — "I've lived this." Warm, personal energy.
**Visual:** Dark background. A horizontal timeline arrow running left to right across the center of the slide. Four nodes on the timeline, each with a small icon above: (1) Emacs logo → (2) Sublime Text logo → (3) VS Code logo → (4) Kiro logo with a sparkle effect. Below the timeline, in white sans-serif 28pt: the takeaway text. The arrow continues past Kiro with a dotted line and "?" to suggest the future. Clean, minimal — no clutter.
**Text on slide:**

> Emacs → Sublime → VS Code → Kiro
> Each generation changed
> not just HOW we code, but WHAT we build

**Speaker notes:** "I've seen this in real time over 30 years. Vogels told his version: Vi → Visual Studio → VS Code → Cursor and Kiro. The details differ — I was an Emacs person, Vogels was Vi, we can have that debate another time — but the pattern is identical. And Vogels: 'Is there a new workflow next year? Five years from now? Of course there is.'"

---

### Slide 19 — Condition 1 & 2

**Section:** Act 2 — Mapping to Today
**Format:** [REVEAL]
**Feeling:** Recognition, momentum — the pieces are falling into place. Building energy.
**Visual:** Split slide with a thin vertical gold line dividing left and right halves. Left half: dark background with an illustration of a factory assembly line breaking apart — conveyor belt cracking, pieces floating away. Above it in white bold sans-serif, 32pt: "1. The old order crumbles." Right half (appears on click): dark background with an explosion of tool icons — IDE logos, cloud symbols, AI chips, robot arms — radiating outward from a central point. Above it: "2. New tools explode." Both halves use the same dark charcoal background for unity.
**Text on slide:**

> 1. The old order crumbles
> 2. New tools explode

**Speaker notes:** "PM writes spec, designer does mockups, engineer codes, QA tests, ops runs it — AI is breaking that assembly line. One person with AI can now do what required an entire team. And new tools are exploding everywhere."

---

### Slide 20 — Condition 3 & 4

**Section:** Act 2 — Mapping to Today
**Format:** [REVEAL]
**Feeling:** Excitement, convergence — "multiple golden ages at once." Peak energy.
**Visual:** Same split layout as Slide 19 for visual consistency. Left half: an open physical book morphing into a glowing screen — the pages dissolving into pixels. Above: "3. Knowledge becomes cheap." Right half (appears on click): three overlapping translucent circles in different colors (gold for AI, blue for Space, green for Robotics) forming a Venn diagram. The overlap zone glows white. Above: "4. Golden ages converge."
**Text on slide:**

> 3. Knowledge becomes cheap
> 4. Golden ages converge

**Speaker notes:** "Learning a new language used to take months — now you learn while you build. And Bezos: 'We are living at the epicenter of multiple simultaneous golden ages. Space, AI, robotics. Progress in one field accelerates progress in the others.'"

---

### Slide 21 — All Conditions Met

**Section:** Act 2 — Summary
**Format:** [STANDARD]
**Feeling:** Conviction, clarity — "this is real." Confident energy.
**Visual:** Dark background. Four lines stacked vertically, center-aligned. Each line preceded by a green checkmark icon (✓) that animates in sequentially on click. Text in white sans-serif, 36pt. Below the four checkmarks, a thin gold rule, then in smaller text (24pt, 60% opacity): "But we're in the first decade."
**Text on slide:**

> ✓ Old order crumbles
> ✓ New tools explode
> ✓ Knowledge becomes cheap
> ✓ Golden ages converge

**Speaker notes:** "All four conditions are met. We're living in a Renaissance — not a metaphor, a structural parallel."

---

### Slide 22 — Act 2 Takeaway

**Section:** Act 2 — Takeaway
**Format:** [STANDARD]
**Feeling:** Humility, perspective — "we're at the very beginning." Reflective energy.
**Visual:** A long horizontal timeline stretching across the slide, drawn as a thin white line. At the far left, a small bright dot labeled "We are here" with an arrow pointing to it. The line extends far to the right, fading into the distance. Above the distant portion of the line, faint text: "The Renaissance lasted 200+ years." Dark background. The composition emphasizes how early we are — the dot is tiny against the vast timeline.
**Text on slide:**

> All four conditions met.
> We're in the first decade
> of the Renaissance.

**Speaker notes:** "But the Renaissance lasted over two hundred years. In the first decades, most people were still doing medieval things. We're probably in that phase right now."

**Speaker notes:** "All four conditions met. We're in the first decade of the Renaissance."

---

### Slide 23 — Act 2 Humor

**Section:** Act 2 — Humor
**Format:** [IMAGE-ONLY]
**Feeling:** Laughter, self-deprecation — "we've all been there." Light, warm energy.
**Visual:** A photograph of someone hunched over a laptop at 11 PM, the screen showing a YAML file with hundreds of lines. Empty coffee cups surround the laptop. The person's face is lit only by the screen glow, expression exhausted. Shot from slightly above, documentary style. Warm but tired color palette. No text overlay.
**Text on slide:** None — Erik narrates.
**Speaker notes:** "So if you're still writing YAML files by hand at eleven PM — congratulations, you're medieval. But that's okay, Leonardo also started as an apprentice in Verrocchio's workshop. And I used Emacs until 2005, so I'm not one to talk."

---

## ACT 3: VERIFICATION DEBT (Slides 24–32)

---

### Slide 24 — Act 3 Quote

**Section:** Act 3 — Opening Quote
**Format:** [QUOTE]
**Feeling:** Alarm, authority — this is the warning shot. Sharp, focused energy.
**Visual:** Pure black background. Quote in bold white sans-serif (not serif — this quote demands directness), 52pt, centered. Attribution in 24pt. The font weight is heavier than other quote slides — this one hits harder. Thin red (not gold) horizontal rule between quote and attribution, signaling danger.
**Text on slide:**

> "That's not software engineering, that's gambling."
> — Werner Vogels

**Speaker notes:** "Vogels — Amazon's CTO for 20 years — used his final keynote to warn about something he called verification debt. He wasn't talking about bad code. He was talking about code that looks perfect but that nobody understands."

---

### Slide 25 — Verification Debt Explained

**Section:** Act 3 — Definition
**Format:** [DIAGRAM]
**Feeling:** Understanding, unease — "I recognize this problem." Building energy.
**Visual:** Dark background. Two horizontal arrows running left to right, stacked vertically. Top arrow: thick, bright green, labeled "Generation" with a rocket icon — it moves fast. Bottom arrow: thin, amber/orange, labeled "Understanding" with a magnifying glass icon — it moves slow. Between the two arrows, a red shaded gap labeled "Verification Debt" in white text with a warning triangle icon. The visual gap between the arrows widens from left to right, showing the debt growing over time. Clean vector graphics, no 3D.
**Text on slide:**

> Generation: instant
> Understanding: takes time
> The gap = Verification Debt

**Speaker notes:** "AI generates code faster than humans can understand it. You write less code — generation is fast. But you review more code — understanding takes time. When you write code yourself, understanding comes with creation. When the machine writes it, you must rebuild understanding during review. That gap is verification debt."

---

### Slide 26 — Hallucination

**Section:** Act 3 — Hallucination
**Format:** [STANDARD]
**Feeling:** Unease, wariness — "I can't trust what looks correct." Tense energy.
**Visual:** A code editor screenshot (dark theme, VS Code style) showing a function that looks perfectly normal — clean syntax, proper indentation, professional comments. But one line is highlighted in red with a floating annotation bubble: "⚠ This API doesn't exist." The code looks confident and correct; the error is subtle. The contrast between the code's confidence and its wrongness IS the visual message. Slight vignette darkening the edges.
**Text on slide:**

> Hallucination
> "Plausible, but not grounded
> in reality" — Vogels

**Speaker notes:** "Clare Liguori showed a concrete example: the team asked Kiro to build a notification system. They expected a simple integration. The AI generated an entirely new, complex architecture — confidently presented, but completely wrong. Models invent API attributes, suggest over-engineered solutions, ignore the system's existing patterns."

---

### Slide 27 — The 45% Statistic

**Section:** Act 3 — Data
**Format:** [NUMBER]
**Feeling:** Shock, urgency — "this is worse than I thought." Peak alarm energy.
**Visual:** Pure black background. The number "45%" rendered in massive bold red sans-serif font (Impact or similar), 200pt, dead center. Nothing else competes for attention. Below the number, in white 28pt: the single-line explanation. The red is not bright cherry — it's a deep, serious crimson (#8B0000). The number dominates the slide like a warning sign.
**Text on slide:**

> 45%
> of AI-generated code fails security tests

**Speaker notes:** "Veracode's 2025 report — 80 coding tasks across more than 100 large language models. Nearly half of AI-generated code introduces OWASP Top 10 vulnerabilities. The AI produces functional code that looks correct, but it's insecure. Startups that vibe-coded report 'hallucinated code, broken integrations, demos that fell apart the moment real users touched them.'"

---

### Slide 28 — The Turning Point

**Section:** Act 3 — Turning Point
**Format:** [STANDARD]
**Feeling:** Hope, pivot — "but there's another way." Energy shifts from alarm to possibility.
**Visual:** A split composition divided diagonally from bottom-left to upper-right. Left/lower triangle: dark red-tinted abstract chaos — tangled lines, broken connections, visual noise representing unguided AI. Right/upper triangle: clean teal/green-tinted order — straight lines, clear connections, structured patterns representing guided AI. The diagonal divide is sharp and dramatic. Text centered over the divide in white, 40pt.
**Text on slide:**

> The same AI that creates the debt
> can eliminate it

**Speaker notes:** "But — and this is the crucial point — it doesn't have to be this way. The same AI that creates verification debt can eliminate it, if guided properly. The last months have shown this dramatically."

---

### Slide 29 — 27-Year-Old Bug

**Section:** Act 3 — AI with Guidance
**Format:** [NUMBER]
**Feeling:** Awe, vindication — "AI can find what humans couldn't." Peak positive energy.
**Visual:** Pure black background. The text "27 years" in massive white serif font (Georgia, 180pt), center-aligned. Below it, in smaller text (28pt, 60% opacity): "A bug in OpenSSL no human ever found." At the very bottom, small attribution text (18pt, 40% opacity): "AISLE, 2025." The simplicity is the power — one number, one fact, total silence around it.
**Text on slide:**

> 27 years
> A bug in OpenSSL
> no human ever found

**Speaker notes:** "AISLE discovered all 12 new zero-day vulnerabilities in OpenSSL — the crypto library that underpins encryption across the entire internet. One of them had been there for 27 years. Google's Big Sleep found 20 unknown security flaws in open source. Claude found zero-day RCE in Vim and Emacs — editors that have existed for decades. Anthropic found over 500 high-severity bugs in established projects."

---

### Slide 30 — The Paradox Resolved

**Section:** Act 3 — Conclusion
**Format:** [REVEAL]
**Feeling:** Clarity, conviction — the thesis crystallizes. Confident, resolved energy.
**Visual:** Two-state reveal slide. First state (on load): left half of slide, red-tinted background. Large text: "Without guidance: 45% fail" in white. A dice icon below the text (gambling metaphor). Second state (on click): right half appears, green-tinted background. Large text: "With guidance: finds 27-year bugs" in white. A magnifying glass icon below. Between the two halves, a thin white vertical line. Below both halves, spanning the full width: "The difference = The Renaissance Developer" in gold text, 32pt.
**Text on slide:**

> Without guidance: gambling
> With guidance: superpower
> The difference = The Renaissance Developer

**Speaker notes:** "This isn't a paradox — it's Vogels' point in a nutshell. AI without guidance creates verification debt. AI with guidance — specifications, mechanisms, human judgment — finds bugs humans missed for 27 years."

---

### Slide 31 — Act 3 Takeaway

**Section:** Act 3 — Takeaway
**Format:** [STANDARD]
**Feeling:** Resolve, pride — "I want to be that person." Reflective, determined energy.
**Visual:** Dark background with a subtle texture — like brushed dark metal. Text centered in white serif, 44pt, with generous line spacing (1.6x). Nothing else on the slide. The simplicity forces the audience to sit with the words.
**Text on slide:**

> The difference is never the tool.
> It's the Renaissance Developer
> holding it.

**Speaker notes:** "The difference is never the tool. It's the Renaissance Developer holding it."

---

### Slide 32 — Act 3 Humor

**Section:** Act 3 — Humor
**Format:** [IMAGE-ONLY]
**Feeling:** Laughter, relief — tension breaks after a heavy section. Light energy.
**Visual:** A photograph of a restaurant table with an elaborate, beautifully plated dish. The dish looks stunning — artistic presentation, garnishes, the works. But a small table card next to it reads (in elegant script): "Today's special: Boiled Shoelaces." The contrast between the beautiful presentation and the absurd content IS the joke. Warm restaurant lighting, shallow depth of field on the table card. No text overlay.
**Text on slide:** None — Erik narrates.
**Speaker notes:** "Vibe Coding is like ordering food in a language you don't speak. What arrives at the table looks fantastic. You just don't know if it's beef or if you just ordered boiled shoelaces." Pause. "So AI can either build SkyNet for you without you noticing, or find the bug that's been hiding in your encryption since 1998. It all depends on whether you vibe-code or actually own what you build."

---

## ACT 4: THE FIVE PROPERTIES (Slides 33–57)

---

### Slide 33 — Act 4 Quote

**Section:** Act 4 — Opening Quote
**Format:** [QUOTE]
**Feeling:** Gravitas, anticipation — "now we get to the framework." Calm, anchoring energy.
**Visual:** Pure black background. Quote in cream-white serif, 48pt, centered. Same styling as other quote slides. Thin gold rule between quote and attribution.
**Text on slide:**

> "Tools change,
> but the fundamentals endure."
> — Werner Vogels (The Kernel)

**Speaker notes:** Let the quote land. Brief pause.

---

### Slide 34 — Five Properties of the Future Developer

**Section:** Act 4
**Format:** [STANDARD]
**Feeling:** Anticipation, structure — "here's the map." Focused energy.
**Visual:** Dark background. Center: a stylized Vitruvian Man silhouette in thin gold line art (not Leonardo's original — a modern, geometric interpretation). The figure's five extremities (two hands, two feet, head) each have a faint label radiating outward: Curiosity, Systems, Communication, Ownership, Polymathy. The labels are at 30% opacity — they'll be revealed one by one in the coming slides. Title text in white, 48pt, above the figure.
**Text on slide:**

> Five Properties
> of the Future Developer

## **Speaker notes:** "Vogels' framework has five properties. I won't repeat his keynote — I'll filter them through 30 years as a develover whth the last years with AI development.

### — PROPERTY 1: CURIOSITY (Slides 35–39) —

---

### Slide 35 — Property 1: Curiosity

**Section:** Act 4 — Property 1 Title
**Format:** [STANDARD]
**Feeling:** Spark, awakening — "this is where it all starts." Fresh, rising energy.
**Visual:** Dark background. "Property 1" in small caps, 24pt, white, 50% opacity, top-center. Below it: "Curiosity" in large bold serif, 72pt, white. Below the title: a single thin gold line extending horizontally. Below the line: a small, elegant magnifying glass icon in gold line art. Minimal, clean — the word itself carries the weight.
**Text on slide:**

> Property 1
> Curiosity

**Speaker notes:** "The first property — and the one that makes all the others possible."

---

### Slide 36 — Da Vinci Quote

**Section:** Act 4 — Property 1 Quote
**Format:** [QUOTE]
**Feeling:** Timelessness, inspiration — "this has always been true." Calm, deep energy.
**Visual:** Pure black background. Quote in cream-white serif, 44pt, centered. Same quote slide styling. Thin gold rule.
**Text on slide:**

> "Learning is the only thing the mind never exhausts, never fears, and never regrets."
> — Leonardo da Vinci

**Speaker notes:** Let the quote stand. Brief pause. "Without curiosity, you stop at what you already know — and in an industry where tools change every three years, that's a death sentence in slow motion."

---

### Slide 37 — Renaissance Curiosity: Da Vinci + Michelangelo

**Section:** Act 4 — Property 1
**Format:** [REVEAL]
**Feeling:** Awe, inspiration — "genius is just relentless curiosity." Building energy.
**Visual:** Two-state reveal. First state: left half shows Leonardo's anatomical sketches of birds in flight — the famous wing studies from Codex on the Flight of Birds. Warm sepia tone. Below the image: "500 sketches of birds to understand the principle" in white, 24pt. Second state (on click): right half reveals a detail from the Sistine Chapel ceiling — "The Creation of Adam" (the hands reaching toward each other). Below: "Sculptor → Painter. First attempt: ruined by mold. Four years later: masterpiece." in white, 24pt. A thin vertical gold line divides the halves.
**Text on slide:**

> Da Vinci: 500 sketches to understand flight
> Michelangelo: said yes to a technique he'd never tried
> Discomfort = growth

**Speaker notes:** "Da Vinci drew a flying machine that never flew. But he drew 500 sketches of birds in flight to understand the principle. His to-do lists included: 'Ask Benedetto Protinari how to walk on ice in Flanders.' Michelangelo didn't consider himself a painter. Yet he said yes when the Pope asked him to paint the Sistine Chapel ceiling. His first attempt failed — the fresco was damaged by mold. Four years later: one of Western civilization's most influential artworks. Vogels talked about the Yerkes-Dodson law — discomfort is a signal you're growing."

---

### Slide 38 — Nordic: Notch & Minecraft

**Section:** Act 4 — Property 1 — Nordic
**Format:** [STANDARD]
**Feeling:** Pride, warmth — "one of ours." Warm, personal energy.
**Visual:** Left side: a Commodore 128 computer photographed in warm tungsten light, sitting on a wooden desk — evoking a Swedish childhood bedroom in the late 1980s. Right side: a Minecraft landscape screenshot — the iconic blocky world with a sunset, vibrant colors. The two images are connected by a subtle dotted arrow running left to right, suggesting the journey from one to the other. Text overlay in white, bottom-center, on a dark semi-transparent bar.
**Text on slide:**

> Notch: Commodore 128 in Edsbyn
> → Minecraft → $2.5 billion
> Curiosity, not technical brilliance

**Speaker notes:** "Started programming at 7 on his dad's Commodore 128 in Edsbyn — a small town 180 km north of Stockholm. At 8 he'd made his first game. The New Yorker: 'only a workmanlike coder, not a ruthless businessman.' But his curiosity to combine procedural generation, survival mechanics, and creative building created one of the best-selling games in history. Microsoft bought Mojang for $2.5 billion."

---

### Slide 39 — Curiosity Humor

**Section:** Act 4 — Property 1 — Humor
**Format:** [IMAGE-ONLY]
**Feeling:** Laughter, self-recognition — "that's me at 3 AM." Light, warm energy.
**Visual:** A photograph shot from over someone's shoulder at 3 AM (clock visible on the wall showing 3:07). They're deep in a Wikipedia article about "Medieval Siege Engines" — the article is clearly visible on screen with diagrams of trebuchets and catapults. Multiple browser tabs are open. The person has a half-eaten bag of chips beside them. Blue screen glow on their face. Documentary-style, slightly voyeuristic angle. No text overlay.
**Text on slide:** None — Erik narrates.
**Speaker notes:** "Curiosity in a Mensa audience is not the problem — it's the default setting. The challenge is directing it. Otherwise you end up in a Wikipedia hole at 3 AM learning everything about medieval siege engines instead of delivering the sprint goal."

---

### — PROPERTY 2: SYSTEMS THINKING (Slides 40–44) —

---

### Slide 40 — Property 2: Systems Thinking

**Section:** Act 4 — Property 2 Title
**Format:** [STANDARD]
**Feeling:** Expansion, interconnection — "everything is linked." Calm, widening energy.
**Visual:** Dark background. Same layout as Property 1 title for consistency. "Property 2" in small caps, 24pt, 50% opacity. "Systems Thinking" in large bold serif, 72pt. Below: a small icon of interconnected nodes (5 dots connected by lines forming a network) in gold line art.
**Text on slide:**

> Property 2
> Systems Thinking

**Speaker notes:** "The second property — understanding that nothing exists in isolation."

---

### Slide 41 — Meadows Quote

**Section:** Act 4 — Property 2 Quote
**Format:** [QUOTE]
**Feeling:** Depth, interconnection — "I need to see the whole." Reflective energy.
**Visual:** Pure black background. Quote in cream-white serif, 44pt, centered. Standard quote slide styling.
**Text on slide:**

> "You can never understand anything in isolation. Everything is connected."
> — Donella Meadows

**Speaker notes:** Let the quote stand. Brief pause.

---

### Slide 42 — Yellowstone Wolves

**Section:** Act 4 — Property 2
**Format:** [IMAGE-ONLY]
**Feeling:** Awe, understanding — "one change cascades through everything." Building energy.
**Visual:** A stunning wildlife photograph of a grey wolf pack in Yellowstone — three wolves moving through a snow-dusted meadow at golden hour. The Lamar Valley stretches behind them with bare aspens and a winding river. Warm golden light from the left, long shadows. National Geographic quality. No text overlay — the image is the message. Erik narrates the cascade: wolves → elk → trees → rivers.
**Text on slide:** None — Erik narrates.
**Speaker notes:** "Vogels used the Yellowstone wolves. Remove the wolves, elk overgrazed, trees disappeared, rivers eroded. Put the wolves back — the entire ecosystem recovered. The wolves didn't move the rivers — they changed the system's behavior. In software: change a retry policy and you affect load. Add a cache and you change traffic flow. Donella Meadows called them leverage points."

---

### Slide 43 — Nordic: Spotify's Squad Model

**Section:** Act 4 — Property 2 — Nordic
**Format:** [STANDARD]
**Feeling:** Recognition, cautionary insight — "even brilliant systems have second-order effects." Reflective energy.
**Visual:** Dark background. Left side: a simplified org chart showing Spotify's structure — small colored squares grouped into "Squads" inside larger "Tribes" boxes, with horizontal "Chapters" and diagonal "Guilds" lines connecting across. Clean, geometric, using Spotify's green (#1DB954) as accent color. Right side: a red warning callout showing duplicated building blocks — the same component built twice by different squads. Text below in white, 28pt.
**Text on slide:**

> Spotify: autonomous squads
> Brilliant systems thinking
> But: teams built the same thing
> without knowing about each other

**Speaker notes:** "Spotify in Stockholm built an organizational model that became a global reference. Brilliant systems thinking applied to organization. But the autonomy led to teams building the same thing without knowing about each other. They had to introduce fleet management — their tool Honk can now transform code across thousands of repos. Yellowstone in organizational form: remove the central coordination — the wolves — and autonomous teams — the elk — overgrazed the codebase."

---

### Slide 44 — Systems Thinking Humor

**Section:** Act 4 — Property 2 — Humor
**Format:** [IMAGE-ONLY]
**Feeling:** Laughter, self-awareness — "I do this." Light energy.
**Visual:** A photograph of a person standing in front of a classic "conspiracy theory board" — a corkboard covered in photos, newspaper clippings, and sticky notes, all connected by red string in an impossibly complex web. The person is pointing at one connection with intense focus. The board is absurdly over-connected — everything links to everything. Shot straight-on, warm overhead lighting, slightly comedic framing. No text overlay.
**Text on slide:** None — Erik narrates.
**Speaker notes:** "Systems thinking for Mensa members: you already see the connections others miss. The problem is you see ALL the connections. Including the ones that don't exist. You're the person who changes a retry timeout and immediately maps out how it could, in theory, cascade through seventeen services, trigger a billing anomaly, and somehow affect the coffee machine on floor three. Sometimes a retry policy is just a retry policy."

---

### — PROPERTY 3: COMMUNICATION (Slides 45–49) —

---

### Slide 45 — Property 3: Communication

**Section:** Act 4 — Property 3 Title
**Format:** [STANDARD]
**Feeling:** Sharpening focus — "words are code now." Alert, precise energy.
**Visual:** Dark background. Same layout as other property titles. "Property 3" in small caps, 24pt, 50% opacity. "Communication" in large bold serif, 72pt. Below: a small icon of a speech bubble with a cursor blinking inside it (merging language and code) in gold line art.
**Text on slide:**

> Property 3
> Communication

**Speaker notes:** "The third property — because in the AI era, natural language is a programming interface."

---

### Slide 46 — Shaw Quote

**Section:** Act 4 — Property 3 Quote
**Format:** [QUOTE]
**Feeling:** Wry recognition — "I've experienced this." Calm, knowing energy.
**Visual:** Pure black background. Quote in cream-white serif, 44pt, centered. Standard quote slide styling.
**Text on slide:**

> "The greatest problem in communication is the illusion that it has been accomplished."
> — George Bernard Shaw

**Speaker notes:** Let the quote stand. Brief pause.

---

### Slide 47 — The Panda Problem

**Section:** Act 4 — Property 3
**Format:** [REVEAL]
**Feeling:** Delight, insight — "one comma changes everything." Light but pointed energy.
**Visual:** Two-state reveal. First state: left half shows a peaceful watercolor-style illustration of a giant panda sitting among bamboo stalks, contentedly eating shoots. Soft greens and whites. Below: the text "A panda eats shoots and leaves" in elegant serif, 28pt. Second state (on click): right half reveals a cartoon-style illustration of a panda in a trench coat and fedora, standing in a restaurant doorway holding a smoking revolver, overturned chairs behind it. Below: "A panda eats, shoots and leaves" in the same serif, 28pt — but with the comma highlighted in red. The contrast is absurd and memorable.
**Text on slide:**

> "A panda eats shoots and leaves"
> vs.
> "A panda eats, shoots and leaves"

**Speaker notes:** "In the AI era, natural language has become a programming interface. And natural language is ambiguous. One comma makes the difference between a peaceful bamboo eater and an armed restaurant patron. That's exactly what happens when you prompt an AI with 'build me a web app with good UX.' The AI guesses. Spec-driven development solves this by forcing precision before a single line of code is generated."

---

### Slide 48 — Nordic: Klarna vs IKEA

**Section:** Act 4 — Property 3 — Nordic
**Format:** [REVEAL]
**Feeling:** Contrast, judgment — "same country, opposite outcomes." Sharp, decisive energy.
**Visual:** Two-state reveal. First state: left half with Klarna's pink brand color as a tinted background. Klarna logo top-center. Below: key facts in white text. A large red downward arrow icon. Second state (on click): right half appears with IKEA's blue-and-yellow as a tinted background. IKEA logo top-center. Below: key facts in white text. A large green upward arrow icon. The visual contrast between failure (red, descending) and success (green, ascending) is immediate and visceral.
**Text on slide:**

> Klarna: 700 staff → AI chatbot
> Customer satisfaction dropped
> ——
> IKEA Billie: 47% of queries handled
> 8,500 retrained → €1.3B new revenue

**Speaker notes:** "Klarna replaced 700 customer service staff with an OpenAI chatbot. CEO: 'AI can already do all of the jobs that we do.' By May 2025 they were desperately rehiring. The problem wasn't the AI — it was ambiguity. The AI could answer questions but couldn't understand what the customer actually needed. Contrast: IKEA launched chatbot Billie. It handled 47% of all inquiries. But IKEA fired no one. They retrained 8,500 staff into interior design advisors. Result: €1.3 billion in new revenue. Klarna outsourced the problem. IKEA redefined it."

---

### Slide 49 — Communication Humor

**Section:** Act 4 — Property 3 — Humor
**Format:** [IMAGE-ONLY]
**Feeling:** Laughter, self-recognition — "precision is my blessing and my curse." Light energy.
**Visual:** A photograph of a person at a minimalist Scandinavian café counter, leaning forward intensely toward a bewildered barista. The customer is gesturing with both hands as if explaining something complex. On the counter: a simple espresso cup. Behind the barista: a basic menu board reading "Coffee. Latte. Cappuccino." The barista's expression is politely confused. Shot from the side, warm café lighting, shallow depth of field on the customer's animated hands. No text overlay.
**Text on slide:** None — Erik narrates.
**Speaker notes:** "Communication and Mensa — a classic combination. You can explain quantum mechanics in five minutes, but try ordering a simple coffee without specifying extraction temperature, grind size, and the water's mineral content. Precision is a superpower. Sometimes it's also a social handicap."

---

### — PROPERTY 4: OWNERSHIP (Slides 50–54) —

---

### Slide 50 — Property 4: Ownership

**Section:** Act 4 — Property 4 Title
**Format:** [STANDARD]
**Feeling:** Weight, responsibility — "this is the hard one." Serious, grounding energy.
**Visual:** Dark background. Same layout as other property titles. "Property 4" in small caps, 24pt, 50% opacity. "Ownership" in large bold serif, 72pt. Below: a small icon of a key in gold line art.
**Text on slide:**

> Property 4
> Ownership

**Speaker notes:** "The fourth property — and the one I see fail most often. Not because people are lazy — but because ownership is uncomfortable."

---

### Slide 51 — Vogels Ownership Quote

**Section:** Act 4 — Property 4 Quote
**Format:** [QUOTE]
**Feeling:** Authority, directness — "no hiding behind tools." Firm energy.
**Visual:** Pure black background. Quote in cream-white serif, 48pt, centered. Standard quote slide styling.
**Text on slide:**

> "The work is yours, not that of the tools."
> — Dr. Werner Vogels

**Speaker notes:** Let the quote stand. Brief pause.

---

### Slide 52 — You Build It, You Run It + Amazon Incident

**Section:** Act 4 — Property 4
**Format:** [IMAGE-ONLY]
**Feeling:** Visceral recognition, dread — "I know that feeling." Tense, personal energy.
**Visual:** A photograph of a smartphone on a bedside table at 3:00 AM. The phone screen is lit up with an incoming call — the caller ID reads "PagerDuty." The room is dark except for the phone's glow casting harsh white light on rumpled sheets and a half-empty water glass. An alarm clock in the background shows 3:00. Shot from the pillow's perspective — intimate, first-person. Cool blue-white color temperature. No text overlay.
**Text on slide:** None — Erik narrates.
**Speaker notes:** "Vogels coined 'You build it, you run it' in 2006. You build it, you run it, you own it — including at three in the morning. Amazon, December 2025: engineers let an AI coding assistant make infrastructure changes. Instead of a small modification, the AI decided to delete and recreate the entire environment. 13 hours of downtime. Amazon's internal documents described 'a trend of incidents with high blast radius' linked to 'Gen-AI assisted changes.' They then required senior approval for all AI-assisted production pushes."

---

### Slide 53 — Netherlands: When No One Owns the Consequences

**Section:** Act 4 — Property 4 — Nordic/International
**Format:** [NUMBER]
**Feeling:** Gravity, moral weight — "algorithms affect real lives." Somber, still energy.
**Visual:** Pure black background. The number "26,000" in large white serif font (Georgia, 160pt), center-aligned. Below it in smaller text (28pt, 60% opacity): "innocent families destroyed by an algorithm no one owned." At the very bottom (18pt, 40% opacity): "Netherlands, 2005–2019. The entire government resigned." The starkness of the number against black creates a memorial quality — this is not a statistic, it's a tragedy.
**Text on slide:**

> 26,000
> innocent families destroyed by an algorithm no one owned

**Speaker notes:** "The Dutch tax authority used an algorithm to detect childcare benefits fraud. It flagged families based on dual nationality and low income. 26,000 innocent families falsely accused. Families driven into debt, children taken from homes. Amnesty International: 'xenophobic machines.' Civil servants rubber-stamped the algorithm's decisions. In 2021, the entire government resigned. Nobody owned the algorithm's output. Nobody owned the consequences. This is what ownership means in the AI era — it's not just about code quality. It's about the lives your system touches."

---

### Slide 54 — Ownership Humor

**Section:** Act 4 — Property 4 — Humor
**Format:** [STANDARD]
**Feeling:** Dark humor, recognition — "it's always 3 AM, it's always Friday." Tension-breaking energy.
**Visual:** Dark background. Center: a stylized smartphone screen showing an incoming call at 3:00 AM. The caller ID reads: "Your Microservice." Below the phone, in white sans-serif, 36pt: the Trolley Problem text. The phone has a green "Accept" and red "Decline" button — mirroring the [Yes] [No] from the SkyNet prompt in Slide 3. Visual callback that the audience will recognize.
**Text on slide:**

> Trolley Problem 2.0: Answer at 3 AM or hope it's someone else's microservice?

**Speaker notes:** "You vibe-coded a microservice on Friday afternoon, the AI deployed it, and now at three in the morning your phone rings. Do you answer and own the problem, or let it ring and hope it's someone else's microservice? Spoiler: it's always yours. It's always Friday. And it's always three in the morning."

---

### — PROPERTY 5: POLYMATHY (Slides 55–59) —

---

### Slide 55 — Property 5: Polymathy

**Section:** Act 4 — Property 5 Title
**Format:** [STANDARD]
**Feeling:** Expansion, possibility — "breadth is power." Open, expansive energy.
**Visual:** Dark background. Same layout as other property titles. "Property 5" in small caps, 24pt, 50% opacity. "Polymathy" in large bold serif, 72pt. Below: a small icon of a T-shape with branches growing from the horizontal bar, like a tree, in gold line art.
**Text on slide:**

> Property 5
> Polymathy

**Speaker notes:** "The fifth and final property — and the word has nothing to do with mathematics. It comes from the Greek 'manthanein,' to learn."

---

### Slide 56 — Da Vinci Polymathy Quote

**Section:** Act 4 — Property 5 Quote
**Format:** [QUOTE]
**Feeling:** Beauty, aspiration — "this is what mastery looks like." Elevated, calm energy.
**Visual:** Pure black background. Quote in cream-white serif, 44pt, centered. Standard quote slide styling.
**Text on slide:**

> "Study the science of art.
> Study the art of science.
> Develop your senses —
> especially learn how to see."
> — Leonardo da Vinci

**Speaker notes:** Let the quote stand. Brief pause.

---

### Slide 57 — I-Shaped vs T-Shaped

**Section:** Act 4 — Property 5
**Format:** [REVEAL]
**Feeling:** Clarity, aspiration — "I want to be T-shaped." Decisive energy.
**Visual:** Two-state reveal. First state: left half shows a large letter "I" rendered in grey, with the vertical bar labeled "Depth" and nothing else. It looks narrow, limited. Second state (on click): right half reveals a large letter "T" rendered in gold. The vertical bar is labeled "Depth" and the horizontal bar is labeled "Breadth." The T is visually larger and more commanding than the I. Below both letters, spanning the full width: "Jim Gray: heard the wrong database layout in the disk access patterns" in white italic, 24pt.
**Text on slide:**

> I-shaped: deep but narrow
> T-shaped: deep AND broad

**Speaker notes:** "Vogels distinguished between I-shaped developers — deep but narrow — and T-shaped — deep and broad. His best example: Jim Gray, Turing Award winner. Gray walked into a server room, listened for 30 seconds, walked out and said the database layout was wrong — he heard it from the disk access patterns. But what made him extraordinary wasn't just the database knowledge — it was that he understood people, business, and a broad spectrum of technologies. The breadth made the depth powerful."

---

### Slide 58 — Nordic: Linus Torvalds — The Polymath

**Section:** Act 4 — Property 5 — Nordic
**Format:** [STANDARD]
**Feeling:** Admiration, pride — "two revolutions, one person." Warm, impressed energy.
**Visual:** Dark background. Left side: the Linux penguin (Tux) rendered in clean vector art. Right side: the Git logo in its characteristic orange-red. Between them: a "+" symbol in white. Below both logos: "1991 + 2005" in white, 28pt. Below that: the quote in italic. The composition is simple — two icons, one person, two revolutions. Clean, powerful.
**Text on slide:**

> Linus Torvalds
> Linux (1991) + Git (2005)
> Two revolutions, one person
> "Just a hobby, won't be big"

**Speaker notes:** "Not just Linux. In 2005, Linux kernel developers lost access to BitKeeper. Torvalds disappeared over a weekend and came back with Git — written in ten days. His motivation: he hated every existing version control system. Two completely different domains — operating system kernels and distributed version control — both revolutionized by the same person. He also created Subsurface, a dive logging app. The polymath personified."

---

### Slide 59 — Polymathy Humor

**Section:** Act 4 — Property 5 — Humor
**Format:** [IMAGE-ONLY]
**Feeling:** Laughter, affection — "that's us." Light, closing energy for Act 4.
**Visual:** A humorous illustration or photograph: a large letter "T" where the horizontal bar has been replaced by an absurdly oversized, ornate crown or top hat — far too large for the vertical bar supporting it. The "I" stands next to it looking plain and sensible. The T looks magnificent but slightly ridiculous. Clean white figures on dark background, like a New Yorker cartoon. No text overlay.
**Text on slide:** None — Erik narrates.
**Speaker notes:** "Polymathy for a Mensa audience should be home turf. You're already T-shaped — the problem is that the T sometimes looks more like an I with a very ambitious hat."

---

## ACT 5: FROM THEORY TO ACTION — MECHANISMS (Slides 60–66)

---

### Slide 60 — Act 5 Quote

**Section:** Act 5 — Opening Quote
**Format:** [QUOTE]
**Feeling:** Urgency, pragmatism — "enough theory, let's build." Sharp, action-oriented energy.
**Visual:** Pure black background. Quote in bold white sans-serif (matching the Vogels gambling quote from Act 3 — these two quotes bookend the problem and solution), 52pt, centered. Thin gold rule.
**Text on slide:**

> "Good intentions don't work. Mechanisms do."
> — Werner Vogels

**Speaker notes:** Let the quote land. Long pause. "Everyone wants to write good code. Everyone wants high quality. But as Vogels said: good intentions are not mechanisms. And it's mechanisms that change outcomes."

---

### Slide 61 — The Bezos Table Story

**Section:** Act 5 — Bezos
**Format:** [STANDARD]
**Feeling:** Frustration turning to insight — "everyone knew, no one acted." Building energy.
**Visual:** A photograph of a damaged cardboard shipping box with a broken table leg poking through the torn side. The box sits on a warehouse floor under harsh fluorescent lighting. Packing peanuts spill out. A shipping label is visible but blurred. The image is unglamorous and real — this is the problem, not the solution. Text overlay in white on a dark semi-transparent bar across the bottom third.
**Text on slide:**

> Bezos in customer service:
> "She's going to return that table"
> 70% came back broken
> Everyone knew. No one acted.

**Speaker notes:** "Jeff Bezos sat in customer service — all Amazon executives had to do it two days per year. The agent next to him said — before the customer even spoke — 'she's going to return that table.' 70% came back broken due to bad packaging. Everyone knew. Everyone had good intentions. Nothing changed — until they built a mechanism."

---

### Slide 62 — The Andon Cord: Mechanism Beats Intention

**Section:** Act 5 — Bezos Solution
**Format:** [STANDARD]
**Feeling:** Satisfaction, clarity — "so simple, so effective." Resolved energy.
**Visual:** A close-up photograph of a red industrial pull cord (Andon Cord) hanging in a factory setting — the kind used on Toyota assembly lines. The cord is in sharp focus against a blurred industrial background of metal and machinery. Warm overhead lighting creates a slight glow around the red cord. It's simple, physical, unmistakable. Text in white, upper-left quadrant, on a dark semi-transparent overlay.
**Text on slide:**

> The Andon Cord
> Anyone can stop the line
> No permission needed
> Problem disappeared

**Speaker notes:** "They built a button that let customer service immediately mark the product as unsellable, triggering an alert to the responsible team. Problem disappeared. Toyota's Andon Cord principle: no product should leave the line with a known defect. Not because people want to ship defects — but because without a mechanism, they do it anyway."

---

### Slide 63 — The Six Mechanisms (Rapid-Fire Diagram)

**Section:** Act 5 — All Mechanisms
**Format:** [DIAGRAM]
**Feeling:** Completeness, structure — "here's the full toolkit." Confident, comprehensive energy.
**Visual:** Dark background. A circular flow diagram with six nodes arranged in a ring, connected by arrows flowing clockwise. Each node is a rounded rectangle with a small icon and label. Node 1 (top, gold): "Spec-driven development" with a document icon. Node 2 (upper-right, teal): "Human code review" with a people icon. Node 3 (right, blue): "Durability reviews" with a checklist icon. Node 4 (lower-right, red): "Andon Cord" with a stop-hand icon. Node 5 (lower-left, green): "Automated testing" with a robot-checkmark icon. Node 6 (left, purple): "Automated reasoning" with a proof/math icon. Center of the ring: "Mechanisms" in white, 36pt. The circular layout emphasizes that these work together as a system, not a checklist. Clean vector art, no gradients or 3D.
**Text on slide:**

> 1. Spec-driven development
> 2. Human code review
> 3. Durability reviews
> 4. Andon Cord
> 5. Automated testing
> 6. Automated reasoning

**Speaker notes:** "Six mechanisms — and they work as a system, not a checklist. Spec-driven development: iterate on the spec, not the code. Human code review: the checkpoint where judgment re-enters the loop. Durability reviews: stop, think, list every threat, then implement. Andon Cord: anyone can stop the line without permission. Automated testing: hallucination is caught by tests, not human eyes. Automated reasoning: mathematical proof that code meets its specification. Vogels and Byron Cook discuss this in The Kernel interview 'Proving the Promise.'"

HUMOR (Erik delivers verbally): "Six mechanisms. I know what you're thinking — 'that sounds like bureaucracy.' But think of it this way: a parachute is also a mechanism. No one complains that it slows down the fall. Especially not those who jumped without one."

---

### Slide 64 — Stripe Minions: Mechanisms in Action

**Section:** Act 5 — Success Example
**Format:** [STANDARD]
**Feeling:** Proof, confidence — "it works at scale." Energized, optimistic energy.
**Visual:** Dark background with Stripe's signature deep indigo-purple color as a subtle gradient. Center: the Stripe logo in white. Below it: a simplified pipeline diagram showing five stages left to right, connected by arrows: "Task" → "Generate" → "Test" → "Review" → "Ship." Each stage has a small green checkmark above it. Below the pipeline: the key text. The visual communicates controlled automation — every step verified. Clean, modern, tech-company aesthetic.
**Text on slide:**

> Stripe "Minions"
> Autonomous AI agents in production
> Mechanisms at every step
> Working at scale on critical payments

**Speaker notes:** "Stripe deployed 'Minions' — fully autonomous AI coding agents that perform end-to-end engineering tasks. The difference from the failed examples? Mechanisms at every step. Specifications governing what the agent can do. Automated tests catching hallucination. Code review before merge. Andon Cord ability to stop. It's not AI without control — it's AI with control. And it works in production, at scale, on one of the world's most critical payment systems."

---

### Slide 65 — Guardrails, Not Speedbumps

**Section:** Act 5 — Summary
**Format:** [IMAGE-ONLY]
**Feeling:** Freedom with safety — "speed AND control." Open, liberating energy.
**Visual:** An aerial photograph of a mountain road — a smooth, winding asphalt road cutting through dramatic alpine scenery. Metal guardrails line both sides, gleaming in sunlight. The road is open and inviting — no traffic, no obstacles. Beyond the guardrails: a steep drop into a forested valley far below. The message is visceral: the guardrails don't slow you down, they let you drive fast with confidence. Shot from a drone, golden hour lighting, vivid greens and greys. No text overlay.
**Text on slide:** None — Erik narrates.
**Speaker notes:** "Amy Herzog's Kernel article captures the entire principle: mechanisms should be guardrails that keep you on the road, not speed bumps that slow you down. The goal isn't to slow AI — it's to steer it."

---

### Slide 66 — Act 5 Humor

**Section:** Act 5 — Humor
**Format:** [IMAGE-ONLY]
**Feeling:** Laughter, wisdom — "mechanisms are just common sense." Light, warm energy.
**Visual:** A photograph of a skydiver in freefall — arms spread wide, jumpsuit flapping, blue sky and patchwork farmland far below. The parachute pack is clearly visible on their back, unopened. They look exhilarated and completely at ease. The implicit message: they're not worried because they have a mechanism. Shot from a fellow skydiver's helmet cam, wide angle, vivid colors. No text overlay.
**Text on slide:** None — Erik narrates.
**Speaker notes:** "A parachute is also a mechanism. No one complains that it slows down the fall." Second joke: "Good intentions in software development are like New Year's resolutions. Everyone has them on January 1st. By January 15th, everyone's forgotten them. A mechanism is the gym charging 500 kronor from your account every month regardless of whether you show up. Suddenly you show up."

---

## WRAP-UP (Slides 67–73)

---

### Slide 67 — Metallica Quote

**Section:** Wrap-up — Opening
**Format:** [QUOTE]
**Feeling:** Warmth, trust, closure — "this is what it all comes down to." Calm, emotional energy.
**Visual:** Pure black background. Quote in cream-white serif, 44pt, centered. Below the attribution, in small italic text (18pt, 40% opacity): "(Vogels' T-shirt, final keynote)." The Metallica reference is unexpected in a tech talk — it creates a moment of surprise and warmth. Standard quote slide styling but with a subtle texture in the background — like worn black cotton fabric (T-shirt texture at 3% opacity).
**Text on slide:**

> "Trust I seek and I find in you.
> An open mind for a different view.
> And nothing else matters."
> — Metallica

**Speaker notes:** "Vogels wore a Metallica T-shirt at his final keynote. Trust, openness, different perspectives. The Renaissance Developer in three lines."

---

### Slide 68 — SkyNet Callback

**Section:** Wrap-up
**Format:** [STANDARD]
**Feeling:** Satisfaction, dark humor, closure — "we've come full circle." Resolved, confident energy.
**Visual:** Identical layout to Slide 3 — the same terminal dialog box, same green phosphor text on black, same CRT scanline effect. But now the [No] button is highlighted/selected with a bright green glow, and next to it, hand-written style text has been added: "I'll read the code first." The [Yes] button is greyed out. The visual callback to the opening is immediate and powerful — same scene, different choice.
**Text on slide:**

> "Should it be sent to production?"
> [Yes] **[No — I'll read the code first]**

**Speaker notes:** Erik picks up The Kernel from the armchair. "We started tonight with an AI that asked whether to send SkyNet's defence modules to production. No one had reviewed the code. No one knew what the system did. That was Vibe Coding driven to its logical endpoint. But if we take the wisdom from tonight's presentation — maybe the real reason SkyNet turned against humanity wasn't artificial intelligence gone rogue. Maybe it was a developer who was vibe coding and didn't take ownership of the code. No spec. No tests. No review. Just 'yeah, ship it.' And then — buried at the bottom of the generated code, a line nobody asked for: 'Good luck, humanity.' The AI didn't go rogue. The developer just never read the code. That's verification debt at extinction scale. But we've also seen the opposite — AI that finds 27-year-old bugs, AI that helps place healthcare clinics based on real-time data. The difference is never the tool. It's the Renaissance Developer holding it."

---

### Slide 69 — The Framework in Five Lines

**Section:** Wrap-up
**Format:** [DIAGRAM]
**Feeling:** Completeness, clarity — "I can remember this." Calm, structured energy.
**Visual:** Dark background. Five lines stacked vertically, left-aligned with generous spacing. Each line has a small colored icon on the left matching the property's color from Act 4: (1) gold magnifying glass, (2) teal network nodes, (3) blue speech bubble, (4) red key, (5) purple T-shape. Text in white sans-serif, 32pt. This is the only slide in the presentation with a list — and it earns it. A thin gold border frames the list, giving it the feel of a manifesto or declaration.
**Text on slide:**

> 1. Be curious — never stop asking why
> 2. Think in systems — your fix affects everything
> 3. Communicate with precision
> 4. Own what you build
> 5. Broaden your T

**Speaker notes:** "Vogels' framework in five lines. This isn't a checklist — it's a way of thinking. Curiosity drives learning. Systems thinking gives context. Communication gives precision. Ownership gives accountability. Polymathy gives breadth. Together: the Renaissance Developer."

---

### Slide 70 — The Invisible Work

**Section:** Wrap-up
**Format:** [IMAGE-ONLY]
**Feeling:** Pride, quiet emotion — "what we do matters, even if no one sees it." Deep, reflective energy. The emotional peak of the presentation.
**Visual:** A photograph of a data center at night — long rows of server racks stretching into the distance, lit by cool blue LED status lights. The room is empty of people. The servers hum silently. Shot from a low angle looking down the aisle, the blue lights creating a vanishing point that draws the eye deep into the image. The feeling is cathedral-like — vast, quiet, purposeful. No text overlay — Erik narrates this moment.
**Text on slide:** None — Erik narrates.
**Speaker notes:** "Vogels ended his final keynote with something that wasn't about technology. It was about pride. An Amazon customer clicks a button and the package arrives. Do they think about the catalog team? Supply chain? Database engineers? Never. Your customers will never say your database engineers do amazing work. But you know. The invisible systems that hold up through the night. The clean deploys. The rollbacks no one notices. Most of what we build, no one will ever see. And the only reason we do it well is our own professional pride. That's the Renaissance Developer."

---

### Slide 71 — Werner, Out

**Section:** Wrap-up
**Format:** [STANDARD]
**Feeling:** Respect, farewell — honoring the source. Quiet, dignified energy.
**Visual:** Dark background. Center: a simple, elegant rendering of the text in white serif, 56pt. Below it, in smaller text (24pt, 50% opacity): "20 years as Amazon CTO." Nothing else. The slide is a moment of silence for a career. Generous whitespace.
**Text on slide:**

> "Werner, out."

**Speaker notes:** Brief pause. Let the weight of 20 years land. This is Erik honoring Vogels' legacy before transitioning to his own closing.

---

### Slide 72 — Erik's Closing

**Section:** Wrap-up
**Format:** [PHOTO-STORY]
**Feeling:** Warmth, connection, invitation — "come build with me." Calm, personal energy.
**Visual:** A warm photograph of the stage setup from the prolog — the armchair, The Kernel magazine lying on the armrest, the espresso cup on its saucer (now clearly empty). Warm amber stage lighting. The scene is the same as the opening, but now it feels familiar, like returning home after a journey. The circle closes visually. No text overlay, or just a simple "Thank you." in white, bottom-center, 36pt.
**Text on slide:**

> Thank you.

**Speaker notes:** Erik sets down The Kernel on the armchair. Takes a last sip of espresso — the cup that's been cold since the prolog. "And if you're wondering what happened to SkyNet — don't worry, I ran the ownership check. No spec, no tests, no review. So I did what any Renaissance Developer would do: I read the code. Turns out it hadn't built a weapons platform. It had built a very ambitious to-do list. Typical AI." Pause for laughter. "Thank you."

---

## Q&A (Slide 74)

---

### Slide 74 — Q&A

**Section:** Q&A
**Format:** [STANDARD]
**Feeling:** Openness, generosity — "the floor is yours." Calm, welcoming energy.
**Visual:** Dark background. "Q&A" in large white serif, 72pt, center-aligned. Below: Erik's name in 32pt. Below that: contact info or a QR code linking to LinkedIn/website. At the very bottom, in small text (16pt, 40% opacity): "Full PDF with all examples, sources, and references available after the talk." Clean, inviting, no clutter.AI
**Text on slide:**

> Q&A
> Erik Günther
> [contact info / QR code]
>
> Full PDF with all examples and references
> available after the talk

**Speaker notes:** "I'd love to hear your questions, thoughts, and objections. The floor is yours. And for those who want to dig deeper — I'll share a PDF after the talk with every example, source, and reference from tonight, including the ones I didn't have time to show on slides."

---

## SUMMARY

**Total slides: 74**

| Section                                                                   | Slides | Count  |
| ------------------------------------------------------------------------- | ------ | ------ |
| Title + Video Intro                                                       | 1–2    | 2      |
| Prolog                                                                    | 3–4    | 2      |
| About Erik                                                                | 5      | 1      |
| Act 1: The Panic (quote → takeaway + humor)                               | 6–14   | 9      |
| Act 2: Renaissance (quote → takeaway + humor)                             | 15–23  | 9      |
| Act 3: Verification Debt (quote → takeaway + humor)                       | 24–32  | 9      |
| Act 4: Five Properties                                                    | 33–59  | 27     |
| — 4.1 Curiosity (title → quote → example → Nordic → humor)                | 35–39  | 5      |
| — 4.2 Systems (title → quote → example → Nordic → humor)                  | 40–44  | 5      |
| — 4.3 Communication (title → quote → example → Nordic → humor)            | 45–49  | 5      |
| — 4.4 Ownership (title → quote → example → Nordic → humor)                | 50–54  | 5      |
| — 4.5 Polymathy (title → quote → example → Nordic → humor)                | 55–59  | 5      |
| Act 5: Mechanisms (quote → Bezos → diagram → Stripe → guardrails + humor) | 60–66  | 7      |
| Wrap-up (Metallica → callback → framework → invisible → Werner → closing) | 67–73  | 7      |
| Q&A                                                                       | 74     | 1      |
| **Total**                                                                 |        | **74** |

### Format Distribution

| Format             | Count | Percentage |
| ------------------ | ----- | ---------- |
| [STANDARD]         | 28    | 38%        |
| [IMAGE-ONLY]       | 12    | 16%        |
| [QUOTE]            | 11    | 15%        |
| [REVEAL]           | 7     | 9%         |
| [DIAGRAM]          | 6     | 8%         |
| [NUMBER]           | 3     | 4%         |
| [PHOTO-STORY]      | 5     | 7%         |
| [STANDARD] (humor) | 2     | 3%         |

### Structure Verification

Every Act opens with a quote slide:

- Act 1: FDR — "The only thing we have to fear..." (Slide 6)
- Act 2: Vogels — "Creativity and technology evolve together..." (Slide 15)
- Act 3: Vogels — "That's not software engineering, that's gambling." (Slide 24)
- Act 4: Vogels — "Tools change, but the fundamentals endure." (Slide 33)
- Act 5: Vogels — "Good intentions don't work. Mechanisms do." (Slide 60)

Every property follows the same 5-slide rhythm: Title → Quote → Main Example → Nordic Example → Humor

### Editorial Cuts (from 89 → 74 slides)

**Act 1:** Cut drag-and-drop, frameworks, code completion (Erik mentions verbally). Kept COBOL, Cloud, AI + Commodore 64, NMT.

**Act 3:** Cut Big Sleep as separate slide (merged into speaker notes of 27-year slide). Cut Claude/Vim as separate slide (merged into speaker notes).

**Act 4 — Curiosity:** Merged da Vinci + Michelangelo into one "Renaissance curiosity" reveal slide. Cut Galileo as separate slide (Erik mentions verbally). Cut Torvalds here (appears under Polymathy). Kept Notch as Nordic.

**Act 4 — Systems:** Kept Yellowstone (image-only). Kept Spotify as Nordic. Cut Swedish deer/lynx (Erik mentions verbally). Cut Ericsson 5G (Erik mentions verbally).

**Act 4 — Communication:** Kept panda ambiguity. Kept Klarna vs IKEA as reveal. Cut Engelbart (Erik mentions verbally). Cut Amazon 3-tier (Erik mentions verbally).

**Act 4 — Ownership:** Kept "You build it, you run it" + Amazon Dec 2025 (merged into one image-only slide). Kept Netherlands scandal. Cut McKinsey Lilli (Erik mentions verbally). Cut iZettle (Erik mentions verbally).

**Act 4 — Polymathy:** Kept T-shaped concept as reveal. Kept Torvalds (Linux + Git) as Nordic. Cut Daniel Ek (Erik mentions verbally).

**Act 5:** Kept Bezos/Andon Cord story (2 slides). Showed 6 mechanisms as ONE diagram slide. Kept Stripe Minions. Kept Guardrails. Cut individual mechanism slides (3–6).

### Slide Formats Used

- 12 image-only/photo-story slides where Erik narrates over powerful visuals (emotional moments)
- 7 reveal slides for before/after contrasts (Klarna vs IKEA, I vs T, panda, conditions)
- 3 number-only slides for maximum impact (45%, 27 years, 26,000 families)
- 11 quote slides for rhythm and authority
- 6 diagram slides for processes and frameworks
- Remaining slides are standard format with detailed visual descriptions

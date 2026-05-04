# The Renaissance Developer

**From Code Monkey to Polymath in the Age of AI**

A talk, article, and hands-on workshop inspired by Werner Vogels' final keynote at AWS re:Invent 2025.

---

## What's in this repo

| Path                                                                   | Description                                                                      |
| ---------------------------------------------------------------------- | -------------------------------------------------------------------------------- |
| [`renaissance_developer_article.md`](renaissance_developer_article.md) | The full article — standalone companion to the talk, with sources and references |
| [`slides_en.md`](slides_en.md)                                         | Complete slide deck (74 slides) with visual descriptions and speaker notes       |
| [`workshop/`](workshop/)                                               | Three hands-on workshops in Python, TypeScript, and Go                           |
| [`skynet_demo.sh`](skynet_demo.sh)                                     | The SkyNet demo — a simulated AI coding session (slide 2 video source)           |
| [`skynet_blame.sh`](skynet_blame.sh)                                   | The SkyNet callback — `git blame` reveals the truth (slide 68)                   |
| `media/`                                                               | Images and video used in the article and presentation                            |
| `slide_images/`                                                        | Generated slide visuals (one per slide)                                          |

## The talk in 30 seconds

Every technology panic — from COBOL to cloud to AI — follows the same pattern: the tool changes everything, but not in the way the panickers predict. Werner Vogels spent his final keynote arguing that we're living in a Renaissance, and that the developers who thrive won't be the fastest coders but the deepest thinkers.

Five properties: **Curiosity**, **Systems Thinking**, **Communication**, **Ownership**, **Polymathy**.

Six mechanisms: spec-driven development, human code review, durability reviews, the Andon Cord, automated testing, and automated reasoning.

The difference is never the tool. It's the Renaissance Developer holding it.

## Workshop

Three practical exercises that put the five properties and six mechanisms into practice using [Kiro IDE](https://kiro.dev):

1. **[Recipe API](workshop/01-recipe-api/)** — Python, ~60 min, all levels. The main workshop.
2. **[Incident Dashboard](workshop/02-incident-dashboard/)** — TypeScript/Node, ~90 min, intermediate.
3. **[Contract Analyzer](workshop/03-contract-analyzer/)** — Go, ~120 min, advanced.

Three languages on purpose — because in the AI era, the language matters less than the thinking.

See [`workshop/README.md`](workshop/README.md) for setup.

## Running the demos

The SkyNet demos are terminal scripts designed to be screen-recorded or run live:

```bash
# The vibe-coding demo (slide 2 video)
chmod +x skynet_demo.sh
./skynet_demo.sh

# The git blame callback (slide 68)
chmod +x skynet_blame.sh
./skynet_blame.sh
```

## Author

**Erik Günther** — 16 years with AWS, currently Ericsson BNEW RCE AI development.

---

> _"The survivors are never the fastest coders, but the deepest thinkers."_

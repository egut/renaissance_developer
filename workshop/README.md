# The Renaissance Workshop — Tre Koncept

Tre praktiska labb-koncept kopplade till Werner Vogels fem pelare för "The Renaissance Developer".

## Struktur

```text
workshop/
├── 01-recipe-api/         # Python — Huvudlabb (45 min)
├── 02-incident-dashboard/ # TypeScript/Node — Hemövning, medel
└── 03-contract-analyzer/  # Go — Hemövning, avancerad
```

## Vilket koncept ska jag börja med?

**Koncept 1 (Recipe API)** är det vi kör tillsammans på workshopen. Det kräver inga
förkunskaper i Python och demonstrerar hela Kiro-flödet: Spec → Agenter → Hooks → Review.

Koncept 2 och 3 är hemövningar med stigande komplexitet. Välj det språk och den domän
som intresserar dig mest.

## Varför tre olika språk?

Vi använder medvetet Python, TypeScript och Go — inte för att du ska lära dig tre
språk, utan för att visa att **språkvalet blir mindre viktigt**. Det är samma mönster
som i artikelns panik-tidslinje: från hålkort till COBOL trodde man att programmerare
skulle bli överflödiga. Istället blev _systemtänkande_ viktigare än syntax.

Med AI-verktyg som Kiro kan du arbeta i ett språk du aldrig sett förut. Det som
avgör kvaliteten är inte om du kan Go:s syntax utantill — det är om du kan
formulera krav, designa system och verifiera resultat. Renässansutvecklarens
styrka ligger i bredden, inte i att memorera semikolon.

---

## Gemensamma förberedelser

### Kiro

1. Gå till [kiro.dev](https://kiro.dev)
2. Ladda ner och installera för ditt OS
3. Logga in med ditt konto (vi tillhandahåller credits under workshopen)

### Git (valfritt för Koncept 1, krävs för Koncept 2 och 3)

Git behövs om du vill versionshantera ditt arbete. Koncept 3 kräver det
för Trunk (linting). Koncept 2 behöver det om du vill använda hooks som
triggar på git-events.

<details>
<summary><strong>🍎 macOS</strong></summary>

```bash
# Git ingår i Xcode Command Line Tools
xcode-select --install

# Eller via Homebrew
brew install git

# Verifiera
git --version
```

</details>

<details>
<summary><strong>🪟 Windows</strong></summary>

```powershell
# winget
winget install Git.Git

# Eller ladda ner från https://git-scm.com/download/win
# Välj "Git Bash" under installationen

# Verifiera (ny terminal)
git --version
```

</details>

<details>
<summary><strong>🐧 Linux</strong></summary>

```bash
# Ubuntu/Debian
sudo apt update
sudo apt install git

# Fedora
sudo dnf install git

# Arch
sudo pacman -S git

# Verifiera
git --version
```

</details>

### GitHub CLI (valfritt)

`gh` är GitHubs CLI-verktyg. Användbart om du vill skapa repos, pull requests
eller hantera issues direkt från terminalen. Inte nödvändigt för workshopen,
men bra att ha.

<details>
<summary><strong>🍎 macOS</strong></summary>

```bash
brew install gh

# Logga in
gh auth login
```

</details>

<details>
<summary><strong>🪟 Windows</strong></summary>

```powershell
winget install GitHub.cli

# Logga in (ny terminal)
gh auth login
```

</details>

<details>
<summary><strong>🐧 Linux</strong></summary>

```bash
# Ubuntu/Debian
sudo apt install gh

# Fedora
sudo dnf install gh

# Eller via Homebrew
brew install gh

# Logga in
gh auth login
```

</details>

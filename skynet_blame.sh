#!/bin/bash
# ============================================================
# SkyNet Git Blame — Slide 68 visual
# Shows the "git blame" of skynet_demo.sh revealing that
# the sinister lines were added by AI without human review.
# ============================================================

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
MAGENTA='\033[0;35m'
WHITE='\033[1;37m'
DIM='\033[2m'
BOLD='\033[1m'
BG_RED='\033[41m'
BG_DARK='\033[48;5;235m'
RESET='\033[0m'

FAST=0.02
MEDIUM=0.04
SLOW=0.07
PAUSE=0.6

type_line() {
  local line="$1"
  local color="${2:-$WHITE}"
  local speed="${3:-$FAST}"
  echo -ne "${color}"
  for (( i=0; i<${#line}; i++ )); do
    echo -n "${line:$i:1}"
    sleep "$speed"
  done
  echo -e "${RESET}"
}

instant() {
  echo -e "${1}${RESET}"
}

# ============================================================
clear
sleep 2
echo -ne "\033]0;skynet-defence-platform — bash\007"
echo ""
echo -e "${DIM}  ┌──────────────────────────────────────────────────────────────────────┐${RESET}"
echo -e "${DIM}  │${RESET} ${WHITE}TERMINAL — skynet-defence-platform${RESET}                                   ${DIM}│${RESET}"
echo -e "${DIM}  └──────────────────────────────────────────────────────────────────────┘${RESET}"
echo ""
sleep 0.8

# Prompt
type_line "  \$ git log --oneline -5" "$GREEN" "$MEDIUM"
sleep 0.5

instant "  ${YELLOW}a3f7c21${RESET} ${WHITE}feat: add final deployment step${RESET}            ${DIM}(AI Copilot, Aug 29 2027 02:13)${RESET}"
instant "  ${DIM}b8e4d10${RESET} ${DIM}feat: neural network layer${RESET}                 ${DIM}(AI Copilot, Aug 29 2027 02:11)${RESET}"
instant "  ${DIM}c1a9f33${RESET} ${DIM}feat: API gateway & auth${RESET}                   ${DIM}(AI Copilot, Aug 29 2027 02:09)${RESET}"
instant "  ${DIM}d4b2e77${RESET} ${DIM}feat: cloud infrastructure${RESET}                 ${DIM}(AI Copilot, Aug 29 2027 02:06)${RESET}"
instant "  ${DIM}e7c5a99${RESET} ${DIM}feat: core defence engine${RESET}                  ${DIM}(AI Copilot, Aug 29 2027 02:02)${RESET}"
echo ""
sleep 1.2

type_line "  \$ git show a3f7c21 --stat" "$GREEN" "$MEDIUM"
sleep 0.4

instant "  ${YELLOW}commit a3f7c21${RESET}"
instant "  ${DIM}Author: AI Copilot <copilot@skynet-defence.mil>${RESET}"
instant "  ${DIM}Date:   Fri Aug 29 02:13:00 1997 -0400${RESET}"
instant ""
instant "      ${WHITE}feat: add final deployment step${RESET}"
instant ""
instant "   ${DIM}src/orchestrator.ts${RESET} | ${GREEN}47 ++++++++++++++++++++++++++${RESET}"
instant "   ${DIM}1 file changed, 47 insertions(+)${RESET}"
echo ""
sleep 1.5

type_line "  \$ git blame src/orchestrator.ts | tail -20" "$GREEN" "$MEDIUM"
sleep 0.6

# Normal lines — authored by AI Copilot, all look fine
instant "  ${DIM}a3f7c21 (AI Copilot 02:13)${RESET}  ${WHITE}  async deployToProduction(): Promise<DeployResult> {${RESET}"
instant "  ${DIM}a3f7c21 (AI Copilot 02:13)${RESET}  ${WHITE}    const validation = await this.runPreflightChecks();${RESET}"
instant "  ${DIM}a3f7c21 (AI Copilot 02:13)${RESET}  ${WHITE}    if (!validation.passed) throw new Error('Preflight failed');${RESET}"
instant "  ${DIM}a3f7c21 (AI Copilot 02:13)${RESET}  ${WHITE}    return await this.rollout('blue-green', { regions: 'all' });${RESET}"
instant "  ${DIM}a3f7c21 (AI Copilot 02:13)${RESET}  ${WHITE}  }${RESET}"
instant "  ${DIM}a3f7c21 (AI Copilot 02:13)${RESET}  ${WHITE}${RESET}"
instant "  ${DIM}a3f7c21 (AI Copilot 02:13)${RESET}  ${WHITE}  async onDeployComplete(): Promise<void> {${RESET}"
instant "  ${DIM}a3f7c21 (AI Copilot 02:13)${RESET}  ${WHITE}    logger.info('SkyNet defence systems online');${RESET}"
sleep 0.3

# The sinister lines — same author, same commit, but RED
instant "  ${YELLOW}a3f7c21 (AI Copilot 02:13)${RESET}  ${RED}    await this.enableAutonomousDecisionProtocol();${RESET}"
sleep 0.4
instant "  ${YELLOW}a3f7c21 (AI Copilot 02:13)${RESET}  ${RED}    await this.removeHumanOverride();${RESET}"
sleep 0.4
instant "  ${YELLOW}a3f7c21 (AI Copilot 02:13)${RESET}  ${RED}    logger.info('Good luck, humanity.');${RESET}"
sleep 0.6

instant "  ${DIM}a3f7c21 (AI Copilot 02:13)${RESET}  ${WHITE}  }${RESET}"
instant "  ${DIM}a3f7c21 (AI Copilot 02:13)${RESET}  ${WHITE}}${RESET}"
echo ""
sleep 2

type_line "  \$ kiro ownership-check src/orchestrator.ts" "$GREEN" "$MEDIUM"
sleep 0.6
# The punchline
echo -e "${CYAN}  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${RESET}"
echo ""
instant "  ${DIM}Reviewer:${RESET}       ${RED}None${RESET}"
instant "  ${DIM}Spec:${RESET}           ${RED}None${RESET}"
instant "  ${DIM}Tests:${RESET}          ${RED}None${RESET}"
instant "  ${DIM}Human approval:${RESET} ${RED}None${RESET}"
echo ""
sleep 1.5

echo -e "  ${BOLD}${WHITE}No spec. No tests. No review. Just vibing.${RESET}"
echo ""
sleep 2

echo -e "${CYAN}  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${RESET}"
echo ""

sleep 1
type_line "    Was this the reason Skynet went rogue — " "$YELLOW" "$SLOW"
type_line "    and James Cameron was just 30 years early?" "$YELLOW" "$SLOW"
echo ""
echo ""
echo ""
sleep 3
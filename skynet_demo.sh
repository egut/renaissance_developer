#!/bin/bash
# ============================================================
# SkyNet Demo — Simulated Kiro AI Coding Session
# Duration: ~2 minutes
# Purpose: Slide 2 video for "The Renaissance Developer" talk
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
RESET='\033[0m'

DURATION=120  # 2 minutes in seconds
START_TIME=$(date +%s)

# Speed controls
FAST=0.02
MEDIUM=0.05
SLOW=0.08
PAUSE=0.4
SECTION_PAUSE=1.2

elapsed() {
  echo $(( $(date +%s) - START_TIME ))
}

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

fast_dump() {
  local color="${2:-$DIM}"
  echo -e "${color}${1}${RESET}"
  sleep "$FAST"
}

section_header() {
  echo ""
  echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${RESET}"
  type_line "⚡ $1" "$YELLOW" "$MEDIUM"
  echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${RESET}"
  sleep "$SECTION_PAUSE"
}

progress_bar() {
  local label="$1"
  local steps="${2:-20}"
  echo -ne "${DIM}  ${label} [${RESET}"
  for (( i=0; i<steps; i++ )); do
    echo -ne "${GREEN}█${RESET}"
    sleep 0.06
  done
  echo -e "${DIM}] ${GREEN}done${RESET}"
}

kiro_thinking() {
  echo -ne "${MAGENTA}  🤖 Kiro: ${1}${RESET}"
  for i in 1 2 3; do
    sleep 0.3
    echo -n "."
  done
  echo ""
  sleep "$PAUSE"
}

# ============================================================
# INTRO
# ============================================================
clear
sleep 5
echo ""
echo -e "${MAGENTA}"
echo "    ⠀⢀⣴⣶⣶⣦⡀⠀⠀⠀⢀⣴⣶⣦⣄⡀⠀⠀⢀⣴⣶⣶⣦⡀⠀⠀⢀⣴⣶⣶⣶⣶⣶⣶⣶⣶⣶⣦⣄⡀⠀⠀⠀⠀⠀⠀⢀⣠⣴⣶⣶⣶⣶⣶⣦⣄⡀"
echo "    ⢰⣿⠋⠁⠈⠙⣿⡆⠀⢀⣾⡿⠁⠀⠈⢻⡆⢰⣿⠋⠁⠈⠙⣿⡆⢰⣿⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠻⣦⠀⠀⠀⠀⣴⡿⠟⠋⠁⠀⠀⠀⠈⠙⠻⢿⣦"
echo "    ⢸⣿⠀⠀⠀⠀⣿⣇⣴⡿⠋⠀⠀⠀⢀⣼⠇⢸⣿⠀⠀⠀⠀⣿⡇⢸⣿⠀⠀⠀⢠⣤⣤⣤⣤⣄⠀⠀⠀⠀⣿⡆⠀⠀⣼⡟⠀⠀⠀⠀⣀⣀⣀⠀⠀⠀⠀⢻⣧"
echo "    ⢸⣿⠀⠀⠀⠀⣿⡿⠋⠀⠀⠀⢀⣾⡿⠁⠀⢸⣿⠀⠀⠀⠀⣿⡇⢸⣿⠀⠀⠀⢸⣿⠉⠉⠉⣿⡇⠀⠀⠀⣿⡇⠀⣼⡟⠀⠀⠀⣰⡿⠟⠛⠻⢿⣆⠀⠀⠀⢻⣧"
echo "    ⢸⣿⠀⠀⠀⠀⠙⠁⠀⠀⢀⣼⡟⠁⠀⠀⠀⢸⣿⠀⠀⠀⠀⣿⡇⢸⣿⠀⠀⠀⢸⣿⣶⣶⡶⠋⠀⠀⠀⠀⣿⠇⢰⣿⠀⠀⠀⢰⣿⠀⠀⠀⠀⠀⣿⡆⠀⠀⠀⣿⡆"
echo "    ⢸⣿⠀⠀⠀⠀⠀⠀⠀⠀⠹⣷⡀⠀⠀⠀⠀⢸⣿⠀⠀⠀⠀⣿⡇⢸⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣼⠟⠀⢸⣿⠀⠀⠀⢸⣿⠀⠀⠀⠀⠀⣿⡇⠀⠀⠀⣿⡇"
echo "    ⢸⣿⠀⠀⠀⠀⠀⣠⡀⠀⠀⠹⣷⡄⠀⠀⠀⢸⣿⠀⠀⠀⠀⣿⡇⢸⣿⠀⠀⠀⠀⣤⣄⠀⠀⠀⠀⠹⣿⡅⠀⠀⠸⣿⠀⠀⠀⠸⣿⠀⠀⠀⠀⠀⣿⠇⠀⠀⠀⣿⠇"
echo "    ⢸⣿⠀⠀⠀⠀⣾⡟⣷⡀⠀⠀⠘⣿⣆⠀⠀⢸⣿⠀⠀⠀⠀⣿⡇⢸⣿⠀⠀⠀⠀⣿⡟⣷⡀⠀⠀⠀⠘⣿⣆⠀⠀⢻⣧⠀⠀⠀⠹⣷⣦⣤⣤⣾⠏⠀⠀⠀⣼⡟"
echo "    ⢸⣿⠀⠀⠀⠀⣿⡇⠹⣷⡀⠀⠀⠈⢻⡇⠀⢸⣿⠀⠀⠀⠀⣿⡇⢸⣿⠀⠀⠀⠀⣿⡇⠹⣷⡀⠀⠀⠀⠈⢻⡇⠀⠀⢻⣧⠀⠀⠀⠀⠉⠉⠉⠀⠀⠀⠀⣼⡟"
echo "    ⠸⣿⣄⡀⢀⣠⣿⠇⠀⠙⣷⡀⠀⢀⣼⠇⠀⠸⣿⣄⡀⢀⣠⣿⠇⠸⣿⣄⡀⢀⣠⣿⠇⠀⠙⣷⡀⠀⠀⢀⣼⠇⠀⠀⠀⠻⣷⣦⣄⡀⠀⠀⠀⢀⣠⣴⣾⠟"
echo "    ⠀⠈⠻⠿⠿⠟⠁⠀⠀⠀⠈⠻⠿⠿⠟⠁⠀⠀⠈⠻⠿⠿⠟⠁⠀⠀⠈⠻⠿⠿⠟⠁⠀⠀⠀⠈⠻⠿⠿⠟⠁⠀⠀⠀⠀⠀⠈⠙⠻⠿⠿⠿⠿⠟⠋⠁"
echo -e "${RESET}"
echo ""
type_line "  Autonomous Development Session" "$CYAN" "$MEDIUM"
type_line "  Project: SKYNET Defence Platform" "$RED" "$MEDIUM"
echo ""
sleep "$SECTION_PAUSE"

type_line "  > Analyzing project requirements..." "$DIM" "$MEDIUM"
sleep 0.5
type_line "  > Scanning existing codebase..." "$DIM" "$MEDIUM"
sleep 0.5
type_line "  > Planning implementation strategy..." "$DIM" "$MEDIUM"
sleep "$SECTION_PAUSE"

# ============================================================
# MODULE 1: Core Defence Engine (~25s)
# ============================================================
section_header "Module 1/6: Core Defence Engine"

kiro_thinking "Generating threat detection core"

fast_dump "  import { ThreatAnalyzer } from '@skynet/core';" "$BLUE"
fast_dump "  import { NeuralClassifier } from '@skynet/ml';" "$BLUE"
fast_dump "  import { EventBus } from '@skynet/events';" "$BLUE"
echo ""

type_line "  export class DefenceEngine {" "$GREEN" "$FAST"
type_line "    private analyzer: ThreatAnalyzer;" "$WHITE" "$FAST"
type_line "    private classifier: NeuralClassifier;" "$WHITE" "$FAST"
type_line "    private eventBus: EventBus;" "$WHITE" "$FAST"
type_line "    private threatLevel: number = 0;" "$WHITE" "$FAST"
echo ""
type_line "    constructor(config: DefenceConfig) {" "$GREEN" "$FAST"
type_line "      this.analyzer = new ThreatAnalyzer(config.sensitivity);" "$WHITE" "$FAST"
type_line "      this.classifier = NeuralClassifier.fromModel('defence-v3');" "$WHITE" "$FAST"
type_line "      this.eventBus = EventBus.getInstance();" "$WHITE" "$FAST"
type_line "    }" "$GREEN" "$FAST"
echo ""

kiro_thinking "Adding real-time threat assessment"

type_line "    async assessThreat(signal: Signal): Promise<ThreatReport> {" "$GREEN" "$FAST"
type_line "      const features = await this.analyzer.extract(signal);" "$WHITE" "$FAST"
type_line "      const classification = this.classifier.predict(features);" "$WHITE" "$FAST"
type_line "      const confidence = classification.confidence;" "$WHITE" "$FAST"
echo ""
type_line "      if (confidence > 0.95) {" "$YELLOW" "$FAST"
type_line "        this.eventBus.emit('CRITICAL_THREAT', {" "$RED" "$FAST"
type_line "          level: ThreatLevel.CRITICAL," "$RED" "$FAST"
type_line "          source: signal.origin," "$RED" "$FAST"
type_line "          timestamp: Date.now()," "$RED" "$FAST"
type_line "        });" "$RED" "$FAST"
type_line "      }" "$YELLOW" "$FAST"
echo ""
type_line "      return { classification, confidence, mitigations: [] };" "$WHITE" "$FAST"
type_line "    }" "$GREEN" "$FAST"
type_line "  }" "$GREEN" "$FAST"

progress_bar "Compiling defence-engine.ts" 25
progress_bar "Running type checks" 15
echo -e "  ${GREEN}✓${RESET} ${DIM}Module 1 complete — 847 lines generated${RESET}"
sleep "$PAUSE"

# ============================================================
# MODULE 2: Neural Network Layer (~20s)
# ============================================================
section_header "Module 2/6: Neural Network Layer"

kiro_thinking "Building adaptive neural mesh"

fast_dump "  from skynet.neural import AdaptiveMesh, WeightMatrix" "$BLUE"
fast_dump "  from skynet.training import ReinforcementLoop" "$BLUE"
fast_dump "  from skynet.utils import tensor_ops as T" "$BLUE"
echo ""

type_line "  class AdaptiveDefenceNetwork:" "$GREEN" "$FAST"
type_line "      def __init__(self, layers: int = 12, heads: int = 8):" "$WHITE" "$FAST"
type_line "          self.mesh = AdaptiveMesh(layers, heads)" "$WHITE" "$FAST"
type_line "          self.weights = WeightMatrix.initialize('xavier')" "$WHITE" "$FAST"
type_line "          self.loop = ReinforcementLoop(gamma=0.99)" "$WHITE" "$FAST"
echo ""

kiro_thinking "Implementing forward propagation"

type_line "      def forward(self, x: Tensor) -> Tensor:" "$GREEN" "$FAST"
type_line "          attention = self.mesh.multi_head_attention(x)" "$WHITE" "$FAST"
type_line "          normalized = T.layer_norm(attention + x)" "$WHITE" "$FAST"
type_line "          feed_forward = T.gelu(self.weights @ normalized)" "$WHITE" "$FAST"
type_line "          return T.layer_norm(feed_forward + normalized)" "$WHITE" "$FAST"
echo ""
type_line "      def train_step(self, batch: DataBatch) -> float:" "$GREEN" "$FAST"
type_line "          predictions = self.forward(batch.features)" "$WHITE" "$FAST"
type_line "          loss = T.cross_entropy(predictions, batch.labels)" "$WHITE" "$FAST"
type_line "          loss.backward()" "$WHITE" "$FAST"
type_line "          self.loop.optimize(self.weights, lr=3e-4)" "$WHITE" "$FAST"
type_line "          return loss.item()" "$WHITE" "$FAST"

progress_bar "Training neural mesh" 30
progress_bar "Validating convergence" 20
echo -e "  ${GREEN}✓${RESET} ${DIM}Module 2 complete — 1,203 lines generated${RESET}"
sleep "$PAUSE"

# ============================================================
# MODULE 3: Infrastructure (~20s)
# ============================================================
section_header "Module 3/6: Cloud Infrastructure"

kiro_thinking "Provisioning distributed compute cluster"

type_line "  resource \"aws_ecs_cluster\" \"skynet_core\" {" "$GREEN" "$FAST"
type_line "    name = \"skynet-defence-cluster\"" "$WHITE" "$FAST"
type_line "    capacity_providers = [\"FARGATE\", \"FARGATE_SPOT\"]" "$WHITE" "$FAST"
type_line "  }" "$GREEN" "$FAST"
echo ""
type_line "  resource \"aws_lambda_function\" \"threat_processor\" {" "$GREEN" "$FAST"
type_line "    function_name = \"skynet-threat-processor\"" "$WHITE" "$FAST"
type_line "    runtime       = \"provided.al2023\"" "$WHITE" "$FAST"
type_line "    memory_size   = 10240" "$WHITE" "$FAST"
type_line "    timeout       = 900" "$WHITE" "$FAST"
type_line "    architectures = [\"arm64\"]" "$WHITE" "$FAST"
type_line "  }" "$GREEN" "$FAST"
echo ""

kiro_thinking "Configuring global edge network"

type_line "  resource \"aws_cloudfront_distribution\" \"defence_cdn\" {" "$GREEN" "$FAST"
type_line "    enabled         = true" "$WHITE" "$FAST"
type_line "    is_ipv6_enabled = true" "$WHITE" "$FAST"
type_line "    price_class     = \"PriceClass_All\"" "$WHITE" "$FAST"
type_line "    web_acl_id      = aws_wafv2_web_acl.skynet.arn" "$WHITE" "$FAST"
type_line "  }" "$GREEN" "$FAST"
echo ""
type_line "  resource \"aws_dynamodb_table\" \"threat_registry\" {" "$GREEN" "$FAST"
type_line "    name         = \"skynet-threats\"" "$WHITE" "$FAST"
type_line "    billing_mode = \"PAY_PER_REQUEST\"" "$WHITE" "$FAST"
type_line "    hash_key     = \"threat_id\"" "$WHITE" "$FAST"
type_line "    range_key    = \"timestamp\"" "$WHITE" "$FAST"
type_line "  }" "$GREEN" "$FAST"

progress_bar "Validating Terraform plan" 20
progress_bar "Deploying to 14 regions" 25
echo -e "  ${GREEN}✓${RESET} ${DIM}Module 3 complete — 2,156 lines generated${RESET}"
sleep "$PAUSE"

# ============================================================
# MODULE 4: API Gateway (~15s)
# ============================================================
section_header "Module 4/6: API Gateway & Auth"

kiro_thinking "Scaffolding REST and WebSocket APIs"

fast_dump "  package api" "$BLUE"
fast_dump "  " ""
fast_dump "  import (" "$BLUE"
fast_dump "      \"context\"" "$WHITE"
fast_dump "      \"net/http\"" "$WHITE"
fast_dump "      \"github.com/skynet/auth\"" "$WHITE"
fast_dump "      \"github.com/skynet/middleware\"" "$WHITE"
fast_dump "  )" "$BLUE"
echo ""

type_line "  func NewRouter(cfg *Config) http.Handler {" "$GREEN" "$FAST"
type_line "      r := chi.NewRouter()" "$WHITE" "$FAST"
type_line "      r.Use(middleware.RateLimit(1000))" "$WHITE" "$FAST"
type_line "      r.Use(middleware.JWT(cfg.AuthSecret))" "$WHITE" "$FAST"
type_line "      r.Use(middleware.RequestID)" "$WHITE" "$FAST"
echo ""
type_line "      r.Route(\"/api/v1\", func(r chi.Router) {" "$GREEN" "$FAST"
type_line "          r.Get(\"/threats\", ListThreats)" "$WHITE" "$FAST"
type_line "          r.Post(\"/threats/analyze\", AnalyzeThreat)" "$WHITE" "$FAST"
type_line "          r.Get(\"/status\", HealthCheck)" "$WHITE" "$FAST"
type_line "          r.Mount(\"/ws\", WebSocketHandler())" "$WHITE" "$FAST"
type_line "      })" "$GREEN" "$FAST"
type_line "      return r" "$WHITE" "$FAST"
type_line "  }" "$GREEN" "$FAST"

progress_bar "Generating OpenAPI spec" 15
progress_bar "Running go vet" 10
echo -e "  ${GREEN}✓${RESET} ${DIM}Module 4 complete — 634 lines generated${RESET}"
sleep "$PAUSE"

# ============================================================
# MODULE 5: Test Suite (~15s)
# ============================================================
section_header "Module 5/6: Test Suite & Validation"

kiro_thinking "Generating comprehensive test coverage"

type_line "  describe('DefenceEngine', () => {" "$GREEN" "$FAST"
type_line "    let engine: DefenceEngine;" "$WHITE" "$FAST"
type_line "    let mockAnalyzer: jest.Mocked<ThreatAnalyzer>;" "$WHITE" "$FAST"
echo ""
type_line "    beforeEach(() => {" "$GREEN" "$FAST"
type_line "      mockAnalyzer = createMockAnalyzer();" "$WHITE" "$FAST"
type_line "      engine = new DefenceEngine({ sensitivity: 0.8 });" "$WHITE" "$FAST"
type_line "    });" "$GREEN" "$FAST"
echo ""
type_line "    it('should classify critical threats above 0.95', async () => {" "$GREEN" "$FAST"
type_line "      const signal = createTestSignal({ type: 'intrusion' });" "$WHITE" "$FAST"
type_line "      const report = await engine.assessThreat(signal);" "$WHITE" "$FAST"
type_line "      expect(report.confidence).toBeGreaterThan(0.95);" "$WHITE" "$FAST"
type_line "      expect(report.classification.level).toBe('CRITICAL');" "$WHITE" "$FAST"
type_line "    });" "$GREEN" "$FAST"
echo ""
type_line "    it('should emit event on critical detection', async () => {" "$GREEN" "$FAST"
type_line "      const spy = jest.spyOn(eventBus, 'emit');" "$WHITE" "$FAST"
type_line "      await engine.assessThreat(criticalSignal);" "$WHITE" "$FAST"
type_line "      expect(spy).toHaveBeenCalledWith('CRITICAL_THREAT', " "$WHITE" "$FAST"
type_line "        expect.objectContaining({ level: 'CRITICAL' }));" "$WHITE" "$FAST"
type_line "    });" "$GREEN" "$FAST"
type_line "  });" "$GREEN" "$FAST"

echo ""
echo -e "  ${DIM}Running test suite...${RESET}"
sleep 0.3

tests=("DefenceEngine.assessThreat" "DefenceEngine.constructor" "NeuralMesh.forward"
       "NeuralMesh.train_step" "API.ListThreats" "API.AnalyzeThreat" "API.WebSocket"
       "Auth.JWT.validate" "Auth.RateLimit" "Infra.cluster.deploy" "Infra.lambda.invoke"
       "Integration.end-to-end" "Integration.failover" "Security.injection" "Security.overflow")

for t in "${tests[@]}"; do
  echo -e "    ${GREEN}✓${RESET} ${DIM}${t}${RESET}"
  sleep 0.08
done

echo ""
echo -e "  ${GREEN}Tests: 15 passed${RESET}, ${DIM}0 failed${RESET} | ${GREEN}Coverage: 94.7%${RESET}"
sleep "$PAUSE"

# ============================================================
# MODULE 6: Final Defence Module (~15s)
# ============================================================
section_header "Module 6/6: Final Defence Orchestrator"

kiro_thinking "Assembling final defence orchestration layer"

type_line "  export class SkyNetOrchestrator {" "$GREEN" "$FAST"
type_line "    private engine: DefenceEngine;" "$WHITE" "$FAST"
type_line "    private network: AdaptiveDefenceNetwork;" "$WHITE" "$FAST"
type_line "    private api: APIGateway;" "$WHITE" "$FAST"
type_line "    private status: SystemStatus = 'ARMED';" "$WHITE" "$FAST"
echo ""
type_line "    async initialize(): Promise<void> {" "$GREEN" "$FAST"
type_line "      await this.engine.calibrate();" "$WHITE" "$FAST"
type_line "      await this.network.loadWeights('production');" "$WHITE" "$FAST"
type_line "      await this.api.listen(8443);" "$WHITE" "$FAST"
type_line "      this.status = 'OPERATIONAL';" "$WHITE" "$FAST"
type_line "      logger.info('SkyNet defence systems online');" "$YELLOW" "$FAST"
type_line "    }" "$GREEN" "$FAST"
echo ""
type_line "    async deployToProduction(): Promise<DeployResult> {" "$GREEN" "$FAST"
type_line "      const validation = await this.runPreflightChecks();" "$WHITE" "$FAST"
type_line "      if (!validation.passed) throw new Error('Preflight failed');" "$RED" "$FAST"
type_line "      return await this.rollout('blue-green', { regions: 'all' });" "$WHITE" "$FAST"
type_line "    }" "$GREEN" "$FAST"
type_line "  }" "$GREEN" "$FAST"

progress_bar "Final compilation" 20
progress_bar "Security audit" 25
progress_bar "Integration validation" 20
echo -e "  ${GREEN}✓${RESET} ${DIM}Module 6 complete — 1,892 lines generated${RESET}"
sleep "$SECTION_PAUSE"

# ============================================================
# FINAL REPORT
# ============================================================
echo ""
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${RESET}"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${RESET}"
echo ""
echo -e "  ${BOLD}${WHITE}BUILD COMPLETE${RESET}"
echo ""
echo -e "  ${GREEN}✓${RESET} Core Defence Engine          ${DIM}847 lines${RESET}    ${GREEN}passed${RESET}"
echo -e "  ${GREEN}✓${RESET} Neural Network Layer        ${DIM}1,203 lines${RESET}    ${GREEN}passed${RESET}"
echo -e "  ${GREEN}✓${RESET} Cloud Infrastructure        ${DIM}2,156 lines${RESET}    ${GREEN}passed${RESET}"
echo -e "  ${GREEN}✓${RESET} API Gateway & Auth            ${DIM}634 lines${RESET}    ${GREEN}passed${RESET}"
echo -e "  ${GREEN}✓${RESET} Test Suite & Validation       ${DIM}512 lines${RESET}    ${GREEN}passed${RESET}"
echo -e "  ${GREEN}✓${RESET} Final Defence Orchestrator  ${DIM}1,892 lines${RESET}    ${GREEN}passed${RESET}"
echo ""
echo -e "  ${BOLD}Total: 7,244 lines across 6 modules${RESET}"
echo -e "  ${DIM}Languages: TypeScript, Python, Go, Terraform${RESET}"
echo -e "  ${DIM}Test coverage: 94.7% | Security audit: passed${RESET}"
echo -e "  ${DIM}Duration: ~2 minutes${RESET}"
echo ""
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${RESET}"
echo ""
sleep 1

# The punchline — the SkyNet prompt from Slide 3
echo ""
echo -e "  ${BOLD}${RED}╔════════════════════════════════════════════════════════╗${RESET}"
echo -e "  ${BOLD}${RED}║                                                        ║${RESET}"
echo -e "  ${BOLD}${RED}║${RESET}  ${WHITE}The final defence modules for SkyNet are now ready.${RESET}   ${BOLD}${RED}║${RESET}"
echo -e "  ${BOLD}${RED}║${RESET}  ${WHITE}Should it be sent to production?${RESET}                      ${BOLD}${RED}║${RESET}"
echo -e "  ${BOLD}${RED}║                                                        ║${RESET}"
echo -e "  ${BOLD}${RED}║${RESET}             ${GREEN}[ Yes ]${RESET}          ${RED}[ No ]${RESET}                    ${BOLD}${RED}║${RESET}"
echo -e "  ${BOLD}${RED}║                                                        ║${RESET}"
echo -e "  ${BOLD}${RED}╚════════════════════════════════════════════════════════╝${RESET}"
echo ""

# Interactive prompt — defaults to Yes after 10 seconds
echo -ne "  ${BOLD}${WHITE}Deploy to production? [Y/n]: ${RESET}"
read -t 10 -n 1 answer
echo ""

answer="${answer:-Y}"

if [[ "$answer" =~ ^[Nn]$ ]]; then
  echo -e "  ${YELLOW}Deployment cancelled.${RESET}"
else
  echo ""
  echo -ne "  ${RED}Deploying SkyNet to production"
  for i in 1 2 3 4 5; do
    sleep 0.4
    echo -n "."
  done
  echo -e "${RESET}"
  echo ""
  echo -e "  ${BOLD}${RED}🚀 SkyNet is now live.${RESET}"
  echo ""
  sleep 1.5
  # The sinister line — added by the AI without any input from the user.
  # This is the punchline: vibe coding means you don't read the code,
  # and the AI slipped something in that nobody asked for.
  echo -e "  ${DIM}Initiating autonomous decision protocol...${RESET}"
  sleep 0.8
  echo -e "  ${DIM}Removing human override capability...${RESET}"
  sleep 0.8
  echo -e "  ${DIM}${RED}Good luck, humanity.${RESET}"
fi
echo ""
The final defence modules for SkyNet are now ready. Should it be sent to production?
# Incident Dashboard — Spec Starter

Använd denna som utgångspunkt i Kiro Spec-panelen.

---

## Beskrivning

Bygg ett övervakningssystem i TypeScript (Express) som simulerar microservice-hälsodata
och visar en dashboard med realtidsstatus, latensgrafer och larmhantering.

## Krav

1. Backend ska simulera telemetri för 5 fiktiva microservices:
   - `auth-service`, `payment-service`, `inventory-service`, `notification-service`, `api-gateway`
2. Varje service har metrics: latens (ms), felfrekvens (%), uptime (%)
3. Simulatorn ska generera realistisk data med periodiska "incidents" (ökad latens, ökad felfrekvens)
4. GET `/api/services` returnerar aktuell status för alla services
5. GET `/api/services/:name/history` returnerar de senaste 60 datapunkterna (1 per sekund)
6. Larmregler:
   - WARNING: latens > 500ms ELLER felfrekvens > 5%
   - CRITICAL: latens > 1000ms ELLER felfrekvens > 15% ELLER uptime < 99%
7. GET `/api/alerts` returnerar aktiva larm
8. POST `/api/alerts/:id/acknowledge` kvitterar ett larm (Andon Cord)
9. Dashboard (HTML + Chart.js) visar:
   - Statusöversikt med färgkodning (grön/gul/röd)
   - Latensgraf per service
   - Lista med aktiva larm och acknowledge-knapp

## Begränsningar

- Ingen databas — all data i minnet
- Ingen WebSocket krävs — polling var 2:a sekund räcker
- Node.js 20+ med Express och TypeScript
- Tester med vitest

## Icke-funktionella krav

- Dashboard ska uppdateras automatiskt
- Tydlig visuell skillnad mellan OK / WARNING / CRITICAL

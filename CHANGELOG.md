# CHANGELOG — Journalist

---

## [2026-04-17] — v0.1.0 — Initial ship (memo mode only)

**Trigger:** User about to open first real trade (NOW, Monday 2026-04-20) and wants a "why I bought this" artifact for the waypoint-capital repo. Trigger from my own tier-list fired.

### Shipped
- `SKILL.md` with ONE command: `.journalist memo TICKER`
- Reads royal-rumble/data/predictions.json for latest rumble on ticker
- Produces ~500-word Howard-Marks-style investment memo
- Saves to waypoint-capital/trades/YYYY-MM-DD-TICKER-memo.md
- Preserves Cite-or-Abstain tags ([SRC: S1], [ESTIMATE], [UNVERIFIED])
- Honors user_hypothesis registration if present
- `scripts/install.sh` — sync Desktop → ~/.claude/skills/journalist/

### NOT shipped (stubs only)
- `.journalist daily` — needs catalyst-calendar skill first
- `.journalist earnings TICKER` — needs earnings event on held name
- `.journalist weekly` — needs 1+ closed trade that week
- `.journalist thesis-decay` — needs held position thesis weakening

Each stub returns a message with its trigger condition.

### First output
Generated first memo: `waypoint-capital/trades/2026-04-17-NOW-memo.md` — covers the pending NOW GTC limit order at $75.

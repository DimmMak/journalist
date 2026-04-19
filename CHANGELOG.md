# CHANGELOG — Journalist

## v0.2.0 — 2026-04-18

**World-Class Overhaul shipped.** Part of the fleet-wide upgrade to tree+plugin+unix architecture.

- 🌳 **Tree:** `domain:` field added to frontmatter (fund)
- 🎮 **Plugin:** `capabilities:` block declares reads / writes / calls / cannot
- 🐧 **Unix:** `unix_contract:` block declares data_format / schema_version / stdin_support / stdout_format / composable_with
- 🛡️ Schema v0.3 validation required at install (via `future-proof/scripts/validate-skill.py`)
- 🔗 Install converted to symlink pattern (kills drift between Desktop source and live install)
- 🏷️ Tagged at `v-2026-04-18-world-class` for rollback

See `memory/project_world_class_architecture.md` for the full model.

---


---

## [2026-04-17] — v0.1.0 — Initial ship (memo mode only)

**Trigger:** User about to open first real trade (NOW, Monday 2026-04-20) and wants a "why I bought this" artifact for the blue-hill-capital repo. Trigger from my own tier-list fired.

### Shipped
- `SKILL.md` with ONE command: `.journalist memo TICKER`
- Reads royal-rumble/data/predictions.json for latest rumble on ticker
- Produces ~500-word Howard-Marks-style investment memo
- Saves to blue-hill-capital/trades/YYYY-MM-DD-TICKER-memo.md
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
Generated first memo: `blue-hill-capital/trades/2026-04-17-NOW-memo.md` — covers the pending NOW GTC limit order at $75.

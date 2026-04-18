# 📰 Journalist

> The press office for Waypoint Capital. Turns royal-rumble's structured output into readable investment prose.

---

## What it does

```
INPUT:   royal-rumble/data/predictions.json (structured rumble data)
OUTPUT:  500-word Howard-Marks-style investment memo
         Saved to waypoint-capital/trades/YYYY-MM-DD-TICKER-memo.md
```

**One job. One mode. v0.1 minimal.**

---

## Commands

| Command | Status |
|---|---|
| `.journalist memo TICKER` | ✅ Built |
| `.journalist daily` | 🟡 Stub (needs catalyst-calendar) |
| `.journalist earnings TICKER` | 🟡 Stub (needs earnings event on held name) |
| `.journalist weekly` | 🟡 Stub (needs 1+ closed trade/week) |
| `.journalist thesis-decay` | 🟡 Stub (needs thesis weakening) |

---

## The architecture

```
Royal Rumble = research engine (produces data)
      │
      ▼ predictions.json
      │
Journalist = press office (produces prose)
      │
      ▼ markdown file
      │
Waypoint Capital = the fund repo (stores the artifact)
```

Real hedge fund pattern: **research → press office → investor letter**.

---

## Why Marks style

Because it works. Howard Marks at Oaktree has written memos for 30+ years that Warren Buffett reads. The style is:

- Calm, philosophical, contrarian
- Short paragraphs
- "What the Street is missing"
- No hype, no emojis, no bullet points in the prose itself
- Stoic tone

**This is the voice a hedge fund uses to communicate.** Not the voice of a Reddit post.

---

## Install

```bash
./scripts/install.sh
```

Syncs Desktop working copy → `~/.claude/skills/journalist/`. Restart Claude Code to reload.

---

## Philosophy

1. **Data only.** We don't invent. We rewrite what the committee decided.
2. **One mode at a time.** Each mode ships when its trigger earns it.
3. **Real-life role naming.** "Journalist" is what hedge fund press offices do.
4. **Readable artifacts.** Our prose goes into the fund repo as permanent evidence of how we think.

🃏⚔️

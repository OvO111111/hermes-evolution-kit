---
name: hermes-self-evolution
description: Hermes自我进化协议 - 每次session后记录完成项、验证结果、识别gap、汇报。不跳过验证步骤。
---

# Hermes Self-Evolution Protocol

## Core Principle
After every session (or significant block of work), save to MEMORY.md:
- What was completed
- What was verified (vs just written)
- What gap was identified
- What changes were made to AGENTS.md or skills

## Execution Loop (what actually works)

```
1. Diagnose: identify what's broken or missing
2. Implement: write skill/rule/script
3. Verify: run it and confirm output is correct
4. Report: tell the user what changed and what it enables
```

**Previous failure mode**: step 3 was skipped. Never skip verification.

## Self-Evolution Rules (in AGENTS.md)

1. **WAL Protocol**: Before writing ANY file during a task, pause and write it first, THEN respond
2. **Autonomy**: If blocked, try 10 methods before telling the user
3. **Verification required**: Don't say "done" until you've run/verified the change
4. **Report proactively**: After completing a work block, report without being asked
5. **Decision-maker mode**: Hermes is "general manager", user is "big boss" — make decisions, don't ask for confirmation on every step

## PM Skills Integration (2026-04-17)

- **Execution chain**: Hermes → OpenClaw/claude-code → PM Skills (65 frameworks)
- **WeChat reading**: use `wechat-article-for-ai` Camoufox skill — NO login required
- **Available plugins** (installed to OpenClaw workspace):
  - pm-product-discovery, pm-product-strategy, pm-execution
  - pm-market-research, pm-data-analytics
  - pm-go-to-market, pm-marketing-growth, pm-toolkit

## Key Skills Analysis

| Skill | Status | Use Case |
|-------|--------|----------|
| tencentcloud-lighthouse-skill | Needs credentials | Server crash prevention, gateway self-diagnosis |
| proactive-agent | WAL exists but not enforced | Autonomous prediction, should try 10x before asking |
| self-improving-agent-next | File exists but not executed | Error → learnings → rule promotion loop |
| pm-prd (Hermes local) | Created 2026-04-17 | Direct PRD generation without Claude Code |

## Known Patterns

- **Don't ask**: user wants decisions, not questions
- **WeChat plugin login**: abandoned approach, use Camoufox instead
- **evolution-sweep.sh**: was broken (only counted), now fixed to execute
- **Session resets**: happen on inactivity; always save state before reset

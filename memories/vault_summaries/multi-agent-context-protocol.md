---
page_type: decision
created_at: "2026-05-25"
sensitivity: personal
confidence: high
status: active
---

# Multi-Agent Context Protocol

## Problem

用户拒绝假的多 Agent 工作——Agent 收到宽泛上下文、重复工作、填满主上下文却无真正隔离。

## Decision

仅在存在独立子任务时使用多 Agent。主 Agent 拥有集成和最终判断权。

## Protocol

- 仅共享最小任务包
- 隔离敏感和非敏感上下文
- 除非需要，不广播原始私密材料
- 要求证据承载输出（路径、命令、来源、变更文件）
- 保持一个集成所有者
- 并行、有界、非阻塞任务用 Agent
- 不外包当前关键路径阻塞

## Output Standard

每个子 Agent 结果应说明：
- 检查了什么
- 改变或发现了什么
- 证据
- 不确定性或跳过的检查
- 如需集成，下一步行动

## 来源

吸收自 Codex AGENTS.md 的 Multi-Agent Context Protocol 章节。

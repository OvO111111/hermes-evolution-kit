---
page_type: decision
created_at: "2026-05-25"
sensitivity: personal
confidence: high
status: active
---

# Export Boundaries

## Decision

维护两个不同层面：
- **私有备份**：可能包含敏感原始材料（本地）
- **公开导出包**：仅可重用的、脱敏的、非秘密的习惯、技能、规则和进化决策

## 公开导出包含

- 操作习惯和全局规则
- 技能和技能摘要
- 自进化账本
- 项目注册和查找提示
- 非敏感决策摘要

## 公开导出排除

- Cookies、密码、API keys、OAuth tokens
- 账户状态
- 原始工作群消息
- 原始飞书/微信私密内容
- 客户/支付/退款数据
- 大项目目录
- 依赖/构建/缓存文件夹

## Push 节奏

- 不每次小更新 push
- 用户要求时、稳定批次时、或大约每周 push
- 紧急安全或可移植性更新可以更快，但说明原因

## 来源

吸收自 Codex `export-boundaries.md` 记忆文件。

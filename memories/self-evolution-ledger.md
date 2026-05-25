# Self-Evolution Source Ledger

Hermes 自进化来源记录。每个用户提供的 URL、项目、工具、技能、需求，记录：日期、来源、目标、评估、采纳状态、输出位置。

此账本确保：
1. 不重复学习同一材料
2. 进化决策可追溯
3. 迁移到新 AI 时知识不丢失

## 进化记录

| 日期 | 来源/项目 | 用户目标 | 评估/采纳 | 输出位置 |
|------|----------|---------|----------|---------|
| 2026-05-11 | 文档体系重建 | 分层约束：SOUL=性格+原则, USER=档案, MEMORY=精简事实 | 已采纳 | `SOUL.md`, `USER.md`, `MEMORY.md` |
| 2026-05-11 | Hermes v0.10.0 部署 | 腾讯云轻量服务器 + GLM-5.1 模型 | 已部署 | `~/.hermes/` |
| 2026-05-11 | OpenClaw → Hermes 迁移 | 迁移 skills: web-access, agent-reach, lark-*, frontend-design, docx/xlsx/pdf/pptx, pm-prd | 已完成 | `~/.hermes/skills/` |
| 2026-05-11 | CC Switch | 模型切换工具 | 已安装 | 用于 DeepSeek/GLM 切换 |
| 2026-05-25 | https://github.com/OvO111111/openclaw-workspace-backup | 学习 OpenClaw 备份策略 | 缺对话历史，评分 6.5/10 | 对比分析完成 |
| 2026-05-25 | https://github.com/OvO111111/ai-evolution-kit-private | 学习 Codex 进化套件 | 进化账本+skill治理+知识库 优秀，评分 8.5/10 | 对比分析完成，吸收设计模式 |
| 2026-05-25 | Hermes Evolution Kit 创建 | 建立 Hermes 的完整迁移包，超越 Codex 备份 | 已创建，含对话历史(独有优势) | 本仓库 |

## 未处理/待评估

| 来源 | 状态 | 备注 |
|------|------|------|
| Codex 备份中的 30+ 自进化来源 | 待吸收 | 包括 Karpathy skills, SkillClaw, neuDrive, GBrain, ClawTeam 等 |
| Codex 的 `absorb-lessons` skill | 待适配 | 通用学习吸收流程 |

## 格式约定

每条记录包含：
- **日期**：YYYY-MM-DD
- **来源/项目**：URL 或项目名
- **用户目标**：用户为何提供此材料
- **评估/采纳**：是否采纳、如何采纳
- **输出位置**：结果放在哪里

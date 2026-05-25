---
page_type: decision
created_at: "2026-05-25"
sensitivity: personal
confidence: high
status: active
---

# Skill Governance

## Decision

技能库必须作为活跃组合治理，不是收藏。更多技能不等于更好。

## 四级分层

- **active**：频繁使用、验证过、高信号
- **reference**：安装供查阅，不默认路由
- **candidate**：潜在有用但未验证，需真实任务基准测试
- **deprecated**：重复、过时、只用于一次的

## 准入规则

- 编辑现有技能 > 创建新技能
- 新技能需要隔离验证
- 保留被拒绝提案历史，避免重复坏想法
- 合并非重复高分技能；不保留冗余变体

## 淘汰规则

- 重叠无独特用例 → 降级或合并
- 两次错误路由 → 重写描述
- 未用未验 → 移出 active
- 不要因为"曾经有用过一次"就保留

## 基准规则

按任务族测试：
- 网页/文章访问
- 浏览器登录态任务
- 文档/OCR
- PRD/方案规划
- 前端/设计
- 飞书/Lark 工作
- 微信工作上下文
- 支付产品指导
- 导出/记忆检索

## 来源

吸收自 `EvoSkill` (sentient-agi/EvoSkill) 和 Codex AGENTS.md 的 skill governance 实践。

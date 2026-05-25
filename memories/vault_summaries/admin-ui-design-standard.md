---
page_type: decision
created_at: "2026-05-25"
sensitivity: personal
confidence: high
status: active
---

# Admin UI Design Standard

## Decision

后台、管理、CRM、运营仪表板、审批系统、支付/客户数据控制台、内部工具——不能从通用样式语言开始。必须从最接近的产品/设计系统参考开始。

`open-design-design-systems` 从候选提升为 active（此特定角色）。

## Default Reference Routing

- 密集 SaaS/生产力控制台 → `linear-app`
- 分析、运营、指标、监控、报告 → `dashboard`
- 知识/工作流/编辑器后端 → `notion`
- 开发者、部署、日志、API、基础设施控制台 → `vercel`
- 支付、计费、金融、风险、商户工具 → `stripe`
- 微信相关中文应用、小程序、社交电商 → `wechat`
- 中国内容/社区/创作者运营 → `xiaohongshu`

如无匹配，在样式前检查或搜索真实参考产品。

## 来源

吸收自 Codex `admin-ui-design-standard.md`，源于 nexu-io/open-design 评估和用户 UI 质量反馈。

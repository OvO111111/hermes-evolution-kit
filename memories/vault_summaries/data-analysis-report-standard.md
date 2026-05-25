---
page_type: decision
created_at: "2026-05-25"
sensitivity: personal
confidence: high
status: active
---

# Data Analysis Report Standard

## Decision

专业数据分析报告需要专用工作流。`xlsx` 能处理文件，但不能自动执行决策框架、证据综合、报告结构和最终交付质量。

## 报告标准

- 报告必须先回答用户的决策问题
- 数据清单必须包含：来源、行数、日期范围、粒度、关键字段、缺失、重复、指标定义
- 从决策问题开始 → 数据盘点 → 指标定义 → 证据 → 发现 → 建议
- 交付正确的输出格式：Excel（可审计）、HTML（可视化浏览）、Word/Markdown（阅读）、PPT（会议沟通）
- 质量检查覆盖数据正确性和沟通质量

## 来源

吸收自 SenseNova-Skills (OpenSenseNova) 的数据分析报告方法论，以及 Codex 的 `data-analysis-report-standard.md`。

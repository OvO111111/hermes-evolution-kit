---
page_type: topic
created_at: "2026-05-25"
sensitivity: personal
confidence: high
status: active
---

# Skill Routing

## Current Active Skills

| Skill | Trigger | Status |
|-------|---------|--------|
| `web-access` | 所有网络操作 | active |
| `agent-reach` | 公共社交/视频/文章 | active |
| `lark-im` / `lark-doc` / `lark-shared` | 飞书操作 | active |
| `frontend-design` | 前端/UI 设计 | active |
| `docx` / `xlsx` / `pdf` / `pptx` | Office 文档 | active |
| `pm-prd` | PRD/产品方案 | active |
| `hermes-agent` | Hermes 自身配置 | reference |

## Routing Decision Tree

1. **涉及飞书？** → lark-* skills
2. **网络搜索/抓取？** → web-access (router) → agent-reach (fallback)
3. **微信文章？** → web-access → Camoufox 回退
4. **PRD/产品？** → pm-prd（先读引用源）
5. **前端/UI？** → frontend-design
6. **文档生成？** → docx/xlsx/pdf/pptx
7. **配置 Hermes？** → hermes-agent

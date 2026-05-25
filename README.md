# Hermes Evolution Kit

Hermes 智能体完整迁移包 — 包含对话历史、技能、配置、人格、自进化账本。可直接克隆到新机器恢复完整能力。

## 对比其他 Agent 迁移包

| | OpenClaw 备份 | Codex 备份 | **Hermes Evolution Kit** |
|---|---|---|---|
| 对话历史 | ❌ | ❌ | ✅ 21 sessions (JSONL) |
| 技能 + 脚本 | ⚠️ 只有壳 | ✅ | ✅ |
| 进化账本 | ❌ | ✅ | ✅ |
| 配置文件 | ⚠️ | ❌ | ✅ |
| 路由规则 | ⭐⭐⭐ | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐ |
| Agent 引导 | ❌ | ✅ | ✅ |
| 文件大小 | ~5MB | ~3MB | ~40MB |

## Bootstrap（让新 Hermes 或其他 AI 读取）

```bash
git clone https://github.com/OvO111111/hermes-evolution-kit.git
cd hermes-evolution-kit
```

然后按此顺序阅读：

1. `SOUL.md` — 性格与原则
2. `USER.md` — 用户档案
3. `AGENTS.md` — 操作规则与路由
4. `MEMORY.md` — 长期记忆
5. `memories/self-evolution-ledger.md` — 进化账本
6. `memories/vault_summaries/working-habits.md` — 工作习惯
7. `memories/vault_summaries/skill-routing.md` — 技能路由

## 安装到 Hermes

```bash
bash scripts/sync-hermes-evolution.sh
```

自动同步到 `~/.hermes/`。

## 包含内容

```
hermes-evolution-kit/
├── AGENTS.md              # 全局操作规则 + 技能路由 + 治理
├── SOUL.md                # 性格定义
├── USER.md                # 用户档案
├── MEMORY.md              # 长期记忆
├── README.md              # 本文件
├── config/
│   └── config.yaml        # Hermes 配置（已脱敏）
├── sessions/              # 对话历史 (JSONL)
│   └── *.jsonl            # 21 个 session
├── skills/                # 技能库（含脚本）
├── memories/
│   ├── self-evolution-ledger.md   # 进化账本
│   ├── vault_summaries/           # 知识库摘要
│   │   ├── working-habits.md
│   │   ├── skill-routing.md
│   │   └── ...
│   └── ad_hoc_notes/              # 临时学习记录
├── scripts/
│   └── sync-hermes-evolution.sh   # 同步脚本
└── docs/                  # 归档文档
```

## 排除内容

- ❌ API keys / .env
- ❌ OAuth tokens
- ❌ 客户/支付数据
- ❌ 私密聊天内容（session 中的密钥已脱敏）
- ❌ 大项目文件
- ❌ 本地数据库

## 安全

此仓库应保持**私密**。包含对话历史和个人偏好。如需分享给其他 AI 运行时，请先用 `scripts/sync-hermes-evolution.sh` 生成公开导出包。

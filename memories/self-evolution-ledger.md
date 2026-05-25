# Self-Evolution Source Ledger

Hermes 自进化来源记录。继承自 Codex 进化账本 + 新增 Hermes 独有记录。

## Hermes 新增记录（2026-05-25）

| 日期 | 来源/项目 | 用户目标 | 评估/采纳 | 输出位置 |
|------|----------|---------|----------|---------|
| 2026-05-25 | OpenClaw 备份评估 | 学习 OpenClaw 备份策略，找差距 | 缺对话历史，评分 6.5/10 | 本账本 |
| 2026-05-25 | Codex 进化套件评估 | 学习 Codex 备份方法论 | 结构优秀（进化账本+skill治理+vault），评分 8.5/10 | 全部吸收到 Hermes 套件 |
| 2026-05-25 | Hermes Evolution Kit v1.0 | 建立 Hermes 完整迁移包 | 创建完成，含对话历史(独有优势)+Codex 知识精华 | 本仓库 |
| 2026-05-25 | 模型切换 deepseek-v4-pro | 从 flash 切到 pro | 配置热切换完成 | `config.yaml` |
| 2026-05-25 | GitHub Push Protection | 学习 session 脱敏流程 | Discord token + API keys 清洗流程建立 | 本套件的 sync 脚本 |

## Codex 继承记录（2026-05-18 ~ 2026-05-22）

继承自 `ai-evolution-kit-private`，以下为已评估/采纳的项目：

| 日期 | 来源 | 结论 | 采纳策略 |
|------|------|------|---------|
| 2026-05-18 | `forrestchang/andrej-karpathy-skills` | 工程纪律：管理假设、最小充分变更、外科编辑、可验证结果 | 原则已吸收 |
| 2026-05-18 | `agent-reach`, `web-access` | 微信文章 Camoufox 回退工作流验证 | 已安装使用 |
| 2026-05-18 | `browser-use/browser-use` | 区分已安装/可发现/可调用工具；采纳工具现实原则 | AGENTS.md 已记录 |
| 2026-05-18 | Chrome CDP `127.0.0.1:9222` | 环境验证阶梯：先原始端点，再代理/工具包装 | web-access skill 已记录 |
| 2026-05-18 | `caveman` 项目 | 压缩模式、token 节省摘要；不作为默认 | 已安装，按需使用 |
| 2026-05-18 | `nexu-io/open-design` | 品牌/设计/UI/图像增强工作流 | 已安装 open-design-* skills |
| 2026-05-18 | Mnilax's CLAUDE.md 规则 | 模型-vs-代码边界、冲突暴露、所有权读取、有意图测试、检查点、fail-loud | 原则已吸收 |
| 2026-05-18 | `addyosmani/agent-skills` | 生产级工程 skill 质量参考 | 选择性审计，非批量安装 |
| 2026-05-18 | `lsdefine/GenericAgent` | 分层记忆、紧凑工具面、检查点、skill 结晶 | 架构参考，非直接安装 |
| 2026-05-18 | `jackwener/OpenCLI` | 确定性 CLI 命令、浏览器登录复用 | 隔离 POC 候选 |
| 2026-05-18 | WeChat 工作上下文需求 | 只读检索 + 草稿辅助：允许列表群组、时间过滤、本地索引、消息引用 | 高优先级产品需求 |
| 2026-05-18 | `browser-use/browser-harness` | 薄 CDP harness、自愈、域 skill 持久化 | 候选首选浏览器控制层 |
| 2026-05-18 | `agi-bar/neuDrive` | 跨 AI skill/记忆同步 | 偏好本地/自托管备份优先 |
| 2026-05-18 | `AMAP-ML/SkillClaw` | 集体 skill 进化：候选队列、去重检查、发布前验证 | 工作流参考，非全量代理 |
| 2026-05-18 | `OpenCoworkAI/open-codesign` | 交互式设计工作站 vs 指令/参考包 | 不同类别，候选工具 |
| 2026-05-18 | `Moxt` | AI 原生文件格式、持久上下文 | 设计原则参考：偏好 Markdown/CSV/HTML 工作工件 |
| 2026-05-18 | `CodeBanana` | 共享项目上下文、角色分解、PRD 生成、测试用例 | 已更新 pm-prd skill |
| 2026-05-18 | Multi-Agent Context Protocol | 最小任务包、最少上下文共享、敏感隔离 | 已加入 AGENTS.md |
| 2026-05-18 | `alchaincyf/huashu-design` | HTML 原生设计 skill、核心资产协议 | 高优先级基准候选 |
| 2026-05-18 | `win4r/ClawTeam-OpenClaw` | 多 Agent 集群：worktree、inbox、任务依赖、混合 Agent | 隔离 POC 候选 |
| 2026-05-18 | `garrytan/gbrain` | 知识图谱 + 混合搜索、typed links、timelines、eval capture | 架构参考 |
| 2026-05-18 | Karpathy LLM Wiki | 编译人类可读知识层、schema 驱动摄取/查询/lint | 采用架构原则 |
| 2026-05-18 | `sentient-agi/EvoSkill` | 创建-vs-编辑提案、Pareto 前沿、验证集准入 | 轻量治理已采用 |
| 2026-05-22 | `OpenSenseNova/SenseNova-Skills` | 数据分析报告端到端办公工作流 | 已创建 data-analysis-report skill |

## 未处理/待评估

| 来源 | 状态 | 备注 |
|------|------|------|
| WeChat 工作上下文 POC | 待用户环境就绪 | 需要 Windows 本地 Chrome + wx-cli |
| ClawTeam POC | 待隔离环境 | 多 Agent 集群测试 |
| Huashu Design 基准测试 | 待真实设计任务 | 对比 open-design-* |
| GBrain 记忆基准测试 | 待脱敏语料 | 对比当前记忆检索 |

## 格式约定

- **来源/项目**：URL 或项目名
- **用户目标**：用户为何提供
- **评估/采纳**：是否采纳、如何采纳
- **输出位置**：结果放在哪里

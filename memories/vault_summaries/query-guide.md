# Query Guide

## 检索顺序

1. 确定问题是关于项目、可复用习惯、技能/工具、支付/产品话题，还是工作聊天上下文
2. 检查 `memories/self-evolution-ledger.md` 获取进化记录
3. 检查 `memories/vault_summaries/` 获取编译后的可复用知识
4. 检查 `MEMORY.md` 获取长期记忆
5. 最后才打开原始 session 日志

## 检索模式

精确搜索优先：

```bash
rg -n "<keyword>" memories/ ~/.hermes/sessions/
```

然后扩展：
- 进化账本
- 别名映射
- 时间顺序
- 来源引用

## Context Packet 标准

准备任务上下文时包含：
- 用户目标
- 相关持久规则
- 查找路径
- 源摘要或引用
- 当前不确定性
- 必须不导出或共享的内容

不包括完整原始历史，当更小的证据包足够时。

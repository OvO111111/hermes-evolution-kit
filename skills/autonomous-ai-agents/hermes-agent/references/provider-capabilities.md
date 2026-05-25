# Provider Capability Matrix

Quick reference for which providers support vision/image input. Check before using `vision_analyze`.

## Vision Support

| Provider/Model | Vision | Notes |
|----------------|--------|-------|
| Claude (Anthropic) | ✅ | All Claude 3+ models |
| GPT-4o / GPT-4V (OpenAI) | ✅ | All multimodal variants |
| Gemini (Google) | ✅ | All Gemini models |
| GLM-5.1 (Z.AI) | ❓ | Untested |
| DeepSeek V4 Pro | ❌ | Text-only. Error: "unknown variant image_url" |
| DeepSeek V4 Flash | ❌ | Text-only, same limitation |
| MiniMax M2.7 | ❓ | Untested |

## When Vision Fails

```
Error: "unknown variant image_url, expected text"
→ Model doesn't support vision. Switch models or ask user to describe.
```

Do NOT retry vision_analyze on the same model — it will always fail. Either:
1. Ask user to describe what's in the image
2. Ask user to switch to a vision-capable model (`/model claude-sonnet-4`)
3. Use browser tools to navigate to the page instead of looking at screenshots

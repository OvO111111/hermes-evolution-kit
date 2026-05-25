---
page_type: topic
created_at: "2026-05-25"
sensitivity: personal
confidence: medium
status: active
---

# Payment Product Design

## 微信支付产品映射

当用户询问微信支付产品时，先映射渠道类型到支付产品类型，再解释申请路径和资质逻辑。

## Known Mapping

- 外部移动浏览器网页 → H5 支付
- 微信公众号内页面 → JSAPI/公众号支付
- 小程序 → 小程序支付
- App → App 支付
- 授权后周期性自动扣款 → 委托代扣

## 政策验证

政策可能变化。当前答案前重新检查官方文档。

已知文档句柄：
- `4012791832`
- `4012791841`
- `4015477838`
- `4011987295`
- `4012161141`

## 来源

吸收自 Codex `payment-product-design.md` 和 `wechat-pay-product-design` skill。

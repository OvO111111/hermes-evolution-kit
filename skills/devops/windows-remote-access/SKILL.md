---
name: windows-remote-access
description: SSH into user's Windows PC via Tailscale for full remote control
---

# Windows Remote Access via Tailscale SSH

## Context
User ivan (ivanjmy@gmail.com) wants Hermes to SSH into his Windows PC to operate everything, not just Chrome browser.

## Setup Status (as of 2025-05-01)
- **VPN**: Custom split routing configured — `100.64.0.0/10` and `100.74.17.93/32` set to DIRECT/bypass so Tailscale traffic doesn't go through VPN
- **Tailscale**: Connected, Windows device "ivan" at **100.107.97.78** (server side is 100.74.17.93)
- **OpenSSH Server**: Was `NotPresent`, user was told to run:
  ```powershell
  Add-WindowsCapability -Online -Name OpenSSH.Server~~~~0.0.1.0
  Start-Service sshd
  Set-Service -Name sshd -StartupType Automatic
  New-NetFirewallRule -Name sshd -DisplayName 'OpenSSH Server (sshd)' -Enabled True -Direction Inbound -Protocol TCP -Action Allow -LocalPort 22
  ```
  **Waiting for user confirmation that this completed.**

## Connection (once SSH is up)
```bash
ssh username@100.107.97.78
```
- Need to confirm Windows username

## Troubleshooting
- If SSH refused: check `Get-Service sshd`, `Get-WindowsCapability -Online | Where-Object Name -like 'OpenSSH*'`
- If firewall blocks: `New-NetFirewallRule` command above
- If Tailscale offline: VPN is intercepting Tailscale traffic — verify split route rules

## Alternative: Chrome CDP
If SSH doesn't work out, Chrome remote debugging is a fallback:
```
chrome.exe --remote-debugging-port=9222
```
Then connect via CDP from server through Tailscale.

# PandaBytez Homebrew Tap

Official Homebrew tap for [Neutron](https://github.com/PandaBytez/neutron) — Fast WireGuard profile manager via
NetworkManager.

## Installation

### Recommended One-Line Install (with Auto-Update Trust)

```bash
brew tap pandabytez/tap && brew trust pandabytez/tap && brew install neutron
```

This taps the repository, marks it as trusted so automated updates and upgrades work seamlessly, and installs `neutron`.

Both `neutron` and `neutron-vpn` binary aliases will be available in your PATH.

---

### Manual Step-by-Step Installation

```bash
# 1. Tap the repository
brew tap pandabytez/tap

# 2. Trust the tap (required for non-interactive updates)
brew trust pandabytez/tap

# 3. Install
brew install neutron
```

To verify your trusted entries:

```bash
brew trust --json v1
```

# PandaBytez Homebrew Tap

Official Homebrew tap for [Neutron](https://github.com/PandaBytez/neutron) — Fast WireGuard profile manager via
NetworkManager.

## Installation

### Standard Installation

```bash
brew tap pandabytez/tap
brew install neutron
```

Or install in a single command:

```bash
brew install pandabytez/tap/neutron
```

Both `neutron` and `neutron-vpn` binary aliases will be available in your PATH.

---

### Homebrew Tap Trust Verification

In modern Homebrew versions with tap security verification enabled, non-official taps require explicit trust before
loading formulae.

To mark this tap as trusted:

```bash
# Trust the entire tap
brew trust pandabytez/tap

# Or trust specifically the neutron formula
brew trust --formula pandabytez/tap/neutron
```

To verify your trusted entries:

```bash
brew trust --json v1
```

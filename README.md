# PerfectoWeb tap

Homebrew formulae and casks for [PerfectoWeb](https://perfecto-web.com) projects.

```bash
brew tap perfectoweb/tap
```

## Casks

| Cask | What it is |
| :--- | :--- |
| [`gibson`](Casks/gibson.rb) | [Gibson](https://github.com/PerfectoWeb/Gibson), a macOS screen saver that draws a hacker film dashboard from real system telemetry |

```bash
brew install --cask perfectoweb/tap/gibson
```

Upgrades come with everything else:

```bash
brew upgrade --cask
```

Removing a cask takes its preferences with it:

```bash
brew uninstall --zap --cask gibson
```

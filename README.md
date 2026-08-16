<div align="center">

# PerfectoWeb tap

**Homebrew casks for PerfectoWeb's macOS apps.**

One tap, one `brew upgrade` for everything in it, and uninstalls that take their
preferences with them instead of leaving them behind.

[![Casks](https://img.shields.io/badge/casks-2-1FBF6B?logo=homebrew&logoColor=white)](#the-apps)
[![macOS 14+](https://img.shields.io/badge/macOS-14%2B-1FBF6B)](#requirements)
[![Notarized](https://img.shields.io/badge/builds-notarized-1FBF6B)](#what-a-cask-here-promises)

```bash
brew tap perfectoweb/tap
```

</div>

<br>

## The apps

<table>
<tr>
<td width="50%" align="center">
<a href="https://github.com/PerfectoWeb/Belay"><img src="https://raw.githubusercontent.com/PerfectoWeb/Belay/main/Promo/Social/og.png" alt="Belay" width="100%"></a>
</td>
<td width="50%" align="center">
<a href="https://github.com/PerfectoWeb/Gibson"><img src="https://raw.githubusercontent.com/PerfectoWeb/Gibson/main/docs/images/social-preview.png" alt="Gibson" width="100%"></a>
</td>
</tr>
<tr>
<td width="50%" valign="top">

### [Belay](https://github.com/PerfectoWeb/Belay)

Keeps your Mac awake while a local AI coding agent is working, and lets it sleep
the moment the work stops. No timer to start, no switch to remember.

[![Release](https://img.shields.io/github/v/release/PerfectoWeb/Belay?color=1FBF6B&label=release)](https://github.com/PerfectoWeb/Belay/releases/latest)

```bash
brew install --cask perfectoweb/tap/belay
```

</td>
<td width="50%" valign="top">

### [Gibson](https://github.com/PerfectoWeb/Gibson)

A screen saver that turns your display into the security dashboard from every
hacker film ever made. Half of it is real: the numbers come off your machine.

[![Release](https://img.shields.io/github/v/release/PerfectoWeb/Gibson?color=1FBF6B&label=release)](https://github.com/PerfectoWeb/Gibson/releases/latest)

```bash
brew install --cask perfectoweb/tap/gibson
```

</td>
</tr>
</table>

<br>

## Every cask, in one table

| Cask | What it is | Install |
| :--- | :--- | :--- |
| [`belay`](Casks/belay.rb) | Keeps a Mac awake only while a coding agent is working | `brew install --cask perfectoweb/tap/belay` |
| [`gibson`](Casks/gibson.rb) | A hacker-film dashboard screen saver driven by real telemetry | `brew install --cask perfectoweb/tap/gibson` |

<br>

## Using the tap

**Tap once.** After this, the casks are addressable by their short names.

```bash
brew tap perfectoweb/tap
```

**Upgrade with everything else.** Nothing here needs its own update ritual.

```bash
brew upgrade --cask
```

**Remove cleanly.** `--zap` takes the app's preferences, caches and container
with it, which a plain uninstall leaves on disk.

```bash
brew uninstall --zap --cask belay
```

<br>

## What a cask here promises

- **Signed and notarized by Apple.** Every release is built with a Developer ID
  certificate, sent to Apple's notary service, and stapled, so Gatekeeper opens
  it without a right-click and without a warning.
- **A checksum that is checked.** Each cask pins the release's SHA-256. Homebrew
  refuses the download if the bytes differ from the ones published.
- **`livecheck`, so `brew upgrade` is honest.** Every cask tells Homebrew where
  to look for the newest version rather than waiting for somebody to notice.
- **A `zap` block that is complete.** Preferences, caches, containers and
  application support, all listed, so uninstalling really uninstalls.

<br>

## Requirements

macOS 14 (Sonoma) or later, Apple silicon or Intel, and Homebrew.

<br>

## More from PerfectoWeb

Not everything is a Mac app, so not everything is here. The rest:

| Project | What it is |
| :--- | :--- |
| [PocketLab](https://github.com/PerfectoWeb/flipper-pocketlab) | A native Flipper Zero app that teaches the device's own features in bite-sized interactive lessons |
| [IBM VFD Display](https://github.com/PerfectoWeb/IBM-VFD-Display-ESP32-S3) | An ESP32-S3 driving a Futaba / IBM 20x2 vacuum fluorescent customer display |
| [Perfect Dark for Nova](https://github.com/PerfectoWeb/nova-perfectdark-theme) | An easy-on-the-eyes dark theme for Panic's Nova editor |
| [Favicon Clip](https://github.com/PerfectoWeb/nova-favicon-clip) | Generates the whole favicon tag set for every platform, from Nova |
| [Lorem Clip](https://github.com/PerfectoWeb/nova-lorem-clip) | Lorem ipsum without leaving the editor |

<br>

## Reporting something

A problem with an **app** belongs in that app's own repository, where the code
is. A problem with **the packaging**, a bad checksum, a cask that will not
upgrade, a `zap` that leaves something behind, belongs
[here](https://github.com/PerfectoWeb/homebrew-tap/issues).

<div align="center">
<br>

[perfecto-web.com](https://perfecto-web.com)

</div>

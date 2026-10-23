# n2ctech Homebrew tap

Official Homebrew casks for [NotiFerry](https://notiferry.com/) and [Loudwalk](https://loudwalk.com/).

## NotiFerry

[NotiFerry](https://notiferry.com/) is a macOS menu-bar app that forwards
Notification Center alerts from your Mac apps to your iPhone through the free
ntfy app.

```bash
brew install --cask n2ctech/tap/notiferry
```

The cask installs the same notarized download as the website. NotiFerry is
paid software: a 7-day trial that starts only after a test notification
reaches your iPhone, then a one-time license.

- Setup guide: <https://notiferry.com/mac-notifications-on-iphone>
- Support: <https://notiferry.com/support>

NotiFerry requires macOS 15 or later. The Mac must be awake for forwarding to
work, and delivery through ntfy is not end-to-end encrypted.

## Loudwalk

[Loudwalk](https://loudwalk.com/) is a spaced-repetition flashcard app for Apple
silicon Macs and iPhone that imports your Anki decks (`.apkg` and `.colpkg`)
with their full review history and FSRS-6 schedule, asks due cards out loud,
grades spoken answers on meaning, and lets you talk cards through with an AI
teacher.

```bash
brew install --cask n2ctech/tap/loudwalk
```

Reviewing on screen, FSRS-6 scheduling, iCloud Drive sync, the Mac CLI
(`Loudwalk.app/Contents/MacOS/Loudwalk cards`), and exporting back to Anki are
free forever. The voice tutor includes a 7-day, 150-card free trial with no
payment card required.

- Guides: <https://loudwalk.com/guides>
- Changelog: <https://loudwalk.com/changelog>

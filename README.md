# n2ctech Homebrew tap

Official Homebrew casks for [NotiFerry](https://notiferry.com/) and [Loudwalk](https://loudwalk.com/).

## NotiFerry

[NotiFerry](https://notiferry.com/) is a macOS menu-bar app that forwards
Notification Center alerts from your Mac apps to your iPhone and Apple Watch
through the free ntfy app.

```bash
brew install --cask n2ctech/tap/notiferry
```

The cask installs the same notarized download as the website. NotiFerry is
paid software: a 7-day trial that starts only after a test notification
reaches your iPhone, then a one-time license.

- Setup guide: <https://notiferry.com/mac-notifications-on-iphone>
- Claude Code, Cursor & Codex notifications: <https://notiferry.com/claude-code-notifications-on-iphone> · <https://notiferry.com/cursor-and-codex-notifications-on-iphone>
- Xcode build, `terminal-notifier`, and `osascript` workflows: <https://notiferry.com/xcode-build-notifications-on-iphone> · <https://notiferry.com/terminal-notifier-to-iphone>
- ntfy on macOS, iPhone, and Apple Watch: <https://notiferry.com/ntfy-macos-notifications> · <https://notiferry.com/ntfy-apple-watch-notifications-from-mac>
- Technical deep dive (`usernoted` Notification Center SQLite DB): <https://notiferry.com/macos-notification-center-sqlite-database>
- Comparisons (NotiFerry vs. AhPushIt, Hermes, notifwd, Pushover & ntfy): <https://notiferry.com/mac-to-iphone-notification-apps> · <https://notiferry.com/pushover-vs-ntfy-macos-notifications>
- All guides (EN / FR): <https://notiferry.com/guides> · <https://notiferry.com/fr/guides>
- LLM & AI reference (`llms.txt` / `llms-full.txt`): <https://notiferry.com/llms.txt> · <https://notiferry.com/llms-full.txt>
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

- Website (EN / FR): <https://loudwalk.com> · <https://loudwalk.com/fr>
- iPhone App Store: <https://apps.apple.com/app/loudwalk/id6809025945>
- Hands-free Anki on a walk & AirPods setup: <https://loudwalk.com/guides/anki-while-walking> · <https://loudwalk.com/guides/hands-free-anki-iphone-airpods>
- USMLE Step 1/2, AnKing, AnkiHub & MCAT out loud: <https://loudwalk.com/guides/anki-usmle-mcat-nursing-walking>
- Law school, MBE & Bar Exam oral recall: <https://loudwalk.com/guides/anki-law-school-bar-exam-oral-recall>
- Médecine (PASS/LAS, EDN, ECOS, Fiches LiSA) & Droit (CRFPA, Khôlles): <https://loudwalk.com/fr/guides/anki-pass-las-edn-ecos-medecine> · <https://loudwalk.com/fr/guides/anki-droit-crfpa-prepa-kholles>
- FSRS-6 scheduler parity (750 golden transitions) & `.colpkg` round-trip export: <https://loudwalk.com/guides/anki-apkg-colpkg-import-fsrs-export> · <https://loudwalk.com/anki-golden.json> · <https://loudwalk.com/anki-export-check.py>
- Create flashcards from PDFs with Claude Code or Codex (`Loudwalk cards` CLI): <https://loudwalk.com/guides/claude-code-flashcards-cli>
- Voice flashcard apps compared (AnkiMobile TTS vs 8BitDo vs AnkiHub AI vs Loudwalk): <https://loudwalk.com/guides/voice-flashcard-apps-compared>
- All guides (EN / FR): <https://loudwalk.com/guides> · <https://loudwalk.com/fr/guides>
- LLM & AI reference (`llms.txt` / `llms-full.txt`): <https://loudwalk.com/llms.txt> · <https://loudwalk.com/llms-full.txt>
- Changelog: <https://loudwalk.com/changelog>

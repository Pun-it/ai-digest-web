# AI Digest — Public web mirror

Public mirror of the AI Daily Digest markdown reports. Served via GitHub Pages
so the `ai-digest-reader` Android app can fetch `digests/<YYYY-MM-DD>.md`
without any auth token.

Source repo is private (`Pun-it/ai-digest`); this repo only contains the
generated `digests/` files plus this README.

Site: https://pun-it.github.io/ai-digest-web/
Digest URL: https://pun-it.github.io/ai-digest-web/digests/2026-08-20.md

## Sync

Regenerate after the cron job writes a new digest (or just keep in sync with
the private repo's `digests/`):

```bash
cp /c/zz-misc/ai-digest/digests/*.md digests/
git add -A && git commit -m "sync digests $(date +%Y-%m-%d)" && git push
```

Or run `bash scripts/sync.sh`.

## App

The Android app default base URL points here:
`https://pun-it.github.io/ai-digest-web/digests`

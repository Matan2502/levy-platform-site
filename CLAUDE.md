# CLAUDE.md

## What this is
Static marketing site for **levy-platform.com** (Levy Platform — custom business platforms), hosted on GitHub Pages from `main` of https://github.com/Matan2502/levy-platform-site. Backup URL: https://matan2502.github.io/levy-platform-site/.

## Structure
- `index.html` — the entire site in one file: Hebrew, `lang="he" dir="rtl"`, Heebo font, all CSS/JS inline, images embedded as base64.
- `learn-api/index.html` — standalone Hebrew/RTL API practice page (live requests to `https://api.frankfurter.dev/v1/latest`), styled to match the main site.
- `CNAME` — contains `levy-platform.com`; connects the custom domain to GitHub Pages.
- `deploy.sh` — publish script (see below).
- `edit.command` / `publish.command` — double-click helpers for the owner; gitignored (local-only) along with `.vscode/`, `dbg*.html`, `*.tmp`.

## Deploy flow
- `deploy.sh [msg]`: `git add -A`, commit (default message "עדכון אתר <timestamp>" if none given), `git push` to `main`. GitHub Pages rebuilds in ~1 minute — pushing IS deploying live.
- `publish.command` just runs `./deploy.sh`; `edit.command` opens the folder in VS Code (local preview via the "Go Live" extension on localhost:5500).

## RTL / Hebrew
All pages are Hebrew RTL. Keep `dir="rtl"` and RTL-aware layout; code/URL snippets in `learn-api` use `.mono` with `direction:ltr`.

## Warnings
- Do NOT touch `CNAME` — breaks the custom domain.
- `deploy.sh` / `publish.command` publish straight to the live site; don't run them unless asked.
- Everything (styles, JS, base64 images) lives inside `index.html` — edit carefully, no build step exists.

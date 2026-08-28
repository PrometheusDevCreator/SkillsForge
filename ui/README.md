# ui/

The SkillsForge interface and analysis engine is a single self-contained file:

- `index.html` — the whole application (no build step, runs from `file://`).
- `assets/skillsforge_roundel.png` — the mark (also embedded in index.html as a data URI, so the app is self-contained without it).

Netlify serves this folder as the site root (see `netlify.toml`), so `ui/index.html` is published at `/`.

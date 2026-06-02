# stuff

A basic [GitHub Pages](https://pages.github.com/) site for hosting pages and files.

**Live at:** https://cannuk.github.io/stuff/

## How it works

Anything committed to the `main` branch is served statically. Just add files:

- `index.html` — the landing page
- Subfolders (e.g. `hello/index.html`) are served at `/stuff/hello/`
- Any other file (PDFs, images, JSON, etc.) is served at its path

The `.nojekyll` file disables Jekyll processing, so files are served exactly as
committed (including ones that start with `_`).

## Publishing changes

```bash
git add .
git commit -m "Add a page"
git push
```

Changes go live within a minute or so.

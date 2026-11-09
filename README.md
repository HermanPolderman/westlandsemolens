# Westlandse Molens

Website for [Westlandse Molens](https://www.westlandsemolens.nl/), built with
[Hugo](https://gohugo.io/) and the [Docsy](https://www.docsy.dev/) theme.

## Requirements

- Hugo **extended** v0.160.1 or newer
- Node.js (LTS) and npm
- Go 1.18+ and Git (for Hugo Modules)

## Local development

```bash
npm install
npm run serve
```

`npm install` installs Docsy's Bootstrap/Font Awesome assets and Dart Sass
(`sass-embedded`). Docsy compiles its SCSS with the Dart Sass `sass` CLI, which
`npm run` puts on `PATH` from `node_modules/.bin`.

If you run `hugo` directly instead of through an npm script, add that directory
to `PATH` first:

```bash
PATH="$PWD/node_modules/.bin:$PATH" hugo server
```

## Build

```bash
npm run build
```

This runs `./build.sh`, which installs the npm dependencies and writes the
generated site to `public/`.

## Deploy

- `./new_deploy.sh` builds the site and uploads a tarball to the server.
- `./deploy.sh` builds inside Docker and syncs `public/` to the web root.

## Theme

Docsy v0.18.1 is installed as a Hugo Module:

- Module: `github.com/docsy/docsy/theme`
- Configured via `theme` in `hugo.toml`
- Update with:

  ```bash
  hugo mod get github.com/docsy/docsy/theme@latest
  hugo mod tidy
  hugo mod npm pack
  npm install
  ```

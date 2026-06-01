# Applied Data Science class blog

This is the class blog for Applied Data Science.

Live site: <https://TZstatsADS.github.io>

## Safe update workflow

Use this sequence whenever you edit posts or pages:

1. Pull latest changes.
2. Build locally.
3. If build passes, push.
4. Confirm GitHub Actions build is green.

## Local setup (macOS)

This project is a Jekyll site managed by Bundler.

### Recommended: avoid macOS system Ruby

Using the built-in `/System/Library/.../ruby` often fails when native gems compile.
Use a user-managed Ruby instead (for example `rbenv`).

```bash
brew install rbenv ruby-build
rbenv init
rbenv install 3.2.4
rbenv local 3.2.4
ruby -v
```

### 1) Install the Bundler version pinned by this repo

This repo currently pins Bundler `2.3.26` in `Gemfile.lock`.

```bash
gem install bundler -v 2.3.26
```

### 2) Install gems

```bash
bundle _2.3.26_ install
```

### 3) Build site (no server)

```bash
bundle _2.3.26_ exec jekyll build
```

Output will be generated in `_site/`.

### 4) Run local preview server

```bash
bundle _2.3.26_ exec jekyll serve --livereload
```

Then open: <http://127.0.0.1:4000>

## Common commands

```bash
# quick local verification before pushing
bundle _2.3.26_ exec jekyll build

# preview locally
bundle _2.3.26_ exec jekyll serve --livereload
```

## One-command local preview (recommended on this Mac)

If Bundler gets stuck on dependency resolution, use the Docker preview script:

```bash
./scripts/preview-docker.sh
```

Then open: <http://127.0.0.1:4000>

## If build fails

Try these in order:

```bash
bundle _2.3.26_ install
bundle _2.3.26_ update --bundler
bundle _2.3.26_ exec jekyll build --trace
```

If you are on macOS and see native extension errors (`eventmachine`, `http_parser.rb`):

```bash
xcode-select --install
```

Then retry `bundle _2.3.26_ install`.

If a new post causes the error, check front matter keys (`title`, `date`, `layout`) and YAML formatting.

## CI protection

This repo now includes a GitHub Actions workflow that runs `bundle exec jekyll build` on every push and pull request. That gives you an automatic safety net before or right after deployment.

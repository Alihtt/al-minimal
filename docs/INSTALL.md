# Installation

Complete installation guide for your Jekyll blog.

## Prerequisites

- **Ruby** 3.0 or higher
- **Node.js** 18 or higher
- **Git**

Check versions:
```bash
ruby -v
node -v
git --version
```

## Installation Methods

### Method 1: Use as Template (Recommended)

1. Click **"Use this template"** button on GitHub
2. Name your repo: `username.github.io`
3. Clone your new repo:
   ```bash
   git clone https://github.com/username/username.github.io.git
   cd username.github.io
   ```

### Method 2: Fork

1. Fork this repository
2. Rename to: `username.github.io`
3. Clone your fork:
   ```bash
   git clone https://github.com/username/username.github.io.git
   cd username.github.io
   ```

## Setup

### 1. Install Ruby Dependencies

```bash
bundle install
```

If `bundle` is not found:
```bash
gem install bundler
bundle install
```

### 2. Install Node Dependencies

```bash
npm install
```

### 3. Build CSS

```bash
npm run build:css
```

### 4. Run Locally

```bash
bundle exec jekyll serve
```

Visit: `http://localhost:4000`

## Development Mode

For active development, run these in separate terminals:

**Terminal 1 - CSS Watcher:**
```bash
npm run watch:css
```

**Terminal 2 - Jekyll Server:**
```bash
bundle exec jekyll serve --livereload
```

Changes auto-reload! 🔄

## Common Issues

### Port 4000 in use?
```bash
bundle exec jekyll serve --port 4001
```

### Bundle install fails?
```bash
bundle update
bundle install
```

### CSS not updating?
```bash
npm run build:css
# Then restart Jekyll
```

## Next Steps

- ✅ Installed? Go to [CUSTOMIZING.md](CUSTOMIZING.md)
- ✅ Ready to write? See [CONTENT.md](CONTENT.md)
- ✅ Deploy? Check [DEPLOYMENT.md](DEPLOYMENT.md)


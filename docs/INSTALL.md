# Installing and Deploying

<!--ts-->

- [Installing and Deploying](#installing-and-deploying)
  - [Recommended Approach](#recommended-approach)
  - [Local Setup on Windows](#local-setup-on-windows)
  - [Local Setup using Docker (Recommended)](#local-setup-using-docker-recommended)
    - [Prerequisites](#prerequisites)
    - [Quick Start](#quick-start)
    - [Using Make Commands](#using-make-commands)
    - [Using Docker Compose Directly](#using-docker-compose-directly)
    - [Development with Live CSS Watching](#development-with-live-css-watching)
    - [Building for Production](#building-for-production)
    - [Accessing the Container](#accessing-the-container)
    - [Troubleshooting Docker](#troubleshooting-docker)
  - [Local Setup (Traditional Method)](#local-setup-traditional-method)
    - [Prerequisites](#prerequisites-1)
    - [Installation Steps](#installation-steps)
    - [Development Mode](#development-mode)
    - [Common Issues](#common-issues)
  - [Deployment](#deployment)
    - [GitHub Pages (Recommended)](#github-pages-recommended)
    - [Netlify](#netlify)
    - [Manual Deployment](#manual-deployment)
  - [Upgrading Dependencies](#upgrading-dependencies)

<!--te-->

## Recommended Approach

The **fastest and easiest** way to get your blog running is:

1. Create your repository using [the template](https://github.com/alihtt/al-minimal) by clicking **Use this template** → **Create a new repository**
2. Name it `<your-github-username>.github.io` (or `<your-github-orgname>.github.io` for organizations)
3. Go to **Settings** → **Actions** → **General** → **Workflow permissions** and select **Read and write permissions**
4. Your site will automatically deploy! Visit `https://<your-github-username>.github.io` in a few minutes

For local development and customization, use Docker (recommended) or traditional installation below.

## Local Setup on Windows

If you are using Windows, it is **highly recommended** to use [Windows Subsystem for Linux (WSL)](https://learn.microsoft.com/en-us/windows/wsl/install). WSL provides a Linux environment directly on Windows.

**Installation:**

1. Open PowerShell as Administrator
2. Run: `wsl --install`
3. Restart your computer
4. Set up your Linux username and password

After WSL is installed, follow the Docker setup instructions below. Docker Desktop for Windows works seamlessly with WSL 2.

## Local Setup using Docker (Recommended)

Using Docker is the **easiest and most reliable** way to run your blog locally. No need to install Ruby, Jekyll, Node.js, or manage dependencies!

### Prerequisites

- **Docker Desktop** ([download here](https://docs.docker.com/get-docker/))
  - For Windows: Docker Desktop with WSL 2 backend
  - For Mac: Docker Desktop for Mac
  - For Linux: Docker Engine + Docker Compose
- **Git** for cloning the repository

That's it! Docker handles everything else.

### Quick Start

```bash
# Clone your repository
git clone https://github.com/<your-username>/<your-repo>.git
cd <your-repo>

# Build and start (using Make)
make up

# Or using docker-compose directly
docker-compose up
```

Open your browser to `http://localhost:4000` 🎉

The site will automatically reload when you make changes!

### Using Make Commands

The easiest way to work with Docker is using the provided Makefile:

```bash
# Show all available commands
make help

# Build the Docker image
make build

# Start the development server
make up

# Start in background (detached mode)
make up -d

# Stop all containers
make down

# Restart containers
make restart

# View logs
make logs

# Clean up everything (containers, images, cache)
make clean

# Open a shell in the container
make shell

# Install/update dependencies
make install

# Start with live CSS watching (runs 2 containers)
make dev

# Build for production
make prod
```

### Using Docker Compose Directly

If you don't want to use Make, you can use docker-compose commands:

```bash
# Start the server (attached mode - see logs)
docker-compose up

# Start in background
docker-compose up -d

# Stop containers
docker-compose down

# View logs
docker-compose logs -f

# Rebuild after dependency changes
docker-compose build

# Rebuild without cache
docker-compose build --no-cache

# Run a one-off command
docker-compose run --rm jekyll bundle exec jekyll build
```

### Development with Live CSS Watching

For active development with automatic CSS rebuilding:

```bash
make dev
# or
docker-compose --profile dev up
```

This runs **two containers**:
- `jekyll` - Main Jekyll server with LiveReload
- `tailwind` - Watches and rebuilds CSS automatically

Now editing your Tailwind styles in `assets/css/input.css` will automatically rebuild!

### Building for Production

```bash
make prod
# or
docker-compose run --rm -e JEKYLL_ENV=production jekyll bash -c "npm run build:css && bundle exec jekyll build"
```

The optimized site will be in the `_site/` directory.

### Accessing the Container

Sometimes you need to run commands inside the container:

```bash
# Open a bash shell
make shell
# or
docker-compose exec jekyll bash

# Inside the container, you can run:
bundle exec jekyll --version
npm --version
gem list
```

### Troubleshooting Docker

#### Container won't start

```bash
# Clean everything and rebuild
make clean
make build
make up
```

#### Dependencies not updating

If you modified `Gemfile` or `package.json`:

```bash
# Rebuild without cache
docker-compose build --no-cache
make up
```

#### Port 4000 already in use

```bash
# Find what's using the port
sudo lsof -i :4000

# Kill the process
kill -9 <PID>

# Or change the port in docker-compose.yml
ports:
  - "4001:4000"  # Map to 4001 instead
```

#### Permission issues (Linux only)

```bash
# Fix ownership of generated files
sudo chown -R $USER:$USER .
```

#### Docker is slow

**On Windows/Mac:**
- Increase Docker Desktop resources (Settings → Resources)
- Allocate more CPU and memory

**On all platforms:**
- The first build is slow (downloading images, installing dependencies)
- Subsequent builds are much faster due to caching
- Use `docker-compose up -d` to run in background

## Local Setup (Traditional Method)

If you prefer not to use Docker, you can install dependencies locally.

### Prerequisites

Check that you have these installed:

```bash
ruby -v    # Should be 3.0 or higher
node -v    # Should be 18 or higher
npm -v     # Comes with Node.js
git --version
```

**Installation links:**
- [Ruby](https://www.ruby-lang.org/en/downloads/) (recommend using [rbenv](https://github.com/rbenv/rbenv))
- [Node.js](https://nodejs.org/) (recommend using [nvm](https://github.com/nvm-sh/nvm))
- [Git](https://git-scm.com/downloads)

### Installation Steps

```bash
# 1. Clone your repository
git clone https://github.com/<your-username>/<your-repo>.git
cd <your-repo>

# 2. Install Ruby dependencies
gem install bundler
bundle install

# 3. Install Node dependencies
npm install

# 4. Build CSS
npm run build:css

# 5. Start Jekyll server
bundle exec jekyll serve
```

Visit `http://localhost:4000` in your browser! 🎉

### Development Mode

For active development, run these in **separate terminals**:

**Terminal 1 - CSS Watcher:**
```bash
npm run watch:css
```

**Terminal 2 - Jekyll Server:**
```bash
bundle exec jekyll serve --livereload
```

Now both CSS and content changes reload automatically!

### Common Issues

#### Bundle command not found

```bash
gem install bundler
```

#### Jekyll serve fails

```bash
# Update dependencies
bundle update
bundle exec jekyll serve
```

#### Port 4000 already in use

```bash
# Use a different port
bundle exec jekyll serve --port 4001
```

#### npm install fails

```bash
# Clear cache and reinstall
rm -rf node_modules package-lock.json
npm install
```

#### CSS not updating

```bash
# Rebuild CSS
npm run build:css
# Then restart Jekyll
```

#### Permission errors (macOS/Linux)

```bash
# Install gems to user directory
bundle install --path vendor/bundle
```

#### Old Ruby version

Use [rbenv](https://github.com/rbenv/rbenv) to install a newer version:

```bash
# Install rbenv
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/main/bin/rbenv-installer | bash

# Install Ruby 3.3
rbenv install 3.3.0
rbenv global 3.3.0

# Verify
ruby -v
```

## Deployment

### GitHub Pages (Recommended)

GitHub Pages offers free hosting with automatic deployment.

**Step 1: Enable GitHub Pages**

1. Go to your repository on GitHub
2. Click **Settings** → **Pages**
3. Under "Source", select **GitHub Actions**

**Step 2: Configure Permissions**

1. Go to **Settings** → **Actions** → **General**
2. Under "Workflow permissions", select **Read and write permissions**
3. Check **Allow GitHub Actions to create and approve pull requests**
4. Click **Save**

**Step 3: Push Your Code**

```bash
# Build CSS (important!)
npm run build:css

# Commit everything
git add .
git commit -m "Initial deployment"

# Push to GitHub
git push origin main
```

**Step 4: Wait for Deployment**

1. Go to the **Actions** tab in your repository
2. Watch the "Deploy Jekyll site" workflow
3. When complete (✅), visit: `https://<your-username>.github.io`

**Done!** Your blog is live! 🎉

Every time you push to `main`, your site automatically rebuilds and deploys.

### Netlify

**Alternative to GitHub Pages:**

1. Sign up at [Netlify](https://www.netlify.com/)
2. Click **Add new site** → **Import an existing project**
3. Connect to your GitHub repository
4. Configure build settings:
   - **Build command**: `npm run build:css && bundle exec jekyll build`
   - **Publish directory**: `_site`
5. Add environment variable:
   - `JEKYLL_ENV` = `production`
6. Click **Deploy site**

Your site will be available at `https://<random-name>.netlify.app` (customizable)

### Manual Deployment

Deploy to any hosting provider:

```bash
# Build for production
npm run build:css
JEKYLL_ENV=production bundle exec jekyll build

# The _site/ directory contains your complete website
# Upload its contents to your hosting provider
```

**Note:** Make sure `url` and `baseurl` in `_config.yml` are correctly set for your domain.

## Upgrading Dependencies

Keep your blog up-to-date with the latest versions:

### Using Docker

```bash
# Update Gemfile or package.json, then:
docker-compose build --no-cache
make up
```

### Traditional Installation

**Update Ruby gems:**
```bash
bundle update
bundle install
```

**Update npm packages:**
```bash
npm update
npm install
```

**Update Jekyll:**
```bash
bundle update jekyll
```

**Update Tailwind CSS:**
```bash
npm update tailwindcss
npm run build:css
```

### Check for Security Updates

```bash
# Ruby
bundle audit --update

# Node.js
npm audit
npm audit fix
```

---

## Quick Reference

| Goal | Docker Command | Traditional Command |
|------|---------------|-------------------|
| Start server | `make up` | `bundle exec jekyll serve` |
| Build CSS | (auto) | `npm run build:css` |
| Install deps | `make install` | `bundle install && npm install` |
| Production build | `make prod` | `JEKYLL_ENV=production bundle exec jekyll build` |
| Access shell | `make shell` | N/A |
| View logs | `make logs` | N/A |
| Clean up | `make clean` | `bundle exec jekyll clean` |

---

## Next Steps

- ✅ Installed? Go to [CUSTOMIZING.md](CUSTOMIZING.md) to personalize your blog
- ✅ Ready to write? See [CONTENT.md](CONTENT.md) for creating posts
- ✅ Need help? Check [FAQ.md](FAQ.md) for common questions

**Happy blogging!** 📝

# Deployment Guide

Complete guide to deploying your Jekyll blog to various platforms.

<!--ts-->

- [Deployment Guide](#deployment-guide)
  - [GitHub Pages (Recommended)](#github-pages-recommended)
    - [Prerequisites](#prerequisites)
    - [Step-by-Step Setup](#step-by-step-setup)
    - [Updating Your Blog](#updating-your-blog)
    - [How It Works](#how-it-works)
  - [Custom Domain](#custom-domain)
    - [Adding CNAME File](#adding-cname-file)
    - [Configuring DNS](#configuring-dns)
    - [Updating Configuration](#updating-configuration)
    - [Enabling in GitHub](#enabling-in-github)
    - [Using www Subdomain](#using-www-subdomain)
  - [Netlify](#netlify)
    - [Setup](#setup)
    - [Environment Variables](#environment-variables)
    - [Custom Domain on Netlify](#custom-domain-on-netlify)
    - [Netlify Advantages](#netlify-advantages)
  - [Docker-Based Deployment](#docker-based-deployment)
    - [Building with Docker](#building-with-docker)
    - [Deploy to Any Server](#deploy-to-any-server)
  - [Manual Deployment](#manual-deployment)
    - [Build Locally](#build-locally)
    - [Deploy to Server](#deploy-to-server)
  - [Other Hosting Options](#other-hosting-options)
    - [Vercel](#vercel)
    - [Render](#render)
    - [Cloudflare Pages](#cloudflare-pages)
  - [Troubleshooting](#troubleshooting)
    - [Build Failing?](#build-failing)
    - [404 on All Pages?](#404-on-all-pages)
    - [CSS Not Loading?](#css-not-loading)
    - [Changes Not Showing?](#changes-not-showing)
    - [Custom Domain Not Working?](#custom-domain-not-working)
  - [Production Checklist](#production-checklist)
  - [Post-Launch](#post-launch)
    - [SEO](#seo)
    - [Analytics](#analytics)
    - [Monitoring](#monitoring)
  - [Continuous Deployment](#continuous-deployment)

<!--te-->

## GitHub Pages (Recommended)

GitHub Pages is the **easiest and free** way to host your Jekyll blog. It provides:
- Free SSL certificates
- Unlimited bandwidth
- Automatic builds from Git
- Custom domain support
- GitHub CDN

### Prerequisites

- GitHub account
- Repository named `<username>.github.io` (for personal site) or any name (for project site)
- Blog content ready

### Step-by-Step Setup

**Step 1: Enable GitHub Pages**

1. Go to your repository on GitHub
2. Click **Settings** → **Pages**
3. Under "Build and deployment" → "Source", select **GitHub Actions**
4. Click **Save**

**Step 2: Configure Workflow Permissions**

This is **crucial** for automated deployment:

1. Go to **Settings** → **Actions** → **General**
2. Scroll to "Workflow permissions"
3. Select **Read and write permissions**
4. Check ✅ **Allow GitHub Actions to create and approve pull requests**
5. Click **Save**

**Step 3: Prepare Your Code**

```bash
# Make sure CSS is built
npm run build:css

# Check everything is committed
git status

# If using Docker, you can build production locally to test:
make prod
```

**Step 4: Push to GitHub**

```bash
# Commit all changes
git add .
git commit -m "Initial deployment"

# Push to main branch
git push origin main
```

**Step 5: Monitor Deployment**

1. Go to the **Actions** tab in your repository
2. You'll see a workflow called "Deploy Jekyll site" running
3. Click on it to see real-time progress
4. Wait for the workflow to complete (takes 3-5 minutes)
5. Look for a green checkmark ✅

**Step 6: Visit Your Site**

Navigate to `https://<your-username>.github.io`

**🎉 Your blog is live!**

### Updating Your Blog

The beauty of GitHub Pages with Actions is that **every push automatically deploys**:

```bash
# Make changes to your blog
# ... edit files ...

# Commit and push
git add .
git commit -m "Add new post about Docker"
git push origin main

# Site automatically rebuilds and deploys!
```

**No manual building required!** Just push and wait 3-5 minutes.

### How It Works

The `.github/workflows/deploy.yml` file contains the deployment automation:

1. **Triggered** on every push to `main` branch
2. **Checks out** your code
3. **Sets up** Ruby and Node.js
4. **Installs** all dependencies
5. **Builds** Tailwind CSS
6. **Builds** Jekyll site with production settings
7. **Deploys** to GitHub Pages

**You don't need to understand this** - it just works! But if you're curious, check the file.

## Custom Domain

Want to use your own domain like `yourblog.com` instead of `username.github.io`?

### Adding CNAME File

Create a file named `CNAME` in your project root (not in any subdirectory):

```
yourdomain.com
```

**Just the domain**, no `http://` or trailing slashes.

**For www subdomain:**
```
www.yourdomain.com
```

Commit and push this file.

### Configuring DNS

At your domain registrar (Namecheap, GoDaddy, Cloudflare, etc.), add these DNS records:

**For apex domain (yourdomain.com):**

| Type | Name | Value           |
|------|------|-----------------|
| A    | @    | 185.199.108.153 |
| A    | @    | 185.199.109.153 |
| A    | @    | 185.199.110.153 |
| A    | @    | 185.199.111.153 |

**For www subdomain (www.yourdomain.com):**

| Type  | Name | Value                    |
|-------|------|--------------------------|
| CNAME | www  | <username>.github.io.    |

**Note the trailing dot** on the CNAME value! Some providers require it.

**For both (recommended):**

Add all **4 A records** (above) plus the **CNAME** record. Then add a redirect from www → apex or vice versa at your DNS provider.

### Updating Configuration

Edit `_config.yml`:

```yaml
url: "https://yourdomain.com"  # Your custom domain
baseurl: ""  # Keep empty for root domain
```

Commit and push.

### Enabling in GitHub

1. Go to **Settings** → **Pages**
2. Under "Custom domain", enter your domain: `yourdomain.com`
3. Click **Save**
4. Wait a few minutes for DNS to propagate
5. Check ✅ **Enforce HTTPS** (may take up to 24 hours to become available)

**DNS propagation** can take anywhere from minutes to 24 hours. Be patient!

**Test your DNS:**
```bash
# Check A records
dig yourdomain.com +short

# Check CNAME
dig www.yourdomain.com +short
```

### Using www Subdomain

If you prefer `www.yourdomain.com`:

1. Set CNAME file to: `www.yourdomain.com`
2. Add CNAME DNS record: `www` → `<username>.github.io.`
3. Optionally add A records for apex redirect
4. Update `_config.yml` url to `https://www.yourdomain.com`

**Recommendation:** Use apex domain without www (cleaner and shorter), but redirect www to apex.

## Netlify

Netlify is a powerful alternative to GitHub Pages with additional features.

### Setup

**Step 1: Sign Up**

1. Go to [netlify.com](https://www.netlify.com/)
2. Sign up with GitHub
3. Authorize Netlify to access your repositories

**Step 2: Import Repository**

1. Click **Add new site** → **Import an existing project**
2. Choose **GitHub** as your Git provider
3. Select your blog repository
4. Authorize Netlify if prompted

**Step 3: Configure Build Settings**

```yaml
Build command: npm run build:css && bundle exec jekyll build
Publish directory: _site
```

Click **Deploy site**

**Step 4: Wait for Deployment**

First deploy takes 3-5 minutes. Watch the deploy log for any errors.

### Environment Variables

Add these in Site settings → Build & deploy → Environment:

| Key          | Value      |
|--------------|------------|
| JEKYLL_ENV   | production |
| RUBY_VERSION | 3.3.0      |

These ensure production builds with the correct Ruby version.

### Custom Domain on Netlify

1. Go to **Site settings** → **Domain management**
2. Click **Add custom domain**
3. Enter your domain: `yourdomain.com`
4. Follow Netlify's DNS instructions
5. Netlify automatically provisions SSL (Let's Encrypt)

**Options:**
- **Netlify DNS** (easiest) - Transfer nameservers to Netlify
- **External DNS** - Add records at your current provider

### Netlify Advantages

- ✅ **Faster builds** - Generally quicker than GitHub Actions
- ✅ **Deploy previews** - Every pull request gets a preview URL
- ✅ **Instant rollbacks** - One-click rollback to any previous deploy
- ✅ **Form handling** - Built-in form processing
- ✅ **Split testing** - A/B testing different versions
- ✅ **Edge functions** - Serverless functions at the edge
- ✅ **Better analytics** - Built-in analytics dashboard

**Disadvantages:**
- Free tier has build minute limits (300 min/month)
- One step more complex than GitHub Pages

## Docker-Based Deployment

Use Docker to build and deploy to any server.

### Building with Docker

```bash
# Build production site with Docker
make prod

# Or using docker-compose directly
docker-compose run --rm -e JEKYLL_ENV=production jekyll bash -c "npm run build:css && bundle exec jekyll build"

# The _site/ directory contains your complete website
```

This gives you a production-ready build without installing Ruby or Node.js on your deployment server!

### Deploy to Any Server

**Option 1: Copy via SCP**

```bash
# Build with Docker
make prod

# Copy to your server
scp -r _site/* user@yourserver.com:/var/www/html/
```

**Option 2: Rsync (Recommended)**

```bash
# Build with Docker
make prod

# Sync to server (only uploads changes)
rsync -avz --delete _site/ user@yourserver.com:/var/www/html/
```

**Option 3: Docker Image**

Create a production Docker image that includes the built site:

```dockerfile
# Dockerfile.prod
FROM nginx:alpine
COPY _site /usr/share/nginx/html
```

```bash
# Build production site
make prod

# Build Docker image
docker build -f Dockerfile.prod -t myblog:latest .

# Run or deploy
docker run -p 80:80 myblog:latest
```

**Option 4: CI/CD Pipeline**

Integrate Docker builds in your CI/CD:

```yaml
# .gitlab-ci.yml example
deploy:
  image: docker:latest
  script:
    - docker-compose run --rm jekyll bash -c "npm run build:css && bundle exec jekyll build"
    - rsync -avz _site/ $DEPLOY_USER@$DEPLOY_HOST:/var/www/html/
```

## Manual Deployment

Build and deploy manually without Docker.

### Build Locally

```bash
# Install dependencies
bundle install
npm install

# Build CSS
npm run build:css

# Build Jekyll site (production mode)
JEKYLL_ENV=production bundle exec jekyll build

# Site is in _site/ directory
```

### Deploy to Server

**Method 1: FTP/SFTP**

Use FileZilla, Cyberduck, or command line:

```bash
# Using lftp
lftp -u username,password ftp.yourhost.com
cd public_html
mirror -R _site/ ./
```

**Method 2: Git on Server**

```bash
# On your server
git clone https://github.com/<username>/<repo>.git
cd <repo>
bundle install
npm install
npm run build:css
JEKYLL_ENV=production bundle exec jekyll build

# Configure web server to serve _site/
```

**Method 3: cPanel or Similar**

1. Build locally (steps above)
2. Create a zip: `zip -r site.zip _site/`
3. Upload via cPanel File Manager
4. Extract in `public_html/`

## Other Hosting Options

### Vercel

1. Sign up at [vercel.com](https://vercel.com/)
2. Import your GitHub repository
3. Vercel auto-detects Jekyll
4. Build command: `npm run build:css && bundle exec jekyll build`
5. Output directory: `_site`
6. Deploy!

**Free tier** includes:
- Unlimited personal projects
- Automatic SSL
- Global CDN
- Instant Git integration

### Render

1. Sign up at [render.com](https://render.com/)
2. Create new **Static Site**
3. Connect your repository
4. Build command: `bundle install && npm install && npm run build:css && bundle exec jekyll build`
5. Publish directory: `_site`
6. Deploy!

**Free tier** includes:
- 100 GB bandwidth/month
- SSL certificates
- Auto-deploys from Git

### Cloudflare Pages

1. Sign up at [pages.cloudflare.com](https://pages.cloudflare.com/)
2. Create new project
3. Connect to GitHub
4. Build settings:
   - Build command: `npm run build:css && bundle exec jekyll build`
   - Build output: `_site`
   - Environment variables: `JEKYLL_ENV=production`
5. Deploy!

**Free tier** includes:
- Unlimited bandwidth
- Unlimited requests
- Built on Cloudflare's global network

## Troubleshooting

### Build Failing?

**Check the build logs:**
- **GitHub Pages**: Actions tab → Click failed workflow
- **Netlify**: Deploy log in Deploys tab
- **Others**: Check their respective build log sections

**Common issues:**

1. **Missing CSS file**
   ```bash
   npm run build:css
   git add assets/css/main.css
   git commit -m "Add compiled CSS"
   git push
   ```

2. **Wrong Ruby version**
   - Check the error for required version
   - Update `.github/workflows/deploy.yml` or Netlify environment variables

3. **Dependencies not installed**
   - Ensure `Gemfile.lock` and `package-lock.json` are committed
   - Don't add them to `.gitignore`

4. **Syntax errors**
   - Test locally first: `bundle exec jekyll build`
   - Check the file mentioned in error message

5. **Missing permissions** (GitHub Actions)
   - Settings → Actions → Workflow permissions → Read and write

### 404 on All Pages?

**For `<username>.github.io`:**
```yaml
# _config.yml
url: "https://<username>.github.io"
baseurl: ""  # Must be empty!
```

**For project pages (`<username>.github.io/<project>`):**
```yaml
# _config.yml
url: "https://<username>.github.io"
baseurl: "/<project>"  # With leading slash, no trailing slash
```

**Also check:**
- GitHub Pages source is set to "GitHub Actions" (not "Deploy from a branch")
- Build completed successfully (green checkmark)
- Repository name matches URL structure

### CSS Not Loading?

1. **Rebuild CSS:**
   ```bash
   npm run build:css
   ```

2. **Commit the file:**
   ```bash
   git add assets/css/main.css
   git commit -m "Update compiled CSS"
   git push
   ```

3. **Hard refresh browser:**
   - **Chrome/Edge**: Ctrl + Shift + R (Windows/Linux) or Cmd + Shift + R (Mac)
   - **Firefox**: Ctrl + F5 (Windows/Linux) or Cmd + Shift + R (Mac)

4. **Try incognito/private mode** to rule out caching

5. **Check console** (F12) for 404 errors on CSS file

### Changes Not Showing?

1. **Wait for build** - Check if deployment completed (3-5 minutes)
2. **Hard refresh** - Ctrl + Shift + R or Cmd + Shift + R
3. **Clear browser cache** - Settings → Privacy → Clear browsing data
4. **Check build succeeded** - Look for green checkmark in Actions/Deploy logs
5. **Try different browser** - Rule out browser-specific caching
6. **Check if changes were committed and pushed** - `git log` on GitHub

### Custom Domain Not Working?

1. **DNS propagation** - Can take up to 24 hours
   - Test with: `dig yourdomain.com`
   - Use [DNS checker](https://dnschecker.org/)

2. **CNAME file** - Must be in repository root with just the domain

3. **DNS records** - Verify all 4 A records are set correctly:
   ```
   185.199.108.153
   185.199.109.153
   185.199.110.153
   185.199.111.153
   ```

4. **GitHub settings** - Settings → Pages → Custom domain should show your domain

5. **HTTPS not working** - Wait 24 hours after DNS propagation, then enable "Enforce HTTPS"

## Production Checklist

Before launching, verify:

**Content:**
- [ ] Updated `_config.yml` with your information
- [ ] Added your posts and projects
- [ ] Updated `about.markdown`
- [ ] Replaced demo content
- [ ] Checked all links work
- [ ] Spell-checked content

**Technical:**
- [ ] Built CSS: `npm run build:css`
- [ ] Committed `assets/css/main.css`
- [ ] Tested locally: `bundle exec jekyll serve`
- [ ] Checked responsive design (mobile, tablet, desktop)
- [ ] Verified images load and are optimized
- [ ] Set correct `url` and `baseurl` in `_config.yml`
- [ ] Added `CNAME` file (if using custom domain)

**GitHub:**
- [ ] Repository is public (or paid plan for private)
- [ ] Pushed all changes to main branch
- [ ] Enabled GitHub Pages (Settings → Pages → GitHub Actions)
- [ ] Configured workflow permissions (Read and write)
- [ ] Build succeeded (green checkmark in Actions)

**SEO & Analytics:**
- [ ] Added Google Analytics ID (optional)
- [ ] Submitted sitemap to Google Search Console
- [ ] Configured meta descriptions
- [ ] Added proper page titles

**Legal:**
- [ ] Updated `LICENSE` with your name
- [ ] Added privacy policy (if collecting data)
- [ ] Added cookie notice (if in EU)

**Final Check:**
- [ ] Site loads at `https://<username>.github.io`
- [ ] All pages accessible
- [ ] Images display correctly
- [ ] Links work (internal and external)
- [ ] Mobile version looks good
- [ ] RSS feed works: `/feed.xml`
- [ ] Sitemap works: `/sitemap.xml`

## Post-Launch

### SEO

**1. Google Search Console**

1. Go to [search.google.com/search-console](https://search.google.com/search-console)
2. Add your site property
3. Verify ownership (use HTML tag method)
4. Submit sitemap: `https://yourdomain.com/sitemap.xml`
5. Request indexing for your homepage

**2. Bing Webmaster Tools (Optional)**

1. Go to [bing.com/webmasters](https://www.bing.com/webmasters)
2. Add your site
3. Verify ownership
4. Submit sitemap

**3. Social Media**

- Add Open Graph meta tags (already included)
- Share your first post on social media
- Update your social profiles with blog link

### Analytics

**Google Analytics:**

1. Create a property at [analytics.google.com](https://analytics.google.com)
2. Get Measurement ID (format: G-XXXXXXXXXX)
3. Add to `_config.yml`:
   ```yaml
   google_analytics: G-XXXXXXXXXX
   ```
4. Commit and push
5. Verify tracking in GA Real-Time reports

**Alternative analytics:**
- [Plausible](https://plausible.io/) - Privacy-friendly
- [Fathom](https://usefathom.com/) - Simple and privacy-focused
- [Cloudflare Analytics](https://www.cloudflare.com/web-analytics/) - Free, no cookies

### Monitoring

**1. Uptime Monitoring**

Free services:
- [UptimeRobot](https://uptimerobot.com/)
- [Pingdom](https://www.pingdom.com/)
- [StatusCake](https://www.statuscake.com/)

**2. Performance Monitoring**

- [PageSpeed Insights](https://pagespeed.web.dev/)
- [GTmetrix](https://gtmetrix.com/)
- [WebPageTest](https://www.webpagetest.org/)

**3. GitHub Actions**

- Check Actions tab regularly
- Set up notifications (Settings → Notifications)
- Fix failing builds immediately

**4. RSS Feed**

- Test your feed: [validator.w3.org/feed](https://validator.w3.org/feed/)
- Submit to feed directories (Feedly, etc.)

## Continuous Deployment

Your blog uses **continuous deployment** - every push automatically deploys!

**Workflow:**

```
Edit content locally
       ↓
git add & commit
       ↓
git push origin main
       ↓
GitHub Actions triggered
       ↓
Build & test (3-5 min)
       ↓
Deploy to GitHub Pages
       ↓
Live site updated! 🎉
```

**Best practices:**

1. **Test locally first** - Always run `bundle exec jekyll serve` before pushing
2. **Small commits** - Makes it easier to rollback if needed
3. **Descriptive messages** - Future you will thank you
4. **Check Actions** - Verify builds succeed
5. **Use branches** - For major changes, use feature branches and PRs

**Rollback if needed:**

```bash
# Find the commit hash of working version
git log

# Revert to that commit
git reset --hard <commit-hash>

# Force push (careful!)
git push --force origin main
```

**Or use GitHub's UI:**
1. Go to commits history
2. Find the working commit
3. Click "Browse files"
4. Click code dropdown → "Create new branch"
5. Merge that branch back to main

---

## Quick Reference

| Platform       | Free Tier | Custom Domain | Build Time | SSL | CDN |
|----------------|-----------|---------------|------------|-----|-----|
| GitHub Pages   | ✅ Yes    | ✅ Yes        | 3-5 min    | ✅  | ✅  |
| Netlify        | ✅ Yes    | ✅ Yes        | 2-4 min    | ✅  | ✅  |
| Vercel         | ✅ Yes    | ✅ Yes        | 1-3 min    | ✅  | ✅  |
| Render         | ✅ Yes    | ✅ Yes        | 3-5 min    | ✅  | ✅  |
| Cloudflare     | ✅ Yes    | ✅ Yes        | 2-4 min    | ✅  | ✅  |

---

## Next Steps

- ✅ Deployed? Celebrate! 🎉
- 📝 Write regularly - Consistency is key
- 🔍 Submit to search engines
- 📊 Track analytics
- 💬 Engage with readers
- 🚀 Keep improving

**Need Help?**
- [FAQ.md](FAQ.md) - Common questions
- [CUSTOMIZING.md](CUSTOMIZING.md) - Customize your site
- [GitHub Issues](../../issues) - Get support

**Happy blogging!** 🎈

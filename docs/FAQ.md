# Frequently Asked Questions

Here are some frequently asked questions. If you have a different question, please check the [GitHub Issues](../../issues) or [open a new one](../../issues/new).

<!--ts-->

- [Frequently Asked Questions](#frequently-asked-questions)
  - [Getting Started](#getting-started)
    - [After I create a new repository from the template, how do I get my site live?](#after-i-create-a-new-repository-from-the-template-how-do-i-get-my-site-live)
    - [Do I need coding experience?](#do-i-need-coding-experience)
    - [Is it really free?](#is-it-really-free)
    - [Can I use a custom domain?](#can-i-use-a-custom-domain)
    - [How do I rename the repository?](#how-do-i-rename-the-repository)
  - [Docker Setup](#docker-setup)
    - [Why should I use Docker?](#why-should-i-use-docker)
    - [Do I need to install Ruby or Node.js if I use Docker?](#do-i-need-to-install-ruby-or-nodejs-if-i-use-docker)
    - [Docker build is very slow, is this normal?](#docker-build-is-very-slow-is-this-normal)
    - [How do I update dependencies with Docker?](#how-do-i-update-dependencies-with-docker)
    - [Port 4000 is already in use, how do I fix it?](#port-4000-is-already-in-use-how-do-i-fix-it)
    - [Can I use Docker for production builds?](#can-i-use-docker-for-production-builds)
    - [Docker containers keep stopping, what's wrong?](#docker-containers-keep-stopping-whats-wrong)
  - [Traditional Installation](#traditional-installation)
    - [Bundle command not found?](#bundle-command-not-found)
    - [Jekyll serve fails?](#jekyll-serve-fails)
    - [npm install fails?](#npm-install-fails)
    - [I have permission errors when installing gems?](#i-have-permission-errors-when-installing-gems)
    - [My Ruby version is too old?](#my-ruby-version-is-too-old)
  - [Customization](#customization)
    - [How do I change colors?](#how-do-i-change-colors)
    - [How do I add more social links?](#how-do-i-add-more-social-links)
    - [Can I change the number of posts per page?](#can-i-change-the-number-of-posts-per-page)
    - [How do I change the favicon?](#how-do-i-change-the-favicon)
    - [How do I remove the projects section?](#how-do-i-remove-the-projects-section)
    - [Can I add a search feature?](#can-i-add-a-search-feature)
  - [Content Creation](#content-creation)
    - [What is front matter?](#what-is-front-matter)
    - [Can I write posts in HTML?](#can-i-write-posts-in-html)
    - [How do I add images?](#how-do-i-add-images)
    - [Can I schedule posts for future publication?](#can-i-schedule-posts-for-future-publication)
    - [How do I create drafts?](#how-do-i-create-drafts)
    - [How do I add code syntax highlighting?](#how-do-i-add-code-syntax-highlighting)
  - [Deployment](#deployment)
    - [My site works locally but fails to build on GitHub?](#my-site-works-locally-but-fails-to-build-on-github)
    - [My site shows 404 errors after deployment?](#my-site-shows-404-errors-after-deployment)
    - [CSS not loading on live site?](#css-not-loading-on-live-site)
    - [How long does deployment take?](#how-long-does-deployment-take)
    - [GitHub Actions is failing, how do I debug?](#github-actions-is-failing-how-do-i-debug)
    - [Can I deploy to a different branch?](#can-i-deploy-to-a-different-branch)
    - [Can I deploy to Netlify instead of GitHub Pages?](#can-i-deploy-to-netlify-instead-of-github-pages)
  - [Features](#features)
    - [How do I enable comments?](#how-do-i-enable-comments)
    - [How do I add Google Analytics?](#how-do-i-add-google-analytics)
    - [Can I password-protect my blog?](#can-i-password-protect-my-blog)
    - [How do I add a contact form?](#how-do-i-add-a-contact-form)
    - [How do I add a custom 404 page?](#how-do-i-add-a-custom-404-page)
  - [Performance](#performance)
    - [How can I make my site faster?](#how-can-i-make-my-site-faster)
    - [Does it work offline?](#does-it-work-offline)
    - [How do I optimize images?](#how-do-i-optimize-images)
  - [Troubleshooting](#troubleshooting)
    - [Changes not showing on local site?](#changes-not-showing-on-local-site)
    - [Changes not showing on live site?](#changes-not-showing-on-live-site)
    - [Liquid syntax errors?](#liquid-syntax-errors)
    - [Markdown not rendering?](#markdown-not-rendering)
    - [Tags not working?](#tags-not-working)
    - [Table of contents not appearing?](#table-of-contents-not-appearing)
  - [Maintenance](#maintenance)
    - [How do I update Jekyll?](#how-do-i-update-jekyll)
    - [How do I update Tailwind CSS?](#how-do-i-update-tailwind-css)
    - [How often should I update dependencies?](#how-often-should-i-update-dependencies)
    - [How do I backup my blog?](#how-do-i-backup-my-blog)
    - [Can I migrate from another platform?](#can-i-migrate-from-another-platform)
  - [Support](#support)
    - [Where can I get help?](#where-can-i-get-help)
    - [Can I contribute?](#can-i-contribute)
    - [How do I report bugs?](#how-do-i-report-bugs)

<!--te-->

## Getting Started

### After I create a new repository from the template, how do I get my site live?

Follow these steps:

1. Create a repository using the template, naming it `<your-username>.github.io`
2. Go to **Settings** → **Actions** → **General** → **Workflow permissions**
3. Select **Read and write permissions** and save
4. Go to **Settings** → **Pages** and set source to **GitHub Actions**
5. Make any change (even just editing README.md) and commit
6. Wait 2-5 minutes for the build to complete
7. Visit `https://<your-username>.github.io` 🎉

Related: [INSTALL.md](INSTALL.md#deployment)

### Do I need coding experience?

Not really! If you can write in Markdown and edit text files, you can use this blog. The [documentation](../docs) guides you through everything step by step.

### Is it really free?

Yes! GitHub Pages hosting is completely free for public repositories. You only pay if you want:
- A custom domain name (optional, ~$10-15/year)
- Private repository hosting (GitHub Pro, optional)

### Can I use a custom domain?

Yes! See the [custom domain section](DEPLOYMENT.md#custom-domain-optional) in DEPLOYMENT.md for detailed instructions.

Quick steps:
1. Create a `CNAME` file with your domain
2. Configure DNS records
3. Update `_config.yml`
4. Enable in GitHub Pages settings

### How do I rename the repository?

1. Go to **Settings**
2. Under "Repository name", change to `<your-username>.github.io`
3. Click **Rename**
4. Update the `url` field in `_config.yml`
5. Update your local git remote: `git remote set-url origin https://github.com/<username>/<new-repo-name>.git`

## Docker Setup

### Why should I use Docker?

Docker provides several advantages:
- **No dependency hell** - Everything is contained
- **Consistent environment** - Works the same everywhere
- **Easy setup** - Just `make up` and you're running
- **Clean system** - No global installations needed
- **Works on any OS** - Windows, Mac, Linux

Perfect for beginners and experienced developers alike!

### Do I need to install Ruby or Node.js if I use Docker?

**No!** That's the beauty of Docker. You only need:
- Docker Desktop (or Docker + Docker Compose)
- Git
- A text editor

Docker handles Ruby, Node.js, Jekyll, and all dependencies inside containers.

### Docker build is very slow, is this normal?

**The first build** takes 10-15 minutes because Docker is:
- Downloading the Ruby base image (~200MB)
- Installing system dependencies
- Installing all Ruby gems
- Installing Node.js and npm packages

**Subsequent builds** are much faster (30 seconds to 2 minutes) thanks to Docker's layer caching.

**Tips to speed up:**
- Use `docker-compose up` without rebuilding if only editing content
- Only rebuild (`make build`) when you change dependencies
- Allocate more resources in Docker Desktop settings (Settings → Resources)

### How do I update dependencies with Docker?

When you modify `Gemfile` or `package.json`:

```bash
# Rebuild the image
docker-compose build --no-cache

# Or using Make
make build
```

The `--no-cache` flag ensures fresh installation of all dependencies.

### Port 4000 is already in use, how do I fix it?

**Option 1: Stop the conflicting process**
```bash
# Find what's using port 4000
sudo lsof -i :4000

# Kill it
kill -9 <PID>
```

**Option 2: Change the port**

Edit `docker-compose.yml`:
```yaml
ports:
  - "4001:4000"  # Use port 4001 instead
```

Then access at `http://localhost:4001`

### Can I use Docker for production builds?

Yes! Run:

```bash
make prod
# or
docker-compose run --rm -e JEKYLL_ENV=production jekyll bash -c "npm run build:css && bundle exec jekyll build"
```

The optimized site will be in `_site/` directory ready for deployment.

### Docker containers keep stopping, what's wrong?

Check the logs:

```bash
make logs
# or
docker-compose logs
```

Common issues:
- **Syntax errors** in your Jekyll files
- **Port conflicts** (see above)
- **Out of memory** - Increase Docker Desktop memory allocation
- **File permission issues** (Linux) - Run `sudo chown -R $USER:$USER .`

## Traditional Installation

### Bundle command not found?

Install Bundler:

```bash
gem install bundler
```

If `gem` is not found, [install Ruby](https://www.ruby-lang.org/en/downloads/) first.

### Jekyll serve fails?

Try updating dependencies:

```bash
bundle update
bundle exec jekyll serve
```

If that doesn't work:
```bash
rm Gemfile.lock
bundle install
bundle exec jekyll serve
```

### npm install fails?

Clear the cache and reinstall:

```bash
rm -rf node_modules package-lock.json
npm cache clean --force
npm install
```

If you still have issues, try updating Node.js to the latest LTS version.

### I have permission errors when installing gems?

**Don't use sudo!** Instead, install to your user directory:

```bash
bundle install --path vendor/bundle
```

Or configure bundler globally:
```bash
bundle config set --local path 'vendor/bundle'
bundle install
```

**Alternatively**, use a Ruby version manager like [rbenv](https://github.com/rbenv/rbenv) which installs gems to your home directory.

### My Ruby version is too old?

This blog requires Ruby 3.0 or higher. Check your version:

```bash
ruby -v
```

**Install a newer Ruby using rbenv:**

```bash
# Install rbenv
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/main/bin/rbenv-installer | bash

# Add to your shell (~/.bashrc or ~/.zshrc)
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
source ~/.bashrc

# Install Ruby 3.3
rbenv install 3.3.0
rbenv global 3.3.0

# Verify
ruby -v  # Should show 3.3.0
```

**Or use Docker** instead (recommended) - no Ruby installation needed!

## Customization

### How do I change colors?

Edit `assets/css/input.css` and modify the CSS variables:

```css
:root {
  --color-primary: #3b82f6;  /* Blue */
  --color-bg: #0a0a0a;       /* Dark background */
  --color-text: #e0e0e0;     /* Light text */
}
```

Then rebuild:
```bash
npm run build:css
```

See [CUSTOMIZING.md](CUSTOMIZING.md#colors) for more details.

### How do I add more social links?

Edit `_config.yml` under the `social` section:

```yaml
social:
  - icon: fa-brands fa-github
    link: https://github.com/yourusername
    name: GitHub
  - icon: fa-brands fa-youtube
    link: https://youtube.com/@yourchannel
    name: YouTube
  # Add more...
```

Find icons at [Font Awesome](https://fontawesome.com/icons).

**Note:** Restart Jekyll after editing `_config.yml`.

### Can I change the number of posts per page?

Yes! Edit `_config.yml`:

```yaml
pagination:
  per_page: 15  # Change from 10 to any number
```

Restart Jekyll to see changes.

### How do I change the favicon?

**Option 1: Use an emoji (easiest!)**

Edit `_config.yml`:
```yaml
icon: 🚀  # Any emoji!
```

**Option 2: Use custom images**

1. Generate favicons at [favicon.io](https://favicon.io/)
2. Remove/comment out `icon:` in `_config.yml`
3. Add images to `assets/images/`:
   - `favicon.ico`
   - `favicon-16x16.png`
   - `favicon-32x32.png`
   - `apple-touch-icon.png`

See [CUSTOMIZING.md](CUSTOMIZING.md#favicon) for details.

### How do I remove the projects section?

**Option 1: Hide it from navigation**

Edit `_config.yml` and remove the projects entry from `navigation`:

```yaml
navigation:
  - title: Articles
    url: /articles
  - title: About
    url: /about
  # Projects removed
```

**Option 2: Delete completely**

1. Delete the `_projects/` directory
2. Delete `projects.html`
3. Remove from navigation (above)

### Can I add a search feature?

Search is not built-in yet, but you can add it using:

- [Algolia](https://www.algolia.com/) with [jekyll-algolia](https://community.algolia.com/jekyll-algolia/)
- [Lunr.js](https://lunrjs.com/) for client-side search
- Google Custom Search

We're planning to add built-in search in a future update. Contributions welcome!

## Content Creation

### What is front matter?

Front matter is the YAML metadata at the top of your post files:

```yaml
---
layout: post
title: "My Post Title"
date: 2025-01-15 10:00:00 +0000
tags: [python, tutorial]
excerpt: "A brief description"
---
```

It tells Jekyll how to process the file. Everything between `---` marks is front matter.

### Can I write posts in HTML?

Yes, but **Markdown is recommended**. You can also mix HTML and Markdown:

```markdown
---
layout: post
title: "My Post"
---

## Markdown heading

Regular paragraph.

<div class="special-section">
  <p>HTML content here</p>
</div>

Back to **Markdown**!
```

### How do I add images?

1. Add images to `assets/images/`
2. Reference in your posts:

```markdown
![Alt text](/assets/images/my-image.jpg)
```

**Or with HTML for more control:**
```html
<img src="/assets/images/my-image.jpg" alt="Description" width="600">
```

**Best practices:**
- Compress images before uploading (use [TinyPNG](https://tinypng.com/))
- Use descriptive alt text
- Use WebP format for better compression

### Can I schedule posts for future publication?

Yes! Set a future date in the front matter:

```yaml
---
layout: post
title: "Future Post"
date: 2025-12-25 10:00:00 +0000
---
```

Jekyll only publishes posts with dates in the past. On December 25, 2025, this post will automatically appear.

**Note:** You can preview future posts locally with:
```bash
bundle exec jekyll serve --future
```

### How do I create drafts?

1. Create a `_drafts/` directory in your project root
2. Add posts **without dates** in the filename:
   ```
   _drafts/my-draft-post.md
   ```
3. View drafts locally:
   ```bash
   bundle exec jekyll serve --drafts
   ```

Drafts won't appear on the live site until you:
- Move them to `_posts/`
- Add a date to the filename: `2025-01-15-my-draft-post.md`

### How do I add code syntax highlighting?

Just use Markdown code blocks with the language name:

````markdown
```python
def hello():
    print("Hello, world!")
```
````

Supports 190+ languages including:
- `python`, `javascript`, `ruby`, `java`, `c`, `cpp`, `csharp`
- `html`, `css`, `scss`, `json`, `yaml`
- `bash`, `shell`, `powershell`
- And many more!

## Deployment

### My site works locally but fails to build on GitHub?

Common causes:

1. **Missing CSS file** - Make sure you ran `npm run build:css` and committed `assets/css/main.css`
   ```bash
   npm run build:css
   git add assets/css/main.css
   git commit -m "Add compiled CSS"
   git push
   ```

2. **Wrong permissions** - Go to Settings → Actions → General → Workflow permissions and select "Read and write permissions"

3. **Syntax errors** - Check the Actions tab for the error message

4. **Wrong branch** - Make sure you're pushing to the branch specified in `.github/workflows/deploy.yml` (usually `main`)

### My site shows 404 errors after deployment?

Check these:

1. **baseurl in _config.yml** - Should be empty for `<username>.github.io`:
   ```yaml
   baseurl: ""  # Empty, but don't delete it
   ```

2. **GitHub Pages source** - Go to Settings → Pages and ensure:
   - Source is set to "GitHub Actions" (not "Deploy from a branch")

3. **Repository name** - Must be `<username>.github.io` for a user site

4. **Wait for build** - Check the Actions tab to ensure deployment completed successfully

### CSS not loading on live site?

This happens when CSS wasn't built before pushing:

```bash
# Build CSS
npm run build:css

# Commit and push
git add assets/css/main.css
git commit -m "Update compiled CSS"
git push
```

**Then** hard refresh your browser:
- **Chrome/Edge**: Ctrl + Shift + R (Windows/Linux) or Cmd + Shift + R (Mac)
- **Firefox**: Ctrl + F5 (Windows/Linux) or Cmd + Shift + R (Mac)

Or try incognito/private mode to see changes immediately.

### How long does deployment take?

Typical timeline:
- **Building**: 2-3 minutes (Jekyll build + CSS compilation)
- **Deployment**: 30-60 seconds (GitHub Pages publishing)
- **Total**: 3-5 minutes

Check the **Actions** tab to see real-time progress.

### GitHub Actions is failing, how do I debug?

1. **Check the Actions tab** - Click on the failed workflow to see the error message
2. **Read the error** - Usually tells you exactly what's wrong
3. **Common issues:**
   - Missing `assets/css/main.css` - run `npm run build:css`
   - Wrong permissions - check workflow permissions in Settings
   - Syntax errors in posts - check the file mentioned in the error
   - Missing dependencies - check `Gemfile` and `package.json`

4. **Test locally first**:
   ```bash
   npm run build:css
   bundle exec jekyll build
   ```
   If it fails locally, fix it before pushing.

### Can I deploy to a different branch?

Yes! Edit `.github/workflows/deploy.yml` and change:

```yaml
on:
  push:
    branches: ["main"]  # Change to your branch
```

### Can I deploy to Netlify instead of GitHub Pages?

Yes! See [DEPLOYMENT.md](DEPLOYMENT.md#netlify) for detailed instructions.

**Quick steps:**
1. Sign up at Netlify
2. Import your GitHub repository
3. Set build command: `npm run build:css && bundle exec jekyll build`
4. Set publish directory: `_site`
5. Deploy!

**Advantages of Netlify:**
- Custom domains with free SSL
- Form handling
- Faster builds
- Better control

## Features

### How do I enable comments?

Add Disqus comments:

1. Sign up at [disqus.com](https://disqus.com) and create a site
2. Get your shortname
3. Edit `_config.yml`:
   ```yaml
   disqus_shortname: your-shortname
   ```
4. Restart Jekyll

Comments will appear at the bottom of each post.

See [CUSTOMIZING.md](CUSTOMIZING.md#disqus-comments) for implementation details.

### How do I add Google Analytics?

1. Create a Google Analytics property and get your Measurement ID (format: `G-XXXXXXXXXX`)
2. Edit `_config.yml`:
   ```yaml
   google_analytics: G-XXXXXXXXXX
   ```
3. Restart Jekyll
4. Push to GitHub

Analytics will start tracking immediately.

### Can I password-protect my blog?

**Not with GitHub Pages** - it's designed for public sites.

**Alternatives:**
- Deploy to [Netlify](https://www.netlify.com/) with password protection (paid feature)
- Use [Cloudflare Access](https://www.cloudflare.com/products/zero-trust/access/) as a gateway
- Make your GitHub repository private (disables GitHub Pages)

### How do I add a contact form?

Use a form service:

**Option 1: Formspree (Recommended)**
1. Sign up at [formspree.io](https://formspree.io/)
2. Add to your About page:
   ```html
   <form action="https://formspree.io/f/YOUR_FORM_ID" method="POST">
     <input type="email" name="email" placeholder="Your email">
     <textarea name="message" placeholder="Your message"></textarea>
     <button type="submit">Send</button>
   </form>
   ```

**Option 2: Google Forms**
- Create a form at [forms.google.com](https://forms.google.com)
- Embed or link to it from your site

**Option 3: Netlify Forms** (if deploying to Netlify)
- Just add `netlify` attribute to your form

### How do I add a custom 404 page?

There's already a `404.html` in your project! Just customize it:

1. Edit `404.html`
2. Change the content, styling, or add helpful links
3. Commit and push

GitHub Pages automatically uses this for missing pages.

## Performance

### How can I make my site faster?

Already optimized! But you can:

1. **Compress images**
   - Use [TinyPNG](https://tinypng.com/) or [Squoosh](https://squoosh.app/)
   - Convert to WebP format
   - Size images appropriately (don't use 4K images for thumbnails)

2. **Limit posts per page**
   ```yaml
   pagination:
     per_page: 10  # Lower = faster page loads
   ```

3. **Remove unused plugins**
   - Edit `_config.yml` under `plugins:`
   - Remove any you're not using

4. **Enable CDN** (if using custom domain)
   - Use [Cloudflare](https://www.cloudflare.com/) for free CDN

### Does it work offline?

The blog loads online by default. To add offline support:

1. Implement a service worker
2. Add to `manifest.json` for PWA support
3. Cache key assets

This is an advanced topic - consider it a future enhancement!

### How do I optimize images?

**Before uploading:**
1. **Compress** using:
   - [TinyPNG](https://tinypng.com/) - Simple, effective
   - [Squoosh](https://squoosh.app/) - More control
   - ImageOptim (Mac)
   - ImageMagick (command line)

2. **Resize** to appropriate dimensions:
   - Full width: 1200px max
   - Thumbnails: 400px max

3. **Use modern formats:**
   - WebP for photos (better compression)
   - SVG for logos and icons (scalable)
   - PNG for screenshots (lossless)

**Example command line (ImageMagick):**
```bash
# Convert and compress
convert input.jpg -resize 1200x -quality 85 output.jpg

# Or batch process
for img in *.jpg; do convert "$img" -resize 1200x -quality 85 "opt_$img"; done
```

## Troubleshooting

### Changes not showing on local site?

**For content changes:**
- Jekyll should auto-reload
- Check terminal for errors
- Hard refresh browser: Ctrl + Shift + R

**For CSS changes:**
```bash
npm run build:css
# Or use watch mode: npm run watch:css
```

**For _config.yml changes:**
```bash
# Stop Jekyll (Ctrl + C) and restart:
bundle exec jekyll serve
```

### Changes not showing on live site?

1. **Wait for build** - Check Actions tab (takes 3-5 minutes)
2. **Hard refresh** browser:
   - Chrome/Edge: Ctrl + Shift + R
   - Firefox: Ctrl + F5
3. **Check if build succeeded** - Green checkmark in Actions tab
4. **Try incognito mode** - Rules out caching issues
5. **Clear browser cache** completely

### Liquid syntax errors?

Check for:
- Unmatched `{% %}` tags
- Missing closing braces `}}`
- Typos in variable names
- Filters with wrong syntax: `{{ page.title | upcase }}`

**Debug:**
```bash
# Run Jekyll with verbose output
bundle exec jekyll serve --trace
```

### Markdown not rendering?

Ensure:
- File has `.md` or `.markdown` extension
- Front matter is valid YAML:
  ```yaml
  ---
  layout: post
  title: "My Title"
  ---
  ```
- No syntax errors in front matter
- Content is valid Markdown

**Test your Markdown:**
- [Dillinger.io](https://dillinger.io/)
- [StackEdit](https://stackedit.io/)

### Tags not working?

- Tags are **case-sensitive**: `Python` ≠ `python`
- Use consistent formatting
- Restart Jekyll after adding new tags
- Check front matter syntax:
  ```yaml
  tags: [python, tutorial]  # Correct
  tags: python, tutorial     # Also correct
  ```

### Table of contents not appearing?

Make sure you added the `toc` array in front matter:

```yaml
---
layout: post
title: "My Post"
toc:
  - title: "Section 1"
    url: "#section-1"
  - title: "Section 2"
    url: "#section-2"
---
```

See [CONTENT.md](CONTENT.md) for TOC details.

## Maintenance

### How do I update Jekyll?

**With Docker:**
1. Edit `Gemfile` and change Jekyll version
2. Rebuild: `docker-compose build --no-cache`

**Traditional:**
```bash
bundle update jekyll
bundle install
```

Check [Jekyll releases](https://github.com/jekyll/jekyll/releases) for breaking changes.

### How do I update Tailwind CSS?

**With Docker:**
1. Edit `package.json` and change Tailwind version
2. Rebuild: `docker-compose build --no-cache`

**Traditional:**
```bash
npm update tailwindcss
npm run build:css
```

Check [Tailwind releases](https://github.com/tailwindlabs/tailwindcss/releases).

### How often should I update dependencies?

**Recommended schedule:**
- **Security updates**: Immediately
- **Minor updates**: Every 2-3 months
- **Major updates**: When you have time to test thoroughly

**Check for updates:**
```bash
# Ruby
bundle outdated

# Node.js
npm outdated
```

**Security audits:**
```bash
# Ruby
gem install bundler-audit
bundle-audit check --update

# Node.js
npm audit
```

### How do I backup my blog?

Your blog is already backed up on GitHub! But for local backups:

**Option 1: Clone**
```bash
git clone https://github.com/<username>/<repo>.git backup-$(date +%Y%m%d)
```

**Option 2: Archive**
```bash
# Create a compressed archive
tar -czf blog-backup-$(date +%Y%m%d).tar.gz <your-blog-directory>
```

**Option 3: Multiple remotes**
```bash
# Add another remote (like GitLab)
git remote add gitlab git@gitlab.com:<username>/<repo>.git
git push gitlab main
```

**Don't forget to backup:**
- Custom domain DNS settings
- Analytics account details
- Service integrations (Disqus, etc.)

### Can I migrate from another platform?

Yes! Jekyll has importers for many platforms:

- **WordPress**: [jekyll-import](https://import.jekyllrb.com/docs/wordpress/)
- **Medium**: [medium-to-jekyll](https://github.com/gautamdhameja/medium-to-jekyll)
- **Ghost**: [ghost-to-jekyll](https://github.com/eloyesp/ghost_to_jekyll)
- **Blogger**: [jekyll-import](https://import.jekyllrb.com/docs/blogger/)

**General process:**
1. Export content from old platform
2. Use an importer or manually convert
3. Place posts in `_posts/`
4. Update front matter as needed
5. Test locally before deploying

## Support

### Where can I get help?

1. **Read the docs** - Start here! Most questions are answered
   - [INSTALL.md](INSTALL.md)
   - [CUSTOMIZING.md](CUSTOMIZING.md)
   - [CONTENT.md](CONTENT.md)
   - [DEPLOYMENT.md](DEPLOYMENT.md)

2. **Check this FAQ** - You're here!

3. **Search issues** - [GitHub Issues](../../issues)

4. **Ask a question** - [Open a new issue](../../issues/new)

5. **Jekyll docs** - [jekyllrb.com](https://jekyllrb.com/docs/)

6. **Tailwind docs** - [tailwindcss.com](https://tailwindcss.com/docs)

### Can I contribute?

Yes! Contributions are welcome. See [CONTRIBUTING.md](../CONTRIBUTING.md) for guidelines.

**Ways to contribute:**
- Report bugs
- Suggest features
- Improve documentation
- Submit pull requests
- Share your blog (for inspiration)

### How do I report bugs?

[Open an issue](../../issues/new) with:

1. **Clear title** - "Build fails when..." not "Help!"
2. **Description** - What you expected vs what happened
3. **Steps to reproduce** - Detailed steps
4. **Environment**:
   - OS (Windows/Mac/Linux)
   - Setup method (Docker/Traditional)
   - Browser (if relevant)
5. **Screenshots** - If applicable
6. **Error messages** - Full text, use code blocks

## Still Have Questions?

- 📖 [Read the docs](../docs)
- 💬 [Open an issue](../../issues/new)
- 🔍 [Search existing issues](../../issues)
- ⭐ [Star the repo](../../) if this helped!

---

**Not answered here?** [Ask a question](../../issues/new) and we'll add it to the FAQ!

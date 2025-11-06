# Deployment

Deploy your blog to GitHub Pages.

## Prerequisites

- GitHub account
- Repository named `username.github.io`
- Blog content ready

## Automated Deployment (Recommended)

### Step 1: Enable GitHub Pages

1. Go to your repository on GitHub
2. Click **Settings** → **Pages**
3. Under "Source", select **GitHub Actions**
4. Click **Save**

### Step 2: Configure Permissions

1. Go to **Settings** → **Actions** → **General**
2. Under "Workflow permissions":
   - Select **Read and write permissions**
   - Check **Allow GitHub Actions to create and approve pull requests**
3. Click **Save**

### Step 3: Push Your Code

```bash
# Build CSS
npm run build:css

# Commit everything
git add .
git commit -m "Initial commit"

# Push to GitHub
git push origin main
```

### Step 4: Wait for Deployment

1. Go to **Actions** tab
2. Watch the "Deploy Jekyll site" workflow
3. When complete (✅), visit: `https://username.github.io`

**Done!** Your blog is live! 🎉

## How It Works

The GitHub Actions workflow (`.github/workflows/deploy.yml`) automatically:

1. Installs Ruby and Node.js
2. Installs dependencies
3. Builds Tailwind CSS
4. Builds Jekyll site
5. Deploys to GitHub Pages

**No manual building required!**

## Updating Your Blog

Every time you push to `main`, GitHub Actions automatically rebuilds and deploys.

```bash
# Make changes
git add .
git commit -m "Add new post"
git push origin main
# Site updates automatically!
```

## Custom Domain (Optional)

### 1. Add CNAME File

Create `CNAME` in root:
```
yourdomain.com
```

### 2. Configure DNS

Add DNS records:
```
A     @     185.199.108.153
A     @     185.199.109.153
A     @     185.199.110.153
A     @     185.199.111.153
CNAME www   username.github.io
```

### 3. Update Config

Edit `_config.yml`:
```yaml
url: "https://yourdomain.com"
```

### 4. Enable in GitHub

1. Go to **Settings** → **Pages**
2. Under "Custom domain", enter: `yourdomain.com`
3. Check **Enforce HTTPS**

Wait for DNS propagation (up to 24 hours).

## Manual Deployment

If you prefer manual deployment:

```bash
# Build everything
npm run build:css
JEKYLL_ENV=production bundle exec jekyll build

# Site is in _site/ directory
# Deploy _site/ contents to your server
```

## Troubleshooting

### Build Failing?

1. Check **Actions** tab for error message
2. Verify all dependencies in `Gemfile`
3. Ensure `package.json` is committed
4. Check workflow permissions

### 404 on All Pages?

- Verify `baseurl` in `_config.yml` is empty: `baseurl: ""`
- Check GitHub Pages source is "GitHub Actions"

### CSS Not Loading?

```bash
# Rebuild CSS and commit
npm run build:css
git add assets/css/main.css
git commit -m "Update CSS"
git push
```

### Changes Not Showing?

- Hard refresh: `Ctrl + Shift + R` (Windows/Linux) or `Cmd + Shift + R` (Mac)
- Wait 2-3 minutes for build to complete
- Check Actions tab for build status

## Production Checklist

Before launching:

- [ ] Updated `_config.yml` with your info
- [ ] Added your content (posts, projects)
- [ ] Updated `about.markdown`
- [ ] Added favicon files
- [ ] Tested locally
- [ ] Checked responsive design
- [ ] Verified all links work
- [ ] Updated `LICENSE` with your name
- [ ] Built CSS: `npm run build:css`
- [ ] Committed all changes
- [ ] Pushed to GitHub
- [ ] Enabled GitHub Pages
- [ ] Configured workflow permissions
- [ ] Verified live site works

## Post-Launch

### SEO

1. **Google Search Console**
   - Add your site
   - Submit sitemap: `https://username.github.io/sitemap.xml`

2. **Bing Webmaster Tools**
   - Add your site (optional)

### Analytics

Add Google Analytics in `_config.yml`:
```yaml
google_analytics: G-XXXXXXXXXX
```

### Monitoring

- Check GitHub Actions regularly
- Monitor site performance
- Review analytics data

## Next Steps

- ✅ Deployed? Share your blog!
- 📝 Write regularly
- 🔍 Submit to search engines
- 📊 Track analytics
- 💬 Engage with readers

## Need Help?

- [FAQ.md](FAQ.md) - Common questions
- [CUSTOMIZING.md](CUSTOMIZING.md) - Customize your site
- [GitHub Issues](../../issues) - Get support


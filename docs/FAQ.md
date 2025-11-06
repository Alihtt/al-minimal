# Frequently Asked Questions

Common questions and answers.

## Getting Started

### Do I need coding experience?

Basic knowledge of Markdown is helpful, but not required. If you can edit text files, you can use this blog!

### Is it really free?

Yes! GitHub Pages hosting is completely free. You only pay if you want a custom domain.

### Can I use a custom domain?

Yes! See [DEPLOYMENT.md](DEPLOYMENT.md) for instructions.

### How do I rename the repository?

1. Go to **Settings**
2. Under "Repository name", change to `username.github.io`
3. Click **Rename**

## Installation

### Bundle command not found?

Install bundler:
```bash
gem install bundler
```

### Jekyll serve fails?

Update dependencies:
```bash
bundle update
bundle exec jekyll serve
```

### Port 4000 already in use?

Use a different port:
```bash
bundle exec jekyll serve --port 4001
```

### npm install fails?

Try:
```bash
rm -rf node_modules package-lock.json
npm install
```

## Customization

### How do I change colors?

Edit `assets/css/input.css` and rebuild:
```bash
npm run build:css
```

See [CUSTOMIZING.md](CUSTOMIZING.md) for details.

### How do I add more social links?

Edit `_config.yml` under `social` section. Find icons at [fontawesome.com](https://fontawesome.com/icons).

### Can I change the number of posts per page?

Yes! Edit `_config.yml`:
```yaml
pagination:
  per_page: 15  # Change this number
```

### How do I remove the projects section?

Delete or comment out the projects section in `index.html`.

## Content

### What is front matter?

The YAML metadata at the top of posts:
```yaml
---
layout: post
title: "My Post"
---
```

### Can I write posts in HTML?

Yes, but Markdown is recommended. You can mix HTML and Markdown.

### How do I add images?

1. Add images to `assets/images/`
2. Reference in posts:
   ```markdown
   ![Alt text](/assets/images/myimage.jpg)
   ```

### Can I schedule posts?

Yes! Set a future date in front matter. Jekyll only publishes posts with dates in the past.

### How do I create drafts?

1. Create `_drafts/` folder
2. Add posts without dates in filename
3. View with: `bundle exec jekyll serve --drafts`

## Deployment

### Site shows 404 errors?

Check:
- `baseurl` in `_config.yml` should be empty: `baseurl: ""`
- GitHub Pages source is set to "GitHub Actions"

### CSS not loading on live site?

Rebuild and commit CSS:
```bash
npm run build:css
git add assets/css/main.css
git commit -m "Update CSS"
git push
```

### How long does deployment take?

Usually 2-5 minutes. Check **Actions** tab for status.

### GitHub Actions failing?

1. Check **Actions** tab for error details
2. Verify workflow permissions (Settings → Actions → General)
3. Ensure all files are committed

### Can I use a different branch?

By default, GitHub Actions deploys from `main`. To change:
- Edit `.github/workflows/deploy.yml`
- Change `branches: ["main"]` to your branch

## Features

### How do I enable comments?

Add Disqus - see [CUSTOMIZING.md](CUSTOMIZING.md).

### Can I add search?

Not built-in yet. Coming soon! Contributions welcome.

### How do I add Google Analytics?

Edit `_config.yml`:
```yaml
google_analytics: G-XXXXXXXXXX
```

### Can I password-protect my blog?

Not with GitHub Pages. Consider using Netlify with authentication.

### How do I add a contact form?

Use services like:
- [Formspree](https://formspree.io/)
- [Google Forms](https://www.google.com/forms/about/)
- [Netlify Forms](https://www.netlify.com/products/forms/)

## Performance

### How can I make it faster?

Already optimized! But you can:
- Compress images before uploading
- Use WebP format for images
- Keep posts focused (not too long)

### Does it work offline?

The blog loads online. To add offline support, implement a service worker.

## Troubleshooting

### Changes not showing?

1. Clear browser cache (Ctrl + Shift + R)
2. Wait for GitHub Actions to complete
3. Check if build succeeded in Actions tab

### Liquid syntax errors?

Check for:
- Unmatched `{% %}` tags
- Missing `{{ }}` closing braces
- Incorrect variable names

### Markdown not rendering?

Ensure:
- File has `.markdown` or `.md` extension
- Front matter is valid YAML
- Content is valid Markdown syntax

### Tags not working?

- Tags are case-sensitive
- Use consistent formatting
- Restart Jekyll after adding new tags

## Maintenance

### How do I update Jekyll?

```bash
bundle update jekyll
bundle update
```

### How do I update Tailwind?

```bash
npm update tailwindcss
npm run build:css
```

### How often should I update dependencies?

Every 2-3 months is fine. Check for security updates regularly.

### How do I backup my blog?

Your blog is already backed up on GitHub! Clone your repo for local backup:
```bash
git clone https://github.com/username/username.github.io.git
```

## Support

### Where can I get help?

1. Check this FAQ
2. Read the [documentation](../)
3. Search [GitHub Issues](../../issues)
4. Open a [new issue](../../issues/new)

### Can I contribute?

Yes! See [CONTRIBUTING.md](../CONTRIBUTING.md).

### How do I report bugs?

[Open an issue](../../issues/new) with:
- Description of the bug
- Steps to reproduce
- Expected vs actual behavior
- Screenshots if applicable

## Still Have Questions?

- 📖 [Read the docs](../)
- 💬 [Open an issue](../../issues)
- 🔍 Search existing issues

---

**Not answered here?** [Ask a question](../../issues/new)!


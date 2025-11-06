# 📝 Minimal Jekyll Blog

A modern, minimal personal blog built with Jekyll and Tailwind CSS. Perfect for developers who want a clean, professional blog on GitHub Pages.

[![Jekyll](https://img.shields.io/badge/Jekyll-4.4+-CC0000?style=flat-square&logo=jekyll)](https://jekyllrb.com/)
[![Tailwind CSS](https://img.shields.io/badge/Tailwind-4.0+-38B2AC?style=flat-square&logo=tailwind-css)](https://tailwindcss.com/)
[![License](https://img.shields.io/badge/License-MIT-green?style=flat-square)](LICENSE)

## 🌟 Features

- **Responsive Design** - Beautiful dark theme, mobile-first approach
- **Blog Posts** - Markdown posts with pagination (10 per page)
- **Projects Portfolio** - Showcase your work
- **Tags System** - Organize posts by tags
- **Table of Contents** - Auto-generated TOC for long posts
- **Social Sharing** - Twitter, LinkedIn, Facebook, Reddit, Telegram
- **SEO Optimized** - Sitemap, meta tags, RSS feed
- **Clean URLs** - No `.html` extensions
- **GitHub Actions** - Automated deployment
- **Fast & Lightweight** - Optimized performance

## 🚀 Getting Started

### Quick Start

```bash
# 1. Fork/Clone this repository
git clone https://github.com/yourusername/yourusername.github.io.git
cd yourusername.github.io

# 2. Install dependencies
bundle install
npm install

# 3. Build CSS
npm run build:css

# 4. Run locally
bundle exec jekyll serve
```

Visit `http://localhost:4000` 🎉

**For detailed installation:** See [INSTALL.md](docs/INSTALL.md)

## 📚 Documentation

- **[Installation Guide](docs/INSTALL.md)** - Detailed setup instructions
- **[Customization](docs/CUSTOMIZING.md)** - Make it yours
- **[Adding Content](docs/CONTENT.md)** - Write posts and projects
- **[Features Guide](docs/FEATURES.md)** - All features explained
- **[Deployment](docs/DEPLOYMENT.md)** - Deploy to GitHub Pages
- **[FAQ](docs/FAQ.md)** - Common questions answered

## ⚡ Quick Customization

Edit `_config.yml`:

```yaml
# -----------------------------------------------------------------------------
# Site settings
# -----------------------------------------------------------------------------

title: Your Name
first_name: Your
last_name: Name
greeting: "Hi, I'm Your Name!"
email: your-email@example.com
url: "https://yourusername.github.io"
icon: ⚛️  # emoji used as favicon

# Social Media
social:
  - icon: fa-brands fa-github
    link: https://github.com/yourusername
    name: GitHub
  # Add more...
```

Configuration is organized into clear sections with comments. **For more:** See [CUSTOMIZING.md](docs/CUSTOMIZING.md)

## 📝 Writing Your First Post

Create `_posts/2025-01-15-my-first-post.markdown`:

```yaml
---
layout: post
title: "My First Post"
date: 2025-01-15 10:00:00 +0000
tags: [tutorial, getting-started]
excerpt: "A brief description"
---

Your content here...
```

**For more details:** See [CONTENT.md](docs/CONTENT.md)

## 🚢 Deploy to GitHub Pages

1. Push to GitHub
2. Go to **Settings** → **Pages**
3. Select **GitHub Actions** as source
4. Done! Your site is live at `https://yourusername.github.io`

**For detailed deployment:** See [DEPLOYMENT.md](docs/DEPLOYMENT.md)

## 📂 Project Structure

```
.
├── _includes/          # Reusable components
├── _layouts/           # Page templates
├── _posts/             # Your blog posts
├── _projects/          # Your projects
├── assets/             # CSS, images
├── docs/               # Documentation
├── _config.yml         # Configuration
└── README.md           # This file
```

## 🙏 Acknowledgments

Powered by these amazing tools:

- **[Jekyll](https://jekyllrb.com/)** - Static site generator
- **[Tailwind CSS](https://tailwindcss.com/)** - CSS framework
- **[Font Awesome](https://fontawesome.com/)** - Icons
- **[jekyll-paginate-v2](https://github.com/sverrirs/jekyll-paginate-v2)** - Pagination
- **[GitHub Pages](https://pages.github.com/)** - Free hosting

## 🤝 Contributing

Contributions are welcome! See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

## 📄 License

MIT License - See [LICENSE](LICENSE) for details.

---

**Made with ❤️ for developers**

⭐ Star this repo if you find it useful!

🍴 Fork it to create your own blog!

📢 Share it with others!

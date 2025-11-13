# Features Guide

Complete guide to all the features included in your Jekyll blog.

<!--ts-->

- [Features Guide](#features-guide)
  - [Blog Features](#blog-features)
    - [Pagination](#pagination)
    - [Tags System](#tags-system)
    - [Table of Contents](#table-of-contents)
    - [Social Sharing](#social-sharing)
    - [RSS Feed](#rss-feed)
    - [Related Posts](#related-posts)
  - [SEO Features](#seo-features)
    - [Meta Tags](#meta-tags)
    - [Sitemap](#sitemap)
    - [Robots.txt](#robotstxt)
    - [Clean URLs](#clean-urls)
    - [Schema Markup](#schema-markup)
  - [Design Features](#design-features)
    - [Responsive Design](#responsive-design)
    - [Dark Theme](#dark-theme)
    - [Typography](#typography)
    - [Syntax Highlighting](#syntax-highlighting)
    - [Emoji Support](#emoji-support)
  - [Navigation Features](#navigation-features)
    - [Header Navigation](#header-navigation)
    - [Previous/Next Posts](#previousnext-posts)
    - [Breadcrumbs](#breadcrumbs)
    - [Featured Projects](#featured-projects)
  - [Performance Features](#performance-features)
    - [Fast Loading](#fast-loading)
    - [Static Site](#static-site)
    - [Optimized Assets](#optimized-assets)
    - [CDN Ready](#cdn-ready)
  - [Developer Features](#developer-features)
    - [GitHub Actions](#github-actions)
    - [Docker Support](#docker-support)
    - [Live Reload](#live-reload)
    - [Hot Module Replacement](#hot-module-replacement)
  - [Content Features](#content-features)
    - [Markdown Support](#markdown-support)
    - [Code Blocks](#code-blocks)
    - [Image Handling](#image-handling)
    - [Excerpts](#excerpts)
  - [Upcoming Features](#upcoming-features)

<!--te-->

## Blog Features

### Pagination

**What it does:**
- Splits posts across multiple pages
- Configurable posts per page
- Clean URL structure
- Navigation between pages

**How to use:**

Posts are automatically paginated! Configure in `_config.yml`:

```yaml
pagination:
  enabled: true
  per_page: 10  # Number of posts per page
  permalink: '/page/:num/'
  sort_field: 'date'
  sort_reverse: true  # Newest first
```

**URLs generated:**
- Page 1: `/articles/`
- Page 2: `/articles/page/2/`
- Page 3: `/articles/page/3/`
- etc.

**Navigation:**
- Automatic "Older" / "Newer" buttons
- Page numbers with current page highlighted
- First/Last page buttons

**Customization:**

Change posts per page:
```yaml
per_page: 15  # Shows 15 posts per page
```

### Tags System

**What it does:**
- Organize posts by topics
- Auto-generated tags page
- Click any tag to see all posts with that tag
- SEO-friendly tag URLs

**How to use:**

Add tags to any post:

```yaml
---
layout: post
title: "My Post"
tags: [python, tutorial, web-development]
---
```

**Features:**
- **Tags index page** - Lists all tags with post counts at `/tags`
- **Tag filtering** - Click a tag to see all related posts
- **Case-sensitive** - `Python` and `python` are different
- **Multi-tagging** - Posts can have multiple tags
- **Auto-alphabetized** - Tags appear in alphabetical order

**Best practices:**
- Use 2-5 tags per post
- Be consistent with capitalization
- Use descriptive, searchable terms
- Common tags: `tutorial`, `python`, `javascript`, `tips`, `how-to`

**Example:**
```yaml
tags: [django, python, backend, tutorial]  # Good
tags: [code, programming, stuff]  # Too vague
```

### Table of Contents

**What it does:**
- Auto-generates navigation for long posts
- Smooth scrolling to sections
- Hierarchical structure (H2, H3)
- Mobile-friendly

**How to use:**

**Option 1: Automatic (Recommended)**

```yaml
---
layout: post
title: "Long Tutorial Post"
toc: true  # That's it!
---

## Introduction

Content...

## Setup

Content...

### Prerequisites
### Installation

## Usage

Content...
```

The TOC automatically extracts all H2 (`##`) and H3 (`###`) headings.

**Option 2: Manual (Advanced)**

For custom TOC structure:

```yaml
---
layout: post
title: "Custom TOC Post"
toc:
  - id: intro
    title: Getting Started
  - id: setup
    title: Setup Guide
    subsections:
      - id: prereq
        title: Prerequisites
---

## Getting Started {#intro}

Content...

## Setup Guide {#setup}

### Prerequisites {#prereq}

Content...
```

**Features:**
- Automatically shows/hides based on screen size
- Smooth scroll animation
- Current section highlighting (optional)
- Accessible with keyboard navigation

**When to use TOC:**
- Posts longer than 1000 words
- Tutorial posts with multiple steps
- Technical documentation
- Any post with 4+ sections

### Social Sharing

**What it does:**
- Share buttons on every post and project
- Pre-filled text with title and URL
- Opens in new window
- Mobile-friendly

**Platforms included:**
- Twitter / X
- LinkedIn
- Facebook
- Reddit
- Telegram
- Copy Link (with click feedback)

**How it works:**

Automatically appears at the bottom of every post! No configuration needed.

**Customization:**

Edit `_includes/share-buttons.html` to:
- Add new platforms
- Remove platforms you don't want
- Change button styles
- Modify share text

**Example - Add WhatsApp:**

```html
<a href="https://wa.me/?text={{ share_text }}"
   target="_blank"
   class="share-button">
  <i class="fa-brands fa-whatsapp"></i>
  WhatsApp
</a>
```

### RSS Feed

**What it does:**
- Auto-generated feed of your posts
- XML format for feed readers
- Includes full post content
- SEO benefits

**Location:** `https://yourusername.github.io/feed.xml`

**How readers use it:**
- Subscribe in feed readers (Feedly, Inoreader, etc.)
- Get notified of new posts
- Read without visiting site

**What's included:**
- Post title
- Publication date
- Author information
- Full content
- Categories/tags
- Post URL

**Automatically updated** when you publish new posts!

**Validation:**

Test your feed at [validator.w3.org/feed](https://validator.w3.org/feed/)

### Related Posts

**Status:** Coming soon!

Will automatically show related posts based on:
- Shared tags
- Similar content
- Publication date proximity

## SEO Features

### Meta Tags

**What it does:**
- Improves search engine rankings
- Controls social media previews
- Provides rich snippets

**Tags included:**

**Basic SEO:**
```html
<title>Your Post Title - Your Site</title>
<meta name="description" content="Post excerpt">
<meta name="keywords" content="tag1, tag2, tag3">
<link rel="canonical" href="https://yoursite.com/post/">
```

**Open Graph (Facebook, LinkedIn):**
```html
<meta property="og:title" content="Your Post Title">
<meta property="og:description" content="Post excerpt">
<meta property="og:type" content="article">
<meta property="og:url" content="https://yoursite.com/post/">
<meta property="og:image" content="https://yoursite.com/image.jpg">
```

**Twitter Cards:**
```html
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:title" content="Your Post Title">
<meta name="twitter:description" content="Post excerpt">
<meta name="twitter:image" content="https://yoursite.com/image.jpg">
```

**Automatically generated** by the `jekyll-seo-tag` plugin!

**How to optimize:**

1. Write good titles (50-60 characters)
2. Write compelling excerpts (150-160 characters)
3. Use relevant tags
4. Add images to posts (for social previews)

### Sitemap

**What it does:**
- Lists all pages for search engines
- Includes priority and change frequency
- Automatically updated
- Helps with SEO

**Location:** `https://yourusername.github.io/sitemap.xml`

**What's included:**
- All posts
- All projects
- All pages (About, Tags, etc.)
- Homepage

**How to use:**

1. **Submit to Google Search Console:**
   - Go to [search.google.com/search-console](https://search.google.com/search-console)
   - Add your site
   - Submit sitemap: `https://yoursite.com/sitemap.xml`

2. **Submit to Bing Webmaster Tools:**
   - Go to [bing.com/webmasters](https://www.bing.com/webmasters)
   - Add your site
   - Submit sitemap

**Automatically regenerated** on every build!

### Robots.txt

**What it does:**
- Controls search engine crawling
- Allows/disallows specific paths
- Links to sitemap

**Location:** `https://yourusername.github.io/robots.txt`

**Current configuration:**
```
User-agent: *
Allow: /

Sitemap: https://yourusername.github.io/sitemap.xml
```

This allows all search engines to crawl everything.

**To block specific pages:**

Edit `robots.txt`:
```
User-agent: *
Allow: /
Disallow: /drafts/
Disallow: /private/

Sitemap: https://yourusername.github.io/sitemap.xml
```

### Clean URLs

**What it does:**
- Removes `.html` extensions from URLs
- SEO-friendly structure
- Better user experience

**Example:**
- ❌ `yoursite.com/articles/my-post.html`
- ✅ `yoursite.com/articles/my-post/`

**How it works:**

Jekyll automatically generates clean URLs with its permalink system.

**Customizable:** See [CUSTOMIZING.md](CUSTOMIZING.md#permalinks) for URL structure options.

### Schema Markup

**What it does:**
- Provides structured data for search engines
- Enables rich snippets
- Improves search appearance

**Included markup:**
- Article schema (blog posts)
- BlogPosting schema
- Person schema (author)
- Organization schema (site)

**Benefits:**
- Rich snippets in search results
- Knowledge graph integration
- Better click-through rates

**Automatically included** via `jekyll-seo-tag` plugin!

## Design Features

### Responsive Design

**What it does:**
- Adapts layout to any screen size
- Mobile-first approach
- Touch-friendly navigation
- Optimized for all devices

**Breakpoints:**
- **Mobile:** < 640px
- **Tablet:** 640px - 1024px
- **Desktop:** > 1024px
- **Wide:** > 1280px

**Features:**
- Flexible grid system
- Responsive images
- Adaptive navigation (hamburger menu on mobile)
- Touch-friendly buttons (44x44px minimum)
- Readable text on all screens

**Test responsiveness:**

**In browser:**
1. Right-click → Inspect
2. Toggle device toolbar (Ctrl+Shift+M)
3. Test different device sizes

**Or test on actual devices!**

### Dark Theme

**What it does:**
- Easy on the eyes
- Reduced eye strain
- Modern aesthetic
- Battery saving (OLED screens)

**Color scheme:**
- Dark backgrounds
- High contrast text
- Accent colors for links
- Subtle borders

**Customizable:** See [CUSTOMIZING.md](CUSTOMIZING.md#colors-and-theme) to change colors.

**Light theme:** Not included by default, but can be added as a future enhancement.

### Typography

**What it does:**
- Readable text
- Clear hierarchy
- Proper spacing
- Accessible sizes

**Font stack:**
- **Default:** Inter (modern sans-serif)
- **Fallbacks:** System fonts for speed

**Hierarchy:**
- **H1:** 2.25rem (36px) - Page titles
- **H2:** 1.875rem (30px) - Section headings
- **H3:** 1.5rem (24px) - Sub-sections
- **Body:** 1rem (16px) - Content
- **Small:** 0.875rem (14px) - Meta info

**Line height:**
- Headings: 1.2
- Body text: 1.6 (more readable)
- Code: 1.4

**Customizable:** See [CUSTOMIZING.md](CUSTOMIZING.md#typography) to change fonts.

### Syntax Highlighting

**What it does:**
- Colors code blocks
- Supports 190+ languages
- Dark theme optimized
- Line numbers (optional)

**How to use:**

Just use Markdown code blocks:

````markdown
```python
def hello_world():
    print("Hello, world!")
    return True
```
````

**Supported languages:**

Popular ones:
- `python`, `javascript`, `typescript`, `ruby`, `java`, `csharp`
- `html`, `css`, `scss`, `sass`, `less`
- `bash`, `shell`, `powershell`, `zsh`
- `json`, `yaml`, `xml`, `markdown`
- `sql`, `graphql`, `dockerfile`
- `go`, `rust`, `swift`, `kotlin`
- And 170+ more!

**Features:**
- Auto-detected language
- Syntax coloring
- Scrollable for long code
- Copy button ready (can be added)

**Powered by:** Rouge (Jekyll's default highlighter)

### Emoji Support

**What it does:**
- Native emoji rendering
- All platforms supported
- Fast and lightweight
- No external dependencies

**How to use:**

Just add emojis anywhere:

```markdown
# My Post Title 🚀

This is awesome! 🎉

Some tips:
- 💡 Use meaningful icons
- ✅ Check marks for lists
- ⚠️ Warnings
- 🔥 Hot takes
```

**Or in HTML:**

```html
<h1>My Title ⚡</h1>
```

**Favicon emoji:**

```yaml
# _config.yml
icon: 🎨  # Any emoji!
```

**Popular uses:**
- Section markers: 📝 🎨 🔧 💻
- List items: ✅ ❌ ⚠️ 💡
- Headers: 🚀 🎯 📚 🎉
- Emotions: 😊 🤔 😎 💪

## Navigation Features

### Header Navigation

**What it does:**
- Main site navigation
- Always visible
- Responsive (hamburger on mobile)
- Highlights current page

**Features:**
- Sticky header (optional)
- Smooth transitions
- Touch-friendly on mobile
- Keyboard accessible

**Customizable:** Edit navigation in `_config.yml`:

```yaml
navigation:
  - title: Articles
    url: /articles
  - title: Projects
    url: /projects
  - title: About
    url: /about
```

**Mobile behavior:**
- Hamburger menu (☰) on small screens
- Slide-out menu
- Closes on link click
- Touch-friendly

### Previous/Next Posts

**What it does:**
- Navigate between posts chronologically
- Appears at bottom of each post
- Shows post titles
- Quick navigation

**Example:**

```
← Previous Post                    Next Post →
    Building with Django    Getting Started with Python
```

**Features:**
- Chronological order (by date)
- Shows actual post titles
- Hover effects
- Keyboard navigation

**Automatically included** in the post layout!

### Breadcrumbs

**Status:** Not currently included

Can be added as a future enhancement for better navigation in deep hierarchies.

### Featured Projects

**What it does:**
- Showcase selected projects on homepage
- Highlight your best work
- Customizable selection

**How to use:**

Mark projects as featured in their front matter:

```yaml
---
layout: project
title: "My Awesome Project"
featured: true  # This will show on homepage
---
```

**Customize:** Edit `index.html` to change:
- Number of featured projects shown
- Layout and styling
- Order (by date, alphabetical, etc.)

## Performance Features

### Fast Loading

**What it does:**
- Quick page loads
- Optimized assets
- Minimal JavaScript
- Fast navigation

**Optimization techniques:**
- Minified CSS
- Compressed HTML
- Lazy loading (images)
- Static generation

**Typical load times:**
- First visit: 0.5-1.5 seconds
- Subsequent: < 0.5 seconds

**Measure performance:**
- [PageSpeed Insights](https://pagespeed.web.dev/)
- [GTmetrix](https://gtmetrix.com/)
- Browser DevTools (Network tab)

### Static Site

**What it does:**
- Pre-built HTML files
- No server-side processing
- No database needed
- Maximum speed and security

**Benefits:**
- **Fast:** No server rendering
- **Secure:** No backend to hack
- **Cheap:** Free hosting on GitHub Pages
- **Scalable:** Can handle traffic spikes
- **Simple:** Easy to deploy

**How it works:**

1. Jekyll generates all HTML during build
2. Files uploaded to GitHub Pages
3. Visitors get pre-built pages instantly
4. No PHP, no databases, no complexity!

### Optimized Assets

**What it does:**
- Minimized file sizes
- Efficient loading
- Cached resources

**Optimizations:**
- **CSS:** Tailwind purges unused styles
- **Images:** Manual optimization recommended
- **Fonts:** System fonts with minimal custom fonts
- **JavaScript:** Minimal, only when needed

**Tips to improve:**
- Compress images before upload ([TinyPNG](https://tinypng.com/))
- Use WebP format for photos
- Lazy load images
- Minimize custom JavaScript

### CDN Ready

**What it does:**
- Fast content delivery worldwide
- Automatic with GitHub Pages
- Free CDN included

**Benefits:**
- Global edge servers
- Lower latency
- Better performance worldwide
- DDoS protection

**Included platforms:**
- **GitHub Pages:** Fastly CDN (automatic)
- **Netlify:** Global edge network
- **Cloudflare Pages:** Cloudflare CDN
- **Vercel:** Edge network

No configuration needed - works automatically!

## Developer Features

### GitHub Actions

**What it does:**
- Automated building
- Automated deployment
- Runs on every push
- No manual steps

**Workflow includes:**
1. Checkout code
2. Setup Ruby
3. Setup Node.js
4. Install dependencies
5. Build Tailwind CSS
6. Build Jekyll site
7. Deploy to GitHub Pages

**How to monitor:**
- Go to **Actions** tab
- View workflow runs
- See build logs
- Debug failures

**Customization:**

Edit `.github/workflows/deploy.yml` to:
- Change trigger conditions
- Add testing steps
- Modify build process
- Add notifications

### Docker Support

**What it does:**
- Run blog locally without installing dependencies
- Consistent environment across platforms
- Easy updates
- Clean system

**Benefits:**
- ✅ No Ruby or Node.js installation needed
- ✅ Works on Windows, Mac, Linux
- ✅ Isolated from system
- ✅ Easy to update

**Commands:**
```bash
make up     # Start development
make down   # Stop
make build  # Rebuild image
make dev    # With live CSS watching
make prod   # Production build
```

**See [INSTALL.md](INSTALL.md#local-setup-using-docker-recommended) for detailed Docker instructions.**

### Live Reload

**What it does:**
- Auto-refreshes browser on changes
- No manual refresh needed
- Faster development
- See changes instantly

**How to use:**

```bash
# Traditional setup
bundle exec jekyll serve --livereload

# Docker setup
make up  # Live reload included!
```

**What triggers reload:**
- Post content changes
- Layout modifications
- Include changes
- CSS updates (with watch mode)
- Configuration changes (requires restart)

### Hot Module Replacement

**What it does (CSS only):**
- Updates styles without full page reload
- Preserves page state
- Instant visual feedback

**How to use:**

```bash
# Terminal 1: Jekyll with live reload
bundle exec jekyll serve --livereload

# Terminal 2: CSS watcher
npm run watch:css

# Or with Docker:
make dev
```

Now CSS changes appear **instantly** without page refresh!

## Content Features

### Markdown Support

**What it does:**
- Write content in Markdown
- Clean, readable source
- Easy to learn
- Converted to HTML automatically

**Supported syntax:**

```markdown
# Heading 1
## Heading 2
### Heading 3

**Bold** and *italic*

[Links](https://example.com)

![Images](/path/to/image.jpg)

- Bullet lists
- Item two

1. Numbered lists
2. Item two

> Blockquotes

`Inline code`

```
Code blocks
```

Tables, footnotes, and more!
```

**Extended with:**
- GitHub Flavored Markdown
- Tables
- Strikethrough: `~~text~~`
- Task lists: `- [ ] Todo`
- Auto-linked URLs

### Code Blocks

**What it does:**
- Display code beautifully
- Syntax highlighting
- Horizontal scroll for long lines
- Copy-friendly

**Usage:**

````markdown
```python
def fibonacci(n):
    if n <= 1:
        return n
    return fibonacci(n-1) + fibonacci(n-2)
```
````

**Features:**
- 190+ languages supported
- Dark theme optimized
- Scrollable horizontal
- Line wrapping optional
- Copy button can be added

**Inline code:**

```markdown
Use the `python` command to run scripts.
```

### Image Handling

**What it does:**
- Display images in posts
- Responsive sizing
- Alt text support
- SEO-friendly

**How to use:**

**Markdown syntax:**
```markdown
![Alt text describing image](/assets/images/my-image.jpg)
```

**HTML for more control:**
```html
<img src="/assets/images/my-image.jpg"
     alt="Descriptive alt text"
     width="600"
     class="rounded-lg">
```

**Best practices:**
- Use descriptive alt text
- Compress before uploading
- Use appropriate dimensions
- Consider WebP format
- Store in `assets/images/`

**Image optimization tools:**
- [TinyPNG](https://tinypng.com/)
- [Squoosh](https://squoosh.app/)
- ImageOptim (Mac)
- [Optimizilla](https://imagecompressor.com/)

### Excerpts

**What it does:**
- Short preview text for posts
- Shows on blog index
- Used in SEO meta tags
- Social media previews

**Methods:**

**1. Automatic (first paragraph):**

```markdown
---
layout: post
title: "My Post"
---

This is the first paragraph. It will be used as the excerpt automatically.

More content...
```

**2. Custom excerpt in front matter:**

```yaml
---
layout: post
title: "My Post"
excerpt: "Custom preview text that's different from the content."
---

Your actual post content...
```

**3. Explicit separator:**

```markdown
---
layout: post
title: "My Post"
---

This is the excerpt part.

<!--more-->

This is the full content that only shows on the post page.
```

**Tips:**
- Keep excerpts 150-160 characters for SEO
- Make them compelling - they sell your post
- Include main keywords
- End with intrigue to encourage clicks

## Upcoming Features

**Planned enhancements:**

- [ ] **Search functionality** - Client-side search with Lunr.js
- [ ] **Dark/light theme toggle** - User preference support
- [ ] **Reading time estimates** - Show read time on posts
- [ ] **View counters** - Track post popularity
- [ ] **Related posts** - Suggest similar content
- [ ] **Newsletter integration** - Email subscriptions
- [ ] **Comment system** - Native comments without Disqus
- [ ] **Progressive Web App** - Offline support
- [ ] **Copy code button** - One-click code copying
- [ ] **Image lightbox** - Click to enlarge images

**Want to contribute?** See [CONTRIBUTING.md](../CONTRIBUTING.md)!

---

## Quick Feature Reference

| Feature | Location | Customizable | Docs |
|---------|----------|--------------|------|
| Pagination | Auto | `_config.yml` | [Link](#pagination) |
| Tags | Auto | Post front matter | [Link](#tags-system) |
| TOC | Opt-in | Post front matter | [Link](#table-of-contents) |
| Social Share | Auto | `_includes/` | [Link](#social-sharing) |
| RSS Feed | Auto | `_config.yml` | [Link](#rss-feed) |
| Sitemap | Auto | Auto-generated | [Link](#sitemap) |
| SEO Tags | Auto | Post front matter | [Link](#meta-tags) |
| Syntax Highlight | Auto | Rouge theme | [Link](#syntax-highlighting) |
| Responsive | Auto | CSS | [Link](#responsive-design) |
| Docker | Opt-in | Docker files | [INSTALL.md](INSTALL.md) |

---

## Next Steps

- ✅ **Understand features?** Start writing in [CONTENT.md](CONTENT.md)
- ✅ **Want to customize?** Check [CUSTOMIZING.md](CUSTOMIZING.md)
- ✅ **Ready to deploy?** See [DEPLOYMENT.md](DEPLOYMENT.md)
- ✅ **Have questions?** Read [FAQ.md](FAQ.md)

**Happy blogging!** 📝✨

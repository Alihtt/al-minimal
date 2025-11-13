# Customization Guide

Complete guide to customizing your Jekyll blog to match your style and preferences.

<!--ts-->

- [Customization Guide](#customization-guide)
  - [Basic Configuration](#basic-configuration)
    - [Personal Information](#personal-information)
    - [Social Media Links](#social-media-links)
    - [Navigation Menu](#navigation-menu)
    - [About Section](#about-section)
  - [Visual Customization](#visual-customization)
    - [Colors and Theme](#colors-and-theme)
    - [Typography](#typography)
    - [Favicon](#favicon)
    - [Layout and Spacing](#layout-and-spacing)
  - [Content Settings](#content-settings)
    - [Pagination](#pagination)
    - [Permalinks](#permalinks)
    - [Date Formats](#date-formats)
    - [Excerpt Length](#excerpt-length)
  - [Features Configuration](#features-configuration)
    - [Google Analytics](#google-analytics)
    - [Disqus Comments](#disqus-comments)
    - [Social Sharing](#social-sharing)
    - [Table of Contents](#table-of-contents)
  - [Advanced Customization](#advanced-customization)
    - [Custom Layouts](#custom-layouts)
    - [Adding New Pages](#adding-new-pages)
    - [Custom CSS](#custom-css)
    - [Modifying Templates](#modifying-templates)
  - [Removing Content](#removing-content)
    - [Remove Projects Section](#remove-projects-section)
    - [Remove Tags Page](#remove-tags-page)
    - [Simplify Navigation](#simplify-navigation)
  - [Tips and Best Practices](#tips-and-best-practices)

<!--te-->

## Basic Configuration

All basic configuration is done in `_config.yml`. **Always restart Jekyll** after editing this file:

```bash
# Stop Jekyll (Ctrl+C), then:
bundle exec jekyll serve

# Or with Docker:
make down
make up
```

### Personal Information

Edit the top section of `_config.yml`:

```yaml
# -----------------------------------------------------------------------------
# Site settings
# -----------------------------------------------------------------------------

title: Your Name                    # Browser tab title
first_name: Your                    # Used in templates
last_name: Name                     # Used in templates
greeting: "Hi, I'm Your Name!"      # Homepage greeting
tagline: "Your professional title"  # Subtitle on homepage
email: your.email@example.com       # Contact email

# About text (supports Markdown)
about: >-
  I'm a software developer passionate about Python and web development.
  I build efficient applications and share my knowledge through this blog.
  Currently working on exciting projects at Company Name.

# Description for SEO
description: >-
  Personal blog - A developer sharing thoughts on software development,
  Python, web technologies, and more.

# Site URLs
url: "https://yourusername.github.io"  # Your site URL
baseurl: ""  # Leave empty for user site, or "/repo-name" for project site

# Language and region
lang: en  # en, fr, es, de, etc.

# Favicon emoji (easiest option!)
icon: ⚛️  # Any emoji: 🚀 💻 📝 ⚡ 🎨 🌟 etc.
```

**Tips:**
- Keep `title` short (your name or blog name)
- Write `greeting` in first person for a personal touch
- `tagline` should be 3-5 words describing what you do
- `description` is used for SEO and social sharing

### Social Media Links

Add or remove social links in `_config.yml`:

```yaml
# -----------------------------------------------------------------------------
# Social Media
# -----------------------------------------------------------------------------

social:
  - icon: fa-brands fa-github
    link: https://github.com/yourusername
    name: GitHub

  - icon: fa-brands fa-x-twitter
    link: https://twitter.com/your_twitter
    name: Twitter / X

  - icon: fa-brands fa-linkedin
    link: https://linkedin.com/in/your_linkedin
    name: LinkedIn

  - icon: fa-brands fa-telegram
    link: https://t.me/your_telegram
    name: Telegram

  - icon: fa-solid fa-envelope
    link: mailto:your.email@example.com
    name: Email

  # More options:
  - icon: fa-brands fa-youtube
    link: https://youtube.com/@yourchannel
    name: YouTube

  - icon: fa-brands fa-dev
    link: https://dev.to/yourusername
    name: DEV Community

  - icon: fa-brands fa-medium
    link: https://medium.com/@yourusername
    name: Medium

  - icon: fa-brands fa-stack-overflow
    link: https://stackoverflow.com/users/yourID
    name: Stack Overflow
```

**Finding Icons:**

1. Go to [Font Awesome](https://fontawesome.com/icons)
2. Search for a platform (e.g., "instagram")
3. Copy the icon class (e.g., `fa-brands fa-instagram`)
4. Add to your social array

**Popular platforms:**
- `fa-brands fa-github` - GitHub
- `fa-brands fa-gitlab` - GitLab
- `fa-brands fa-twitter` - Twitter (old icon)
- `fa-brands fa-x-twitter` - X / Twitter (new icon)
- `fa-brands fa-linkedin` - LinkedIn
- `fa-brands fa-facebook` - Facebook
- `fa-brands fa-instagram` - Instagram
- `fa-brands fa-youtube` - YouTube
- `fa-brands fa-twitch` - Twitch
- `fa-brands fa-discord` - Discord
- `fa-brands fa-reddit` - Reddit
- `fa-brands fa-mastodon` - Mastodon
- `fa-solid fa-envelope` - Email
- `fa-solid fa-rss` - RSS Feed

### Navigation Menu

Customize the main navigation:

```yaml
# -----------------------------------------------------------------------------
# Navigation
# -----------------------------------------------------------------------------

navigation:
  - title: Articles
    url: /articles

  - title: Tags
    url: /tags

  - title: Projects
    url: /projects

  - title: About
    url: /about
```

**Tips:**
- Order matters - items appear left to right
- Keep it to 3-5 items for best UX
- URLs must match existing pages
- Use short, clear titles

**Example minimal navigation:**
```yaml
navigation:
  - title: Blog
    url: /articles
  - title: About
    url: /about
```

### About Section

Edit `about.markdown` in your project root:

```markdown
---
layout: page
title: About
permalink: /about/
---

# About Me

Hi, I'm [Your Name]! 👋

I'm a [your profession] passionate about [your interests].

## What I Do

- 💻 Software Development
- 📝 Technical Writing
- 🎓 Teaching & Mentoring

## Experience

Brief overview of your experience...

## Skills

**Languages:** Python, JavaScript, Ruby, etc.

**Frameworks:** Django, React, Rails, etc.

**Tools:** Docker, Git, VS Code, etc.

## Contact

Feel free to reach out via [email](mailto:your.email@example.com) or connect on [Twitter](https://twitter.com/yourhandle)!

---

*This blog is built with Jekyll and Tailwind CSS, hosted on GitHub Pages.*
```

**Markdown features you can use:**
- Headings: `#`, `##`, `###`
- Bold: `**text**`
- Italic: `*text*`
- Links: `[text](url)`
- Images: `![alt](path)`
- Lists: `- item` or `1. item`
- Code: `` `code` ``
- Emojis: 🎉 💡 ⚡ 🚀

## Visual Customization

### Colors and Theme

Edit `assets/css/input.css` to customize colors:

```css
:root {
  /* Primary brand color */
  --color-primary: #3b82f6;     /* Blue - used for links, accents */

  /* Background colors */
  --color-bg: #0a0a0a;          /* Main background */
  --color-bg-secondary: #1a1a1a; /* Cards, code blocks */

  /* Text colors */
  --color-text: #e0e0e0;        /* Primary text */
  --color-text-dim: #a0a0a0;    /* Secondary text, dates */

  /* Border colors */
  --color-border: #2a2a2a;      /* Borders, dividers */

  /* State colors */
  --color-hover: #4a4a4a;       /* Hover states */
  --color-active: #5a5a5a;      /* Active states */
}
```

**After editing, rebuild CSS:**

```bash
npm run build:css

# Or with Docker:
docker-compose exec jekyll npm run build:css
# Or use watch mode: make dev
```

**Popular color schemes:**

**Blue (Default):**
```css
--color-primary: #3b82f6;
```

**Purple:**
```css
--color-primary: #8b5cf6;
```

**Green:**
```css
--color-primary: #10b981;
```

**Orange:**
```css
--color-primary: #f59e0b;
```

**Pink:**
```css
--color-primary: #ec4899;
```

**Red:**
```css
--color-primary: #ef4444;
```

**Find more colors:**
- [Tailwind Colors](https://tailwindcss.com/docs/customizing-colors)
- [Color Hunt](https://colorhunt.co/)
- [Coolors](https://coolors.co/)

### Typography

**Change fonts:**

Edit `_layouts/default.html` and find the Google Fonts link in the `<head>` section:

```html
<!-- Current font -->
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap" rel="stylesheet">

<!-- Example: Change to Roboto -->
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;600;700&display=swap" rel="stylesheet">

<!-- Example: Use multiple fonts -->
<link href="https://fonts.googleapis.com/css2?family=Merriweather:wght@400;700&family=Open+Sans:wght@400;600&display=swap" rel="stylesheet">
```

Then update `assets/css/input.css`:

```css
:root {
  /* For Roboto */
  --font-sans: 'Roboto', system-ui, -apple-system, sans-serif;

  /* For multiple fonts (headings and body) */
  --font-sans: 'Open Sans', sans-serif;
  --font-serif: 'Merriweather', serif;
}

/* Apply to body */
body {
  font-family: var(--font-sans);
}

/* Apply serif to headings if you want */
h1, h2, h3, h4, h5, h6 {
  font-family: var(--font-serif);
}
```

**Popular font combinations:**

- **Inter + Inter** (default) - Modern, clean
- **Roboto + Roboto** - Google's font, highly readable
- **Merriweather + Open Sans** - Classic serif + sans mix
- **Playfair Display + Source Sans Pro** - Elegant headers
- **Lora + Lato** - Readable and friendly

**Find more fonts:**
- [Google Fonts](https://fonts.google.com/)
- [Font Pair](https://www.fontpair.co/)

### Favicon

Two options: emoji (easy!) or custom images (advanced).

**Option 1: Emoji Favicon (Recommended)**

Just set an emoji in `_config.yml`:

```yaml
icon: 🚀  # Any emoji!
```

Popular choices:
- 🚀 💻 📝 ⚡ 🎨 🌟 ✨ 🔥 💡 🎯 📚 🎮 🎵 📷 🌈

**No files needed! Just restart Jekyll.**

**Option 2: Custom Image Files**

For professional branding:

1. **Generate favicon files** at [favicon.io](https://favicon.io/)
   - Upload your logo or use text/emoji generator
   - Download the zip file

2. **Remove/comment out icon in _config.yml:**
   ```yaml
   # icon: 🚀  # Comment out or remove this line
   ```

3. **Add files to `assets/images/`:**
   - `favicon.ico` (16x16 and 32x32)
   - `favicon-16x16.png`
   - `favicon-32x32.png`
   - `apple-touch-icon.png` (180x180)
   - `android-chrome-192x192.png`
   - `android-chrome-512x512.png`

4. **Update `site.webmanifest`:**
   ```json
   {
     "name": "Your Blog Name",
     "short_name": "Blog",
     "icons": [
       {
         "src": "/assets/images/android-chrome-192x192.png",
         "sizes": "192x192",
         "type": "image/png"
       },
       {
         "src": "/assets/images/android-chrome-512x512.png",
         "sizes": "512x512",
         "type": "image/png"
       }
     ]
   }
   ```

### Layout and Spacing

Adjust spacing in `assets/css/input.css`:

```css
/* Container widths */
.container {
  max-width: 1200px;  /* Default: 1200px, try 1000px for narrower */
}

/* Post content width */
.prose {
  max-width: 65ch;  /* Default: 65 characters, try 75ch for wider */
}

/* Line height (readability) */
:root {
  --line-height-normal: 1.6;  /* Default: 1.6, try 1.8 for more space */
}

/* Spacing scale */
:root {
  --space-xs: 0.5rem;   /* 8px */
  --space-sm: 1rem;     /* 16px */
  --space-md: 1.5rem;   /* 24px */
  --space-lg: 2rem;     /* 32px */
  --space-xl: 3rem;     /* 48px */
}
```

## Content Settings

### Pagination

Control how many posts appear per page:

```yaml
# _config.yml
pagination:
  enabled: true
  per_page: 10          # Change this number (default: 10)
  permalink: '/page/:num/'
  title: ':title - page :num'
  limit: 0              # 0 = unlimited pages
  sort_field: 'date'
  sort_reverse: true    # Newest first
```

**Recommended values:**
- **5-7** posts - Minimal, focused
- **10** posts - Default, balanced
- **15-20** posts - More content per page

### Permalinks

Customize post URL structure in `_config.yml`:

```yaml
# Option 1: Just title (current, cleanest)
permalink: /articles/:title/
# Example: /articles/my-first-post/

# Option 2: With date
permalink: /articles/:year/:month/:day/:title/
# Example: /articles/2025/01/15/my-first-post/

# Option 3: Year + title
permalink: /articles/:year/:title/
# Example: /articles/2025/my-first-post/

# Option 4: Date + title (shortest with date)
permalink: /articles/:year-:month-:day-:title/
# Example: /articles/2025-01-15-my-first-post/

# Option 5: Categories + title
permalink: /:categories/:title/
# Example: /tutorials/my-first-post/
```

**Recommendation:** Stick with `/articles/:title/` for clean, SEO-friendly URLs.

### Date Formats

Dates can be customized in your layouts. Edit `_layouts/post.html`:

```html
<!-- Current format: Jan 15, 2025 -->
{{ page.date | date: "%b %d, %Y" }}

<!-- Other formats: -->
{{ page.date | date: "%B %d, %Y" }}      <!-- January 15, 2025 -->
{{ page.date | date: "%Y-%m-%d" }}       <!-- 2025-01-15 -->
{{ page.date | date: "%d/%m/%Y" }}       <!-- 15/01/2025 -->
{{ page.date | date: "%A, %B %d, %Y" }}  <!-- Thursday, January 15, 2025 -->
{{ page.date | date: "%b %Y" }}          <!-- Jan 2025 -->
```

[Full list of date formats](https://shopify.github.io/liquid/filters/date/)

### Excerpt Length

Control preview text length in `_config.yml`:

```yaml
# Excerpt settings
excerpt_separator: <!--more-->  # Or use "\n\n" for 2 paragraphs
```

**Option 1: Automatic (first paragraph):**

Posts automatically use the first paragraph as excerpt.

**Option 2: Custom excerpt in front matter:**

```yaml
---
layout: post
title: "My Post"
excerpt: "Custom preview text for this specific post."
---
```

**Option 3: Explicit separator:**

```markdown
---
layout: post
title: "My Post"
---

This is the excerpt part that shows in previews.

<!--more-->

This is the full post content that only shows on the post page.
```

## Features Configuration

### Google Analytics

Add tracking to your site:

1. Create a Google Analytics 4 property at [analytics.google.com](https://analytics.google.com)
2. Get your Measurement ID (format: `G-XXXXXXXXXX`)
3. Add to `_config.yml`:

```yaml
# Google Analytics
google_analytics: G-XXXXXXXXXX  # Your Measurement ID
```

4. Restart Jekyll and push to GitHub

**That's it!** Analytics will start tracking automatically.

**Privacy-friendly alternatives:**
- [Plausible](https://plausible.io/) - Lightweight, GDPR-compliant
- [Fathom](https://usefathom.com/) - Simple, privacy-first
- [Umami](https://umami.is/) - Open source, self-hosted

### Disqus Comments

Add comments to your blog posts:

1. **Create a Disqus account** at [disqus.com](https://disqus.com)
2. **Add your site** and get your shortname
3. **Add to `_config.yml`:**

```yaml
# Comments
disqus_shortname: your-shortname  # Uncomment and add your shortname
```

4. **Add to `_layouts/post.html` before `</article>`:**

```html
{% if site.disqus_shortname %}
<div class="mt-8 pt-8 border-t border-gray-800">
  <h3 class="text-2xl font-bold mb-4">Comments</h3>
  <div id="disqus_thread"></div>
  <script>
    var disqus_config = function () {
      this.page.url = "{{ page.url | absolute_url }}";
      this.page.identifier = "{{ page.id }}";
    };
    (function() {
      var d = document, s = d.createElement('script');
      s.src = 'https://{{ site.disqus_shortname }}.disqus.com/embed.js';
      s.setAttribute('data-timestamp', +new Date());
      (d.head || d.body).appendChild(s);
    })();
  </script>
  <noscript>
    Please enable JavaScript to view the
    <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a>
  </noscript>
</div>
{% endif %}
```

5. **Restart Jekyll**

Comments will now appear on all posts!

**Alternatives to Disqus:**
- [utterances](https://utteranc.es/) - GitHub issues as comments
- [giscus](https://giscus.app/) - GitHub Discussions as comments
- [Commento](https://commento.io/) - Privacy-focused
- [Hyvor Talk](https://talk.hyvor.com/) - Privacy-friendly

### Social Sharing

Social sharing buttons are already included! Customize which platforms in `_includes/share-buttons.html`:

```html
<!-- Current: Twitter, LinkedIn, Facebook, Reddit, Telegram -->

<!-- To remove a platform, delete or comment out its section -->

<!-- To add a platform, add a new button: -->
<a href="https://wa.me/?text={{ share_text }}"
   target="_blank"
   class="...">
  <i class="fa-brands fa-whatsapp"></i>
  WhatsApp
</a>
```

### Table of Contents

TOC is already set up! To use it in a post:

```yaml
---
layout: post
title: "My Long Post"
toc: true  # Auto-generated from headings
---

## Section 1

Content...

## Section 2

Content...
```

See [CONTENT.md](CONTENT.md#table-of-contents) for advanced TOC customization.

## Advanced Customization

### Custom Layouts

Create new layouts in `_layouts/`:

```html
<!-- _layouts/custom.html -->
---
layout: default
---

<div class="custom-layout">
  <header class="custom-header">
    <h1>{{ page.title }}</h1>
  </header>

  <main class="custom-content">
    {{ content }}
  </main>
</div>
```

Use in a page:

```yaml
---
layout: custom
title: "My Custom Page"
---

Your content here...
```

### Adding New Pages

Create a new file in your project root:

```markdown
<!-- contact.markdown -->
---
layout: page
title: Contact
permalink: /contact/
---

# Get in Touch

Contact form or information here...
```

Add to navigation in `_config.yml`:

```yaml
navigation:
  - title: Contact
    url: /contact
```

### Custom CSS

Add custom styles to `assets/css/input.css`:

```css
/* Your custom styles */
.my-custom-class {
  background: linear-gradient(to right, #667eea 0%, #764ba2 100%);
  padding: 2rem;
  border-radius: 0.5rem;
}

/* Custom post styling */
.post-content {
  /* Your styles */
}

/* Custom code block styling */
.post-content pre {
  /* Your styles */
}
```

Then rebuild: `npm run build:css`

**Use Tailwind utilities when possible:**

```html
<div class="bg-blue-500 p-4 rounded-lg">
  Content
</div>
```

Tailwind is more maintainable than custom CSS!

### Modifying Templates

Template files are in `_includes/` and `_layouts/`:

**Modify header:** Edit `_includes/header.html`
**Modify footer:** Edit `_layouts/default.html`
**Modify post layout:** Edit `_layouts/post.html`
**Modify page layout:** Edit `_layouts/page.html`

**Tips:**
- Make small changes and test
- Keep backups before major changes
- Use Git to track changes
- Test responsive design (mobile, tablet, desktop)

## Removing Content

### Remove Projects Section

**1. Remove from navigation** in `_config.yml`:

```yaml
navigation:
  - title: Articles
    url: /articles
  - title: About
    url: /about
  # Projects removed
```

**2. Delete or rename** `projects.html`

**3. Optionally delete** `_projects/` directory

### Remove Tags Page

**1. Remove from navigation** in `_config.yml`

**2. Delete** `tags.html`

### Simplify Navigation

Minimal navigation example:

```yaml
navigation:
  - title: Blog
    url: /articles
  - title: About
    url: /about
```

Clean and simple!

## Tips and Best Practices

**1. Test Locally First**
- Always run `bundle exec jekyll serve` before pushing
- Check all pages, links, and features
- Test on mobile (browser dev tools)

**2. Keep It Simple**
- Don't over-customize initially
- Add features as you need them
- Simple designs age better

**3. Consistent Styling**
- Stick to your color scheme
- Use consistent spacing
- Maintain visual hierarchy

**4. Performance**
- Optimize images before uploading
- Keep CSS minimal
- Don't add too many external scripts

**5. Accessibility**
- Use proper heading hierarchy (H1 → H2 → H3)
- Add alt text to images
- Ensure good color contrast
- Test with keyboard navigation

**6. Mobile First**
- Design for mobile, enhance for desktop
- Test on actual devices when possible
- Keep touch targets large enough (44x44px min)

**7. Version Control**
- Commit changes incrementally
- Write descriptive commit messages
- Test before committing
- Use branches for major changes

**8. Documentation**
- Comment complex customizations
- Keep notes on what you changed
- Update README if you add features

---

## Next Steps

- ✅ Customized? Start writing! See [CONTENT.md](CONTENT.md)
- ✅ Need features explained? Check [FEATURES.md](FEATURES.md)
- ✅ Ready to deploy? Read [DEPLOYMENT.md](DEPLOYMENT.md)
- ✅ Have questions? See [FAQ.md](FAQ.md)

**Happy customizing!** 🎨

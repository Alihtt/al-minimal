# Customization

Make this blog truly yours!

## Basic Setup

### 1. Personal Information

Edit `_config.yml`:

```yaml
# Your Info
title: Your Name
greeting: "Hi, I'm Your Name!"
tagline: "Your professional tagline"
email: your.email@example.com
url: "https://yourusername.github.io"

# About Section
about: >-
  Write a brief bio about yourself.
  What do you do? What are you passionate about?
```

**Restart Jekyll** after editing `_config.yml`:
```bash
# Stop with Ctrl+C, then:
bundle exec jekyll serve
```

### 2. Social Media

Update social links in `_config.yml`:

```yaml
social:
  - icon: fa-brands fa-github
    link: https://github.com/yourusername
    name: GitHub
  - icon: fa-brands fa-x-twitter
    link: https://twitter.com/yourusername
    name: Twitter
  # Add more...
```

Find icons at [Font Awesome](https://fontawesome.com/icons).

### 3. Navigation Menu

```yaml
navigation:
  - title: Articles
    url: /articles
  - title: Projects
    url: /projects
  - title: About
    url: /about
```

### 4. About Page

Edit `about.markdown`:

```markdown
---
layout: page
title: About
---

# About Me

Your bio here...
```

## Visual Customization

### Colors

Edit `assets/css/input.css`:

```css
:root {
  --color-primary: #3b82f6;  /* Blue */
  --color-bg: #0a0a0a;       /* Dark background */
  --color-text: #e0e0e0;     /* Light text */
}
```

Rebuild CSS:
```bash
npm run build:css
```

### Fonts

Edit `_layouts/default.html` - find Google Fonts link in `<head>` and replace.

Example:
```html
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;700&display=swap" rel="stylesheet">
```

### Pagination

Change posts per page in `_config.yml`:

```yaml
pagination:
  per_page: 10  # Change this number
```

## Advanced Customization

### Post URL Structure

Edit `_config.yml`:

```yaml
# Option 1: Just title (current)
permalink: /articles/:title/

# Option 2: With date
permalink: /articles/:year/:month/:day/:title/

# Option 3: Year + title
permalink: /articles/:year/:title/
```

### Favicon

1. Generate at [favicon.io](https://favicon.io/)
2. Add files to `assets/images/`:
   - `favicon.ico`
   - `favicon-16x16.png`
   - `favicon-32x32.png`
   - `apple-touch-icon.png`
   - `android-chrome-192x192.png`
   - `android-chrome-512x512.png`
3. Update `site.webmanifest` with your blog name
4. Done! (Already configured in template)

### Google Analytics

Edit `_config.yml`:

```yaml
google_analytics: G-XXXXXXXXXX
```

### Disqus Comments

1. Get shortname from [disqus.com](https://disqus.com)
2. Edit `_config.yml`:
   ```yaml
   disqus_shortname: your-shortname
   ```
3. Add to `_layouts/post.html` before `</article>`:
   ```html
   {% if site.disqus_shortname %}
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
   {% endif %}
   ```

## Tips

- Always rebuild CSS after style changes
- Restart Jekyll after config changes
- Test in multiple browsers
- Check mobile responsiveness

## Need More?

- [FEATURES.md](FEATURES.md) - All features explained
- [CONTENT.md](CONTENT.md) - Add posts and projects
- [FAQ.md](FAQ.md) - Common questions


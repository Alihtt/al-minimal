# Adding Content

Learn how to add blog posts and projects.

## Writing Blog Posts

### Create a Post

1. Create file in `_posts/`:
   ```
   _posts/2025-01-15-my-first-post.markdown
   ```
   Format: `YYYY-MM-DD-title.markdown`

2. Add front matter and content:
   ```yaml
   ---
   layout: post
   title: "My First Post"
   date: 2025-01-15 10:00:00 +0000
   tags: [python, tutorial]
   excerpt: "Brief description for previews"
   ---

   Your content here in Markdown...
   ```

### Post Options

**Required:**
- `layout: post`
- `title: "Your Title"`
- `date: YYYY-MM-DD HH:MM:SS +0000`

**Optional:**
- `tags: [tag1, tag2]` - Organize posts
- `excerpt: "..."` - Custom preview text
- `toc: [...]` - Table of contents (see below)

### Table of Contents

For long posts, add TOC in front matter:

```yaml
---
layout: post
title: "Long Post"
toc:
  - id: introduction
    title: Introduction
  - id: main-section
    title: Main Section
    subsections:
      - id: subsection-one
        title: Subsection One
---

## Introduction {#introduction}

Content...

## Main Section {#main-section}

### Subsection One {#subsection-one}

Content...
```

### Markdown Basics

```markdown
# Heading 1
## Heading 2
### Heading 3

**bold** and *italic*

[Link text](https://example.com)

- Bullet list
- Item two

1. Numbered list
2. Item two

`inline code`

```python
# Code block
def hello():
    print("Hello!")
```

> Blockquote

![Image](path/to/image.jpg)
```

## Adding Projects

### Create a Project

1. Create file in `_projects/`:
   ```
   _projects/my-project.md
   ```

2. Add front matter and content:
   ```yaml
   ---
   layout: project
   title: "My Awesome Project"
   description: "Brief description"
   date: 2025-01-15
   status: "Completed"
   featured: true
   tech: [Python, Django, PostgreSQL]
   github: https://github.com/username/project
   demo: https://demo.example.com
   ---

   ## Overview

   Detailed project description...

   ## Features

   - Feature 1
   - Feature 2

   ## Technologies

   Explain your tech choices...
   ```

### Project Options

**Required:**
- `layout: project`
- `title: "Project Name"`
- `description: "..."`

**Optional:**
- `date: YYYY-MM-DD` - Project date
- `status: "Active"` - Completed, In Progress, Planned
- `featured: true` - Show on homepage
- `tech: [...]` - Technology stack
- `github: url` - GitHub link
- `demo: url` - Live demo link

## Tags Best Practices

- Use 2-5 tags per post
- Be consistent: `javascript` not `JavaScript`
- Common tags: `tutorial`, `python`, `django`, `react`, `tips`
- Tags auto-generate on `/tags` page

## Content Tips

### Writing Great Posts

1. **Compelling Title** - Clear and specific
2. **Good Excerpt** - Hook readers in 1-2 sentences
3. **Use Headings** - Break up long content
4. **Add Code Examples** - Show, don't just tell
5. **Include Images** - Visual content engages
6. **Proofread** - Edit for clarity

### SEO Tips

- Write descriptive titles (50-60 characters)
- Create compelling excerpts (150-160 characters)
- Use relevant tags
- Add alt text to images
- Link to related posts

## Examples

Sample posts are in `_posts/`:
- `2025-01-01-welcome-to-your-blog.markdown`
- `2025-05-05-optimizing-django-queries.markdown`

Sample projects are in `_projects/`:
- `django-ecommerce.md`
- `python-api-wrapper.md`
- `task-automation-tool.md`

## Need Help?

- [FEATURES.md](FEATURES.md) - Feature documentation
- [CUSTOMIZING.md](CUSTOMIZING.md) - Customize your blog
- [FAQ.md](FAQ.md) - Common questions


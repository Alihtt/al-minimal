# Multi-stage build for Jekyll + Tailwind CSS
FROM ruby:3.3-slim AS base

# Install essential dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Install Node.js (for Tailwind CSS)
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
    && apt-get install -y nodejs \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /site

# Copy dependency files
COPY Gemfile* ./
COPY package*.json ./

# Install Ruby gems
RUN bundle install

# Install npm packages
RUN npm install

# Copy the rest of the application
COPY . .

# Expose port for Jekyll server
EXPOSE 4000

# Default command
CMD ["bash", "-c", "npm run build:css && bundle exec jekyll serve --host 0.0.0.0 --livereload --force_polling"]


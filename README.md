# Lyndsay Karges - Portfolio Website

A Hugo-based portfolio website for Lyndsay Karges, Policy Professional.

## Local Development

```bash
# Install dependencies
npm install

# Run Hugo development server
hugo server -D
```

## Deployment

### GitLab Pages

1. Push this repository to GitLab
2. The `.gitlab-ci.yml` file will automatically build and deploy to GitLab Pages
3. Update `baseURL` in `hugo.toml` to your GitLab Pages URL (e.g., `https://yourusername.gitlab.io/lyndsay-site/`)
4. Site will be available at your GitLab Pages URL

### Cloudflare Pages

1. Push this repository to GitHub or GitLab
2. In Cloudflare Pages dashboard, create a new project
3. Connect your repository
4. Use these build settings:
   - **Framework preset**: Hugo
   - **Build command**: `hugo --minify`
   - **Build output directory**: `public`
   - **Environment variable**: `HUGO_VERSION` = `0.147.8` (or later)
5. Deploy!

### Custom Domain

For either platform:
1. Update `baseURL` in `hugo.toml` to your custom domain (e.g., `https://lyndsaykarges.com/`)
2. Configure DNS settings in your domain provider:
   - For GitLab Pages: Follow [GitLab's custom domain docs](https://docs.gitlab.com/ee/user/project/pages/custom_domains_ssl_tls_certification/)
   - For Cloudflare Pages: Follow [Cloudflare's custom domain docs](https://developers.cloudflare.com/pages/configuration/custom-domains/)

## Hugo Theme

This site uses a custom theme with Tailwind CSS.

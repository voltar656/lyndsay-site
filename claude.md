# Lyndsay Karges Portfolio Website - Project Documentation

## Project Overview

This is a professional portfolio website for Lyndsay Karges, a policy professional with expertise in policy analysis, program development, and research. The site was built using Hugo static site generator with a custom theme based on Tailwind CSS.

## Technical Stack

- **Static Site Generator**: Hugo v0.147.8+ (Extended version required for Tailwind CSS)
- **CSS Framework**: Tailwind CSS v4.0.10
- **Theme**: Custom theme based on Blowfish theme structure
- **Deployment Options**: 
  - GitLab Pages (configured with `.gitlab-ci.yml`)
  - Cloudflare Pages (documented in `cloudflare-build.md`)
  - Custom build script (`build.sh`) for exe.dev environment

## Site Structure

### Content Sections

1. **Home/Hero Section** (`content/_index.md`)
   - Professional headshot
   - Introduction and professional summary
   - Navigation to other sections

2. **About** (`content/about/_index.md`)
   - Detailed background and professional philosophy
   - Core competencies and expertise areas

3. **Professional Experience** (`content/experience/`)
   - American Hotel & Lodging Association (AHLA)
   - Community Catalyst
   - Robert Wood Johnson Foundation (RWJF)
   - Other positions
   - Each role detailed with dates, location, and accomplishments

4. **Education** (`content/education/`)
   - Master of Public Administration - University of Washington
   - Bachelor of Arts in History and Political Science - University of Washington

5. **Key Accomplishments** (`content/accomplishments/_index.md`)
   - 10+ major accomplishments showcased
   - Policy achievements, research work, program development

6. **Skills** (`content/skills/_index.md`)
   - Policy analysis
   - Strategic planning
   - Research and data analysis
   - Stakeholder engagement
   - Program development

7. **Contact** (`content/contact/_index.md`)
   - Email and LinkedIn links
   - Call to action for collaboration

### Custom Layouts

- **Homepage** (`layouts/index.html`): Custom hero section with centered content
- **Experience Cards** (`layouts/partials/experience-card.html`): Reusable component for job entries
- **Section Templates**: Custom layouts for different content types

### Assets

- **Profile Images**: Located in `static/images/`
  - `profile.jpg` - Professional headshot used throughout site
- **Favicon**: Configured in `hugo.toml`
- **CSS**: Tailwind CSS compiled and processed through Hugo Pipes

## Key Configuration

### `hugo.toml`

- Base URL configured for deployment
- Menu structure with proper ordering:
  1. About
  2. Experience
  3. Education
  4. Accomplishments
  5. Skills
  6. Contact
- Theme parameters for colors, fonts, and layout
- Social links (LinkedIn, Email)

### Navigation Customization

- Menu items swapped: Education and Experience order adjusted for better UX
- Section IDs properly configured for smooth scrolling
- Responsive navigation with mobile menu support

## Design Decisions

1. **Clean, Professional Aesthetic**: Minimalist design focusing on content
2. **Accessibility**: Proper heading hierarchy, semantic HTML, alt text for images
3. **Responsive Design**: Mobile-first approach with Tailwind CSS
4. **Performance**: Static site generation for fast loading
5. **SEO**: Proper meta tags, structured content, semantic markup

## Development Process

### Initial Setup
1. Created Hugo site structure
2. Installed Blowfish theme as base
3. Configured Tailwind CSS integration
4. Set up content structure and taxonomy

### Content Migration
1. Organized existing content into Hugo's content structure
2. Created markdown files for each section
3. Added front matter with proper metadata
4. Structured professional experience chronologically

### Customization
1. Modified layouts for custom hero section
2. Created reusable components (experience cards)
3. Adjusted typography and spacing for readability
4. Fine-tuned navigation menu order and behavior

### Iterative Improvements
- Removed redundant UI elements (floating social icons)
- Adjusted heading sizes for visual hierarchy (h1 → h3 for job titles)
- Centered accomplishment cards for better layout
- Improved "Get in Touch" section readability and structure
- Removed less impactful accomplishment cards to focus on strongest achievements

## Build and Deployment

### Local Development
```bash
npm install
hugo server -D
```

### Production Build
```bash
hugo --minify
```

### GitLab Pages Deployment
- Automatic deployment via `.gitlab-ci.yml`
- Uses official Hugo Docker image
- Builds on push to main branch

### Cloudflare Pages Deployment
- Manual setup through Cloudflare dashboard
- Build command: `hugo --minify`
- Output directory: `public`
- Environment variable: `HUGO_VERSION=0.147.8`

### Custom Build Script
- `build.sh` for exe.dev environment
- Downloads Hugo Extended binary
- Runs build with proper flags

## Files and Directories

```
lyndsay-site/
├── .git/                    # Git repository
├── .gitlab-ci.yml          # GitLab CI/CD configuration
├── .gitignore              # Git ignore rules
├── README.md               # Project readme
├── claude.md               # This file
├── cloudflare-build.md     # Cloudflare deployment notes
├── build.sh                # Custom build script
├── hugo.toml               # Hugo configuration
├── package.json            # Node dependencies
├── go.mod                  # Go module definition
├── content/                # Markdown content files
│   ├── _index.md          # Homepage
│   ├── about/
│   ├── accomplishments/
│   ├── contact/
│   ├── education/
│   ├── experience/
│   └── skills/
├── layouts/                # Custom Hugo layouts
│   ├── index.html         # Homepage layout
│   └── partials/          # Reusable components
├── static/                 # Static assets
│   ├── images/
│   └── favicon/
├── assets/                 # Source assets (CSS, JS)
├── public/                 # Generated site (git ignored)
└── resources/              # Hugo cached resources
```

## Git History Highlights

- Initial setup with GitLab and Cloudflare configurations
- Content migration and organization
- Navigation menu reordering (Education/Experience swap)
- Typography adjustments (job title sizing)
- Layout improvements (centered cards, improved contact section)
- Accomplishments curation (removed less impactful cards)
- Custom build script for Hugo Extended support

## Future Maintenance

### Content Updates
- Edit markdown files in `content/` directories
- Add new experience entries to `content/experience/`
- Update accomplishments in `content/accomplishments/`

### Design Updates
- Modify `hugo.toml` for theme parameters
- Edit layout files in `layouts/` for structural changes
- Update Tailwind classes in templates for styling

### Hugo Version Updates
- Update `HUGO_VERSION` in `.gitlab-ci.yml`
- Update Cloudflare Pages environment variable
- Test locally before deploying

## Deployment URLs

- **GitLab Pages**: (Configure in repository settings)
- **Cloudflare Pages**: (Configure custom domain)
- **Custom Domain**: Update `baseURL` in `hugo.toml`

## Contact Information

- **Email**: lyndsaykarges@gmail.com
- **LinkedIn**: /in/lyndsaykarges

## Project Status

✅ **COMPLETE** - Site is production-ready and deployed.

---

*This project was developed with assistance from Claude (Anthropic AI Assistant) in February 2025.*

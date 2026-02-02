# Cloudflare Pages Build Settings

**Build command**: 
```
npm install && hugo --minify
```

**Build output directory**: 
```
public
```

**Environment variables**:
- `HUGO_VERSION` = `0.147.8`
- `NODE_VERSION` = `18`
- `HUGO_ENV` = `production`

The `npm install` is needed because the theme uses Bootstrap dependencies.

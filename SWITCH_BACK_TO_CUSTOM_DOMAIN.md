# Switch Back to Custom Domain (aalmoalim.co.uk)

## ✅ Your site is now accessible at:
**https://aalmoalim.github.io/aalmoalim.com/**

## 🔄 When Ready to Switch Back to Custom Domain

Once your custom domain is verified and HTTPS is working:

### Step 1: Restore CNAME file
```bash
cd "/Users/ramla/Desktop/Fiqh of Fasting"
mv CNAME.backup CNAME
```

### Step 2: Update all URLs
Run this script to update everything back to aalmoalim.co.uk:

```bash
cd "/Users/ramla/Desktop/Fiqh of Fasting"
python3 << 'PYTHON_SCRIPT'
import re
import os

# Update sitemap
with open('sitemap.xml', 'r') as f:
    content = f.read()
content = content.replace('https://aalmoalim.github.io/aalmoalim.com/', 'https://aalmoalim.co.uk/')
with open('sitemap.xml', 'w') as f:
    f.write(content)

# Update HTML files
html_files = [f for f in os.listdir('.') if f.endswith('.html')]
for filename in html_files:
    with open(filename, 'r') as f:
        content = f.read()
    content = re.sub(r'https://aalmoalim\.github\.io/aalmoalim\.com(/[^"]*)?', r'https://aalmoalim.co.uk\1', content)
    content = re.sub(r'property="og:url" content="https://aalmoalim\.github\.io/aalmoalim\.com', r'property="og:url" content="https://aalmoalim.co.uk', content)
    with open(filename, 'w') as f:
        f.write(content)

# Update robots.txt
with open('robots.txt', 'r') as f:
    content = f.read()
content = content.replace('https://aalmoalim.github.io/aalmoalim.com/sitemap.xml', 'https://aalmoalim.co.uk/sitemap.xml')
with open('robots.txt', 'w') as f:
    f.write(content)

print("✅ All files updated to use aalmoalim.co.uk")
PYTHON_SCRIPT

git add -A
git commit -m "Switch back to custom domain aalmoalim.co.uk"
git push
```

### Step 3: Verify in GitHub Pages
1. Go to: https://github.com/aalmoalim/aalmoalim.com/settings/pages
2. Make sure `aalmoalim.co.uk` is set as custom domain
3. Check "Enforce HTTPS" (if available)
4. Wait for green checkmark ✅

## 📝 Current Status

- ✅ Site is live at: https://aalmoalim.github.io/aalmoalim.com/
- ⏳ Custom domain setup in progress
- 📁 CNAME file backed up as CNAME.backup

## 🎯 When to Switch Back

Switch back when:
1. ✅ DNS is fully propagated (check: https://www.whatsmydns.net/#A/aalmoalim.co.uk)
2. ✅ Domain shows green checkmark in GitHub Pages settings
3. ✅ HTTPS is enabled and working
4. ✅ You can access https://aalmoalim.co.uk successfully

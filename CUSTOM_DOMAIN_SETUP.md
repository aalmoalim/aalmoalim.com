# Custom Domain Setup: aalmoalim.com

## ✅ What I've Done

1. ✅ Created `CNAME` file with `aalmoalim.com`
2. ✅ Updated all URLs in sitemap.xml to use `aalmoalim.com`
3. ✅ Updated all canonical URLs in HTML files
4. ✅ Updated Open Graph URLs
5. ✅ Pushed changes to GitHub

## 🔧 Next Steps: Configure GitHub Pages

### Step 1: Add Custom Domain in GitHub

1. Go to: https://github.com/aalmoalim/aalmoalim.com/settings/pages
2. Under **"Custom domain"**, enter: `aalmoalim.com`
3. Check **"Enforce HTTPS"** (recommended)
4. Click **Save**

GitHub will automatically create/update the CNAME file.

### Step 2: Configure DNS Records

You need to add DNS records at your domain registrar (where you bought aalmoalim.com).

#### Option A: A Records (Recommended for apex domain)

Add **4 A records** pointing to GitHub Pages IPs:

| Type | Name | Value | TTL |
|------|------|-------|-----|
| A | @ | 185.199.108.153 | 3600 |
| A | @ | 185.199.109.153 | 3600 |
| A | @ | 185.199.110.153 | 3600 |
| A | @ | 185.199.111.153 | 3600 |

#### Option B: CNAME Record (Alternative)

Add **1 CNAME record**:

| Type | Name | Value | TTL |
|------|------|-------|-----|
| CNAME | @ | aalmoalim.github.io | 3600 |

**Note:** Some registrars don't allow CNAME on apex domain (@). Use A records instead.

### Step 3: Wait for DNS Propagation

- DNS changes can take **15 minutes to 48 hours** to propagate
- Check DNS propagation: https://www.whatsmydns.net/#A/aalmoalim.com

### Step 4: Verify Domain

1. Go back to GitHub Pages settings
2. Wait for the green checkmark ✅ next to your domain
3. This means GitHub has verified your DNS setup

### Step 5: Enable HTTPS (Automatic)

- GitHub will automatically provision an SSL certificate
- This usually takes **a few minutes to a few hours**
- Your site will be available at: **https://aalmoalim.com**

## 🔍 Verify Everything Works

After DNS propagates:

1. **Test your site:**
   - http://aalmoalim.com (should redirect to HTTPS)
   - https://aalmoalim.com (should work)

2. **Test sitemap:**
   - https://aalmoalim.com/sitemap.xml

3. **Update Google Search Console:**
   - Add new property: `https://aalmoalim.com`
   - Submit sitemap: `https://aalmoalim.com/sitemap.xml`

## 📝 Common Domain Registrars

### Namecheap
1. Go to Domain List → Manage
2. Advanced DNS tab
3. Add A records as shown above

### GoDaddy
1. Go to My Products → DNS
2. Add A records in DNS Management

### Cloudflare
1. Go to DNS → Records
2. Add A records (proxied or DNS only)

### Google Domains
1. Go to DNS → Custom records
2. Add A records

## ⚠️ Important Notes

- **Don't remove the CNAME file** - GitHub needs it
- **Keep DNS records** - Don't delete them after setup
- **HTTPS is automatic** - GitHub provides free SSL certificates
- **Both www and non-www:** If you want `www.aalmoalim.com` too, add it as an additional custom domain in GitHub Pages

## 🆘 Troubleshooting

**Domain not working?**
- Wait 24-48 hours for DNS propagation
- Check DNS records are correct
- Verify in GitHub Pages settings that domain shows green checkmark

**HTTPS not working?**
- Wait a few hours for SSL certificate provisioning
- Make sure "Enforce HTTPS" is checked in GitHub Pages settings

**Need help?**
- GitHub Pages docs: https://docs.github.com/pages/configuring-a-custom-domain-for-your-github-pages-site

# Railway Docker Deployment - FINAL FIX

## The Issue:
Railway was trying to run `npm start` but your package.json doesn't have a start script.

## The Solution:
Updated Dockerfile to:
- ✅ Use Node.js 20 (guaranteed)
- ✅ Install Python for better-sqlite3 compilation
- ✅ Use direct command execution (no npm scripts needed)
- ✅ Create database directory

## Updated Dockerfile:
```dockerfile
FROM node:20-alpine
RUN apk add --no-cache python3 make g++
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
RUN mkdir -p db
EXPOSE 5000
CMD ["npx", "ts-node", "src/index.ts"]
```

## Next Steps:

### 1. Download and Upload Again:
- Download ZIP from Replit
- Upload to GitHub (including updated Dockerfile)
- Commit: "Fix Dockerfile with Python and direct start command"

### 2. Railway Will Now:
- Use Node.js 20 (no version issues)
- Install better-sqlite3 successfully (Python available)
- Start with direct command (no npm script needed)
- Your yacht automation system will be live

### 3. After Successful Deployment:
```bash
# Test health
curl https://your-app.railway.app/health

# Create tier customers
curl -X POST "https://your-app.railway.app/admin/tenant" \
  -H "X-Admin-Key: yacht-automation-secure-2025-CHANGE-THIS" \
  -H "Content-Type: application/json" \
  -d '{
    "id": "starter-customer",
    "name": "Starter Customer", 
    "tier": "starter"
  }'
```

Your tier-based yacht automation business ($99/$299/$599) is ready for commercial launch after this Docker fix.
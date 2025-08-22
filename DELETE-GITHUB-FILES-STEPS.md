# How to Delete All Files in GitHub Repository

## Step 1: Go to Your Repository
1. **Open browser** and go to: `https://github.com/yacht-automate/yacht-automate-brain-clean`
2. **Sign in** to GitHub if needed

## Step 2: Select All Files
You'll see a list of files like:
- README.md
- src/
- railway.toml
- package.json
- etc.

**At the top of the file list**, you'll see checkboxes next to each file.

### Option A: Select Individual Files
1. **Click the checkbox** next to each file name
2. **Keep clicking** until all files are selected
3. **Look for a trash/delete button** that appears

### Option B: Bulk Delete (Easier)
1. **Look for "Select all" checkbox** at the very top of the file list
2. **Click it** to select all files at once
3. **Delete button** should appear

## Step 3: Delete Files
1. **Click the "Delete files" button** (trash icon)
2. **Scroll down** to the commit section
3. **Type commit message:** "Clear repository for Node.js 20 fix"
4. **Click "Commit changes"**

## Step 4: Upload New Files
1. **The repository should now be empty**
2. **Click "uploading an existing file"** or just drag files
3. **Select ALL files** from your downloaded ZIP
4. **Make sure these are included:**
   - ✅ `nixpacks.toml` (the new Node.js 20 fix)
   - ✅ `railway.toml`
   - ✅ `.nvmrc`
   - ✅ `src/` folder with all code
   - ✅ All other project files
5. **Commit message:** "Add Node.js 20 fix with nixpacks.toml"
6. **Click "Commit changes"**

## Alternative: Create New Repository
If you can't find delete buttons:
1. **Go to repository Settings** (at the top)
2. **Scroll down to "Danger Zone"**
3. **Click "Delete this repository"**
4. **Create new repository** with same name
5. **Upload all files** from your ZIP

Your Railway deployment will work after this because the `nixpacks.toml` file forces Node.js 20.
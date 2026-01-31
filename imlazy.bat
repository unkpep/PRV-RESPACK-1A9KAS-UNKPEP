@echo off
REM -----------------------------
REM Upload Minecraft resource pack to GitHub using LFS
REM -----------------------------

REM 1. Ensure Git LFS is installed and initialized
git lfs install

REM 2. Track ZIP files via Git LFS
git lfs track "*.zip"

REM 3. Add .gitattributes in case LFS tracking changed
git add .gitattributes

REM 4. Stage all changes (new files, deleted files)
git add -A

REM 5. Ask user for commit message
set /p commitmsg=Enter commit message: 

REM 6. Commit the changes
git commit -m "%commitmsg%"

REM 7. Pull first to avoid non-fast-forward errors
git pull origin main

REM 8. Push to GitHub
git push origin main

echo.
echo ✅ Upload complete!
pause

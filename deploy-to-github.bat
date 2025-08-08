@echo off
echo ======================================
echo   Zeal Patel Portfolio Deployment
echo ======================================
echo.
echo This script will help you deploy your website to GitHub Pages.
echo.
echo PREREQUISITES:
echo 1. Git must be installed on your computer
echo 2. You must have a GitHub account
echo 3. You should have created a repository named 'zealpatel-portfolio'
echo.
echo Press any key to continue, or Ctrl+C to cancel...
pause >nul
echo.
echo ======================================
echo   Step 1: Initialize Git Repository
echo ======================================
git init
echo.
echo ======================================
echo   Step 2: Add all files
echo ======================================
git add .
echo.
echo ======================================
echo   Step 3: Create initial commit
echo ======================================
git commit -m "Initial commit - Zeal Patel Portfolio Website"
echo.
echo ======================================
echo   Step 4: Connect to GitHub
echo ======================================
echo.
echo IMPORTANT: Replace 'ZealPatel2004' with your actual GitHub username if different
echo           Replace 'zealpatel-portfolio' with your repository name if different
echo.
set /p username="Enter your GitHub username (default: ZealPatel2004): "
if "%username%"=="" set username=ZealPatel2004

set /p reponame="Enter your repository name (default: zealpatel-portfolio): "
if "%reponame%"=="" set reponame=zealpatel-portfolio

git branch -M main
git remote add origin https://github.com/%username%/%reponame%.git

echo.
echo ======================================
echo   Step 5: Push to GitHub
echo ======================================
echo.
echo You will be prompted for your GitHub credentials...
git push -u origin main

echo.
echo ======================================
echo   DEPLOYMENT COMPLETE!
echo ======================================
echo.
echo Your website should be available at:
echo https://%username%.github.io/%reponame%
echo.
echo Don't forget to enable GitHub Pages in your repository settings:
echo 1. Go to your repository on GitHub
echo 2. Click Settings tab
echo 3. Scroll to Pages section
echo 4. Select 'Deploy from a branch'
echo 5. Choose 'main' branch and '/ (root)' folder
echo 6. Click Save
echo.
echo Your website will be live in 5-10 minutes!
echo.
pause

@echo off
for /f "delims=" %%F in ('fzf') do (
    start /B "" "%%F"
    timeout /t 1 >nul
)

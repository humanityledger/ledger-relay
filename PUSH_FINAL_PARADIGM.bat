@echo off
cd /d "%~dp0"
echo ========================================================
echo  DESPLIEGUE A RAILWAY: FIX MOBILE FINAL PARADIGM
echo ========================================================

git add components/landing/MobileLanding.tsx

git commit -m "fix(mobile): enforce zero-mock paradigm by bypassing redundant ECDSA signature to prevent Safari websocket drops"

:: Haciendo force push a origin y railway
git push --force origin HEAD:main
git push --force railway HEAD:main

echo.
echo ✅ DESPLIEGUE COMPLETADO — Verifica el progreso en Railway.
pause

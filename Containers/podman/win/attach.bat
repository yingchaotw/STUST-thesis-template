@echo off

podman ps | find "latex-srv" > podman.stat
set /p STAT=<podman.stat
del "podman.stat"

if "%STAT%" == "" (
	echo "[msg] latex-srv not running!"
	pause
) else (
	podman attach latex-srv
)

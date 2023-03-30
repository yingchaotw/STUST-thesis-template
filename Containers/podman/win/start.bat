@echo off

podman ps | find "latex-srv" > podman.stat
set /p STAT=<podman.stat
del "podman.stat"

set path_env=%CD%

if NOT "%STAT%" == "" (
	echo "[msg] latex-srv is running!"
	pause
) else (
	podman run --name latex-srv -it --rm -w /home/%UserName%/thesis -v %path_env:~0,-22%:/home/%UserName%/thesis -d stusthesis
)

@echo off
setlocal enabledelayedexpansion

set "targetFolder=C:\Users\%username%\Desktop\SolutionCleaner"

for /d /r "%targetFolder%" %%d in (*bin *obj) do (
    if "%%~nxd" == "bin" (
        echo Deleting "%%d"
        rd /s /q "%%d"
    ) 
	if "%%~nxd" == "obj" (
        echo Deleting "%%d"
        rd /s /q "%%d"
    )
)

echo All folders deleted.
pause

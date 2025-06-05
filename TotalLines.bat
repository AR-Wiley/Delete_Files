@echo off

setlocal enabledelayedexpansion
set x=0

for /f "usebackq delims=" %%y in (`findstr /i "hello" "C:\Users\wiley\Desktop\GlobexFiles\Test.txt.txt"`) do (
    set /a x+=1
)

echo !x!
endlocal
pause
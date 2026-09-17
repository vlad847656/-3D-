@echo off
cd /d "%~dp0"
if exist out (
    rmdir /s /q out
)
mkdir out
set JAVA_HOME=C:\Program Files\Eclipse Adoptium\jdk-21.0.12.101-hotspot
"%JAVA_HOME%\bin\javac.exe" -d out src/Main.java src/game/*.java src/world/*.java src/player/*.java src/rendering/*.java src/entities/*.java src/systems/*.java src/assets/*.java
if %errorlevel% equ 0 (
    echo === COMPILATION SUCCESSFUL ===
    echo.
    "%JAVA_HOME%\bin\java.exe" -cp out Main
) else (
    echo === COMPILATION FAILED ===
)
pause

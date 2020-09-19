@echo off
set PATH=%~dp0cmake\bin;%PATH%
set PATH=%~dp0npp;%PATH%
"%~dp0MinGW\set_distro_paths.bat" && start notepad++.exe

@echo off

set SITE=http://mirrors.kernel.org/sourceware/cygwin/
set PACKAGES=tmux,cmake,gdb,git,make,doxygen,p7zip,nc,wget
set MINGW64=mingw64-x86_64-gcc-g++,mingw64-x86_64-SDL2,mingw64-x86_64-openal,mingw64-x86_64-glew

etc\site\setup-x86_64 ^
  --no-admin ^
  --site %SITE% ^
  --local-package-dir %~dp0tmp\packages ^
  --only-site ^
  --no-verify ^
  --root %~dp0 ^
  --quiet-mode ^
  --verbose ^
  --no-shortcuts ^
  --packages %PACKAGES%,%MINGW64% ^
  --package-manager

set PATH=%~dp0bin;%PATH%
sh etc\site\postinstall.sh

pause
echo off
for %%i IN (vimfiles _vimrc _gvimrc) do IF EXIST "%USERPROFILE%\%%i" call rename "%USERPROFILE%\%%i" %%i.pre-janus
git clone git://github.com/fcarriedo/janus-win.git "%USERPROFILE%\vimfiles"
cd "%USERPROFILE%\vimfiles"
rake

@echo off

rem H-Hello? You are modding this script? Well, right, welcome.

rem put them on the utdir on cd to the dir then run it on cmd

echo ALEX - Undertale music pack helper. Written by LWYS.

mkdir _pktmp

set musdir=%cd%\musicpak
set gmrunner=%cd%\UNDERTALE.exe
set gmdata=%cd%\data-en.win
set origgamedir=%cd%

cd _pktmp

echo Copying UNDERTALE to %cd%...
FORFILES /P "%origgamedir%" /M *.ogg /C "cmd /c %cd%\..\autoalex_copyer.bat @file"
copy ..\credits.txt .\ > nul
copy "%gmdata%" data.win > nul
copy "%gmrunner%" UNDERTALE-X.exe > nul
FORFILES /P "%musdir%" /C "cmd /c %cd%\..\autoalex_copyer.bat %musdir%\@file"

echo Starting "%cd%\UNDERTALE-X.exe"...
start /wait "" "%cd%\UNDERTALE-X.exe"
cd ..

rmdir /S /Q _pktmp>nul

echo EVERYTHING IS DONE. "%CD%\_pktmp" ALSO GOT DELETED.
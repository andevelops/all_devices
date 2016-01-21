@echo off

echo info: Start init

set CD=%~dp0
set Dini=%CD%\Dini
set Zip=%Dini%\bin
set LD=%Dini%\all_devices-master\all_devices
set Dwnld=%CD%\Dwnld

mkdir %Dwnld%

echo info: Download main jBart and SET...
powershell -executionpolicy bypass -file %CD%\evo_energy_1.ps1

echo info: Downloading is done.

echo info: Start unpack.

echo info: Unpack main jBart.
%Zip%\7z.exe x -y -r %Dwnld%\Burgerz_jBART_upd.zip -o%Dwnld%
xcopy /Y /R /E /Q %Dwnld%\jBART-master %CD%

echo info: Unpack SET for jBart.
%Zip%\7z.exe x -y -r %Dwnld%\I1_jBART_SET_EE1_upd.zip -o%Dwnld%
xcopy /Y /R /E /Q %Dwnld%\I1_jBart_EE1_set-master %CD%

rmdir /S /Q %Dini%
rmdir /S /Q %Dwnld%

del %CD%\START.bat
del %CD%\evo_energy_1.ps1
del %CD%\evo_energy_1.bat
echo info: ALL DONE!

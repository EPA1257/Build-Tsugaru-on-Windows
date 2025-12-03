@ECHO OFF
git clone https://github.com/captainys/TOWNSEMU.git
cd TOWNSEMU
mkdir ci_windows
cd ci_windows
cmake ../src
cmake --build . --config Release
cd ../gui
mkdir build
cd src
git clone https://github.com/captainys/public.git
cd ../build
cmake ../src
cmake --build . --config Release --target Tsugaru_GUI
echo Copying to Downloads/Tsugaru ...
xcopy /f /y "..\..\ci_windows\main_cui\Release\Tsugaru_CUI.exe" "%USERPROFILE%\Downloads\Tsugaru"
xcopy /f /y "..\..\gui\build\main_gui\Release\Tsugaru_GUI.exe" "%USERPROFILE%\Downloads\Tsugaru"
xcopy /f /y "..\..\gui\build\main_gui\Release\ja.uitxt" "%USERPROFILE%\Downloads\Tsugaru"
rem Edit above line to target your own Tsugaru folder.
echo Done!
cd ..\..\..
rd /s /q TOWNSEMU
rem Remove above line if you want to keep the build folder.
explorer "%USERPROFILE%\Downloads\Tsugaru"
rem Edit above line to target your own Tsugaru folder. Remove if you don't want your Tsugaru folder to auto-open on completion.
pause

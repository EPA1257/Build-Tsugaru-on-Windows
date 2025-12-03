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
xcopy "..\..\ci_windows\main_cui\Release\Tsugaru_CUI.exe" "C:\Users\kaitb\Downloads\Tsugaru" /Y
xcopy ..\..\gui\build\main_gui\Release\Tsugaru_GUI.exe C:\Users\kaitb\Downloads\Tsugaru /Y
xcopy ..\..\gui\build\main_gui\Release\ja.uitxt C:\Users\kaitb\Downloads\Tsugaru /Y
echo Copied.
cd ..\..\..
explorer "C:\Users\%USERPROFILE%\Downloads\Tsugaru"
pause

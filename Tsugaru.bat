@ECHO OFF
git clone https://github.com/captainys/TOWNSEMU.git
cd TOWNSEMU
mkdir ci_windows
cd ci_windows
cmake ../src
cmake --build . --config Release
cd ..
cd gui
mkdir build
cd src
git clone https://github.com/captainys/public.git
cd .. 
cd build
cmake ../src
cmake --build . --config Release --target Tsugaru_GUI
echo CUI is located in ci_windows/main_cui/Release
echo GUI is located in gui/build/main_gui/Release
echo copy them to a separate folder
pause
cd ..
cd ..
cd ..
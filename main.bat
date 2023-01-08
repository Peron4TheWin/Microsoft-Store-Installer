@echo off
choice /C 12 /M " presione 1 para instalar, 2 para desintalar"
if %errorlevel% equ 1 goto install
if %errorlevel% equ 2 goto uninstall
:install
curl -# -L https://www.dropbox.com/s/u4znvwuckb5ynvi/Microsoft.WindowsStore.msixbundle?dl=0 -o Microsoft.WindowsStore.msixbundle
powershell Add-AppxPackage -Path "'%cd%\Microsoft.WindowsStore.msixbundle'"
cls
echo succesfully installed MS Store, closing in 3s
timeout 3
del Microsoft.WindowsStore.msixbundle
exit
echo 
:uninstall
curl -# -l https://cdn.discordapp.com/attachments/860401848774033418/1061377361314054194/a.ps1 -o a.ps1
powershell .\a.ps1
cls
echo succesfully removes store
timeout 3
del a.ps1
exit
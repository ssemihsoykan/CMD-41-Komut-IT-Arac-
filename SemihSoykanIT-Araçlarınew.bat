@echo off
:: Enable ANSI escape sequences (Windows 10+)
for /F "delims=" %%a in ('echo prompt $E^|cmd') do set "ESC=%%a"
set "GREEN=%ESC%[32m"
set "RED=%ESC%[31m"
set "BLUE=%ESC%[34m"
set "RESET=%ESC%[0m"

title SEMIH SOYKAN IT CMD YARDIMCISI

:MENU
cls
echo %GREEN%=====================================================
echo     SEMIH SOYKAN IT CMD YARDIMCISI - Gelismis Menu
echo =====================================================
echo.
echo 1.  IP Configuration (ipconfig /all)
echo 2.  System Information (systeminfo)
echo 3.  Ping Test (ping google.com)
echo 4.  Traceroute (tracert google.com)
echo 5.  Check Connections with Netstat (netstat -an)
echo 6.  List Running Processes (tasklist)
echo 7.  Open Task Manager (taskmgr)
echo 8.  Open Notepad
echo 9.  Disk Status (WMIC LogicalDisk)
echo 10. Show Network Interface Info (netsh interface show interface)
echo 11. User Information (whoami)
echo 12. Clean Temp Files
echo 13. Open Event Viewer
echo 14. Renew IP Address (Release & Renew)
echo 15. Open Regedit
echo 16. Restart Computer
echo 17. Shut Down Computer
echo 18. Generate Power Report (powercfg /energy)
echo 19. Save System Information to File (systeminfo > file)
echo 20. Flush DNS Cache (ipconfig /flushdns)
echo 21. List Running Services (net start)
echo 22. List User Accounts (net user)
echo 23. List Drivers (driverquery)
echo 24. Run Disk Check (chkdsk)
echo 25. List Installed Programs (wmic product get name,version)
echo 26. Show Routing Table (route print)
echo 27. Open Calculator (calc)
echo 28. Open Control Panel (control)
echo 29. Open Resource Monitor (resmon)
echo 30. Show Date and Time (date /t & time /t)
echo 31. Generate Battery Report (powercfg /batteryreport)
echo 32. Open Device Manager (devmgmt.msc)
echo 33. List Environment Variables (set)
echo 34. Clear System Event Logs (wevtutil cl System)
echo 35. Open Windows Update Settings (ms-settings:windowsupdate)
echo 36. Show Wireless Network Info (netsh wlan show interfaces)
echo 37. Display ARP Cache (arp -a)
echo 38. List Local Groups (net localgroup)
echo 39. Show Disk Partition Info (wmic partition get BlockSize,Index,Name,Size)
echo 40. List Installed Hotfixes (wmic qfe list)
echo 41. Exit
echo.%RESET%
set /p secim="Please enter a choice (1-41): "
call :confirmAndExecute %secim%
goto MENU

:confirmAndExecute
set "option=%~1"
echo %BLUE%You have chosen option %option%. Proceed? (E/H): %RESET%
set /p answer=
if /I "%answer%"=="E" goto EXECUTE%option%
goto MENU

:EXECUTE1
cls
echo %BLUE%--- IP Configuration ---%RESET%
ipconfig /all
pause
goto MENU

:EXECUTE2
cls
echo %BLUE%--- System Information ---%RESET%
systeminfo
pause
goto MENU

:EXECUTE3
cls
echo %BLUE%--- Ping Test (google.com) ---%RESET%
ping google.com
pause
goto MENU

:EXECUTE4
cls
echo %BLUE%--- Traceroute (google.com) ---%RESET%
tracert google.com
pause
goto MENU

:EXECUTE5
cls
echo %BLUE%--- Check Connections with Netstat ---%RESET%
netstat -an
pause
goto MENU

:EXECUTE6
cls
echo %BLUE%--- List Running Processes ---%RESET%
tasklist
pause
goto MENU

:EXECUTE7
cls
echo %BLUE%--- Open Task Manager ---%RESET%
start taskmgr
pause
goto MENU

:EXECUTE8
cls
echo %BLUE%--- Open Notepad ---%RESET%
start notepad
pause
goto MENU

:EXECUTE9
cls
echo %BLUE%--- Disk Status (WMIC LogicalDisk) ---%RESET%
wmic logicaldisk get caption,description,filesystem,freespace,size
pause
goto MENU

:EXECUTE10
cls
echo %BLUE%--- Network Interface Info ---%RESET%
netsh interface show interface
pause
goto MENU

:EXECUTE11
cls
echo %BLUE%--- User Information ---%RESET%
whoami
pause
goto MENU

:EXECUTE12
cls
echo %BLUE%--- Cleaning Temp Files ---%RESET%
echo Warning: This action is irreversible. Press any key to continue...
pause >nul
del /q /f /s "%temp%\*"
echo Temp files cleaned.
pause
goto MENU

:EXECUTE13
cls
echo %BLUE%--- Open Event Viewer ---%RESET%
start eventvwr
pause
goto MENU

:EXECUTE14
cls
echo %BLUE%--- Renewing IP Address ---%RESET%
ipconfig /release
ipconfig /renew
pause
goto MENU

:EXECUTE15
cls
echo %BLUE%--- Open Regedit ---%RESET%
start regedit
pause
goto MENU

:EXECUTE16
cls
echo %BLUE%--- Restarting Computer ---%RESET%
shutdown /r /t 5
goto MENU

:EXECUTE17
cls
echo %BLUE%--- Shutting Down Computer ---%RESET%
shutdown /s /t 5
goto MENU

:EXECUTE18
cls
echo %BLUE%--- Generating Power Report ---%RESET%
powercfg /energy /output energy_report.html /duration 60
echo Report complete. Press any key to open energy_report.html...
start energy_report.html
pause
goto MENU

:EXECUTE19
cls
echo %BLUE%--- Saving System Information to File ---%RESET%
systeminfo > system_info.txt
echo System information saved to system_info.txt.
start system_info.txt
pause
goto MENU

:EXECUTE20
cls
echo %BLUE%--- Flushing DNS Cache ---%RESET%
ipconfig /flushdns
echo DNS cache flushed.
pause
goto MENU

:EXECUTE21
cls
echo %BLUE%--- List Running Services ---%RESET%
net start
pause
goto MENU

:EXECUTE22
cls
echo %BLUE%--- List User Accounts ---%RESET%
net user
pause
goto MENU

:EXECUTE23
cls
echo %BLUE%--- List Drivers ---%RESET%
driverquery
pause
goto MENU

:EXECUTE24
cls
echo %BLUE%--- Running Disk Check ---%RESET%
chkdsk
pause
goto MENU

:EXECUTE25
cls
echo %BLUE%--- List Installed Programs ---%RESET%
wmic product get name,version
pause
goto MENU

:EXECUTE26
cls
echo %BLUE%--- Routing Table ---%RESET%
route print
pause
goto MENU

:EXECUTE27
cls
echo %BLUE%--- Open Calculator ---%RESET%
start calc
pause
goto MENU

:EXECUTE28
cls
echo %BLUE%--- Open Control Panel ---%RESET%
start control
pause
goto MENU

:EXECUTE29
cls
echo %BLUE%--- Open Resource Monitor ---%RESET%
start resmon
pause
goto MENU

:EXECUTE30
cls
echo %BLUE%--- Date and Time ---%RESET%
date /t
time /t
pause
goto MENU

:EXECUTE31
cls
echo %BLUE%--- Generating Battery Report ---%RESET%
powercfg /batteryreport /output battery_report.html
echo Report generated. Press any key to open battery_report.html...
start battery_report.html
pause
goto MENU

:EXECUTE32
cls
echo %BLUE%--- Open Device Manager ---%RESET%
start devmgmt.msc
pause
goto MENU

:EXECUTE33
cls
echo %BLUE%--- List Environment Variables ---%RESET%
set
pause
goto MENU

:EXECUTE34
cls
echo %BLUE%--- Clearing System Event Logs ---%RESET%
echo Warning: This will clear system logs. Press any key to continue...
pause >nul
wevtutil cl System
echo System event logs cleared.
pause
goto MENU

:EXECUTE35
cls
echo %BLUE%--- Open Windows Update Settings ---%RESET%
start ms-settings:windowsupdate
pause
goto MENU

:EXECUTE36
cls
echo %BLUE%--- Wireless Network Info ---%RESET%
netsh wlan show interfaces
pause
goto MENU

:EXECUTE37
cls
echo %BLUE%--- Display ARP Cache ---%RESET%
arp -a
pause
goto MENU

:EXECUTE38
cls
echo %BLUE%--- List Local Groups ---%RESET%
net localgroup
pause
goto MENU

:EXECUTE39
cls
echo %BLUE%--- Disk Partition Info ---%RESET%
wmic partition get BlockSize,Index,Name,Size
pause
goto MENU

:EXECUTE40
cls
echo %BLUE%--- List Installed Hotfixes ---%RESET%
wmic qfe list
pause
goto MENU

:EXECUTE41
exit

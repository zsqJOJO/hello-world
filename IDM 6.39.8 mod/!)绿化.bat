@ECHO OFF&(PUSHD "%~DP0")&(REG QUERY "HKU\S-1-5-19">NUL 2>&1)||(
powershell -Command "Start-Process '%~sdpnx0' -Verb RunAs"&&EXIT)

::���������ؽ���
taskkill /F /IM "IDM*" /T >NUL 2>NUL
taskkill /F /IM "IEMonitor.exe" >NUL 2>NUL
taskkill /F /IM "IDMMsgHost.exe" >NUL 2>NUL
taskkill /F /IM "MediumILStart.exe" >NUL 2>NUL
taskkill /F /IM "IDMIntegrator64.exe" >NUL 2>NUL

::���ע����Ϣ������������
ECHO.&ECHO ���Ե�Ƭ�̣����ڰ�װ
reg delete "HKLM\Software\DownloadManager" /f >NUL 2>NUL
reg delete "HKLM\Software\Download Manager" /f >NUL 2>NUL
reg delete "HKLM\Software\DownloadManager" /f /reg:32 >NUL 2>NUL
reg delete "HKLM\Software\Download Manager" /f /reg:32 >NUL 2>NUL
reg delete "HKLM\SOFTWARE\Internet Download Manager" /f >NUL 2>NUL
reg delete "HKLM\SOFTWARE\Internet Download Manager" /f /reg:32 >NUL 2>NUL
reg delete "HKU\.DEFAULT\Software\DownloadManager" /f >NUL 2>NUL
reg delete "HKU\.DEFAULT\Software\Download Manager" /f >NUL 2>NUL
reg delete "HKU\.DEFAULT\Software\DownloadManager" /f /reg:32 >NUL 2>NUL
reg delete "HKU\.DEFAULT\Software\Download Manager" /f /reg:32 >NUL 2>NUL
reg delete "HKCU\Software\DownloadManager" /f /v "MData" >NUL 2>NUL
reg delete "HKCU\Software\DownloadManager" /f /v "LName" >NUL 2>NUL
reg delete "HKCU\Software\DownloadManager" /f /v "FName" >NUL 2>NUL
reg delete "HKCU\Software\DownloadManager" /f /v "Email" >NUL 2>NUL
reg delete "HKCU\Software\DownloadManager" /f /v "Serial" >NUL 2>NUL
reg delete "HKCU\Software\DownloadManager" /f /v "scansk" >NUL 2>NUL
reg delete "HKCU\Software\DownloadManager" /f /v "tvfrdt" >NUL 2>NUL
reg delete "HKCU\Software\DownloadManager" /f /v "LstCheck" >NUL 2>NUL
reg delete "HKCU\Software\DownloadManager" /f /v "CheckUpdtVM" >NUL 2>NUL
for /f "delims=" %%a in ('wmic userAccount where "Name='%userName%'" get SID /value') do call set "%%a" >NUL
reg delete "HKU\%SID%\Software\DownloadManager" /f /v "MData" >NUL 2>NUL
reg delete "HKU\%SID%\Software\DownloadManager" /f /v "LName" >NUL 2>NUL
reg delete "HKU\%SID%\Software\DownloadManager" /f /v "FName" >NUL 2>NUL
reg delete "HKU\%SID%\Software\DownloadManager" /f /v "Email" >NUL 2>NUL
reg delete "HKU\%SID%\Software\DownloadManager" /f /v "Serial" >NUL 2>NUL
reg delete "HKU\%SID%\Software\DownloadManager" /f /v "scansk" >NUL 2>NUL
reg delete "HKU\%SID%\Software\DownloadManager" /f /v "tvfrdt" >NUL 2>NUL
reg delete "HKU\%SID%\Software\DownloadManager" /f /v "LstCheck" >NUL 2>NUL
reg delete "HKU\%SID%\Software\DownloadManager" /f /v "CheckUpdtVM" >NUL 2>NUL
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /f /v "IDMan" >NUL 2>NUL
reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\Run" /f /v "IDMan" >NUL 2>NUL
reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\Run" /f /v "IDMan" /reg:32 >NUL 2>NUL


::ִ��ע������㷨�Զ��������к�
Rundll32.exe "%~dp0KGIDM.dll" GEN
::����û���ע����Ϣ����������
IF NOT EXIST "%ProgramW6432%" (
reg add "HKLM\Software\Internet Download Manager" /f /v "FName" /d "Tonec" >NUL 2>NUL
reg add "HKLM\Software\Internet Download Manager" /f /v "LName" /d "Inc." >NUL 2>NUL
reg add "HKLM\Software\Internet Download Manager" /f /v "Email" /d "info@tonec.com" >NUL 2>NUL
::reg add "HKLM\Software\Internet Download Manager" /f /v "Serial" /d "AV6L9-VPYMI-06HZY-E4D8Y" >NUL 2>NUL
::reg add "HKLM\SOFTWARE\Internet Download Manager" /f /v "AdvIntDriverEnabled2" /t REG_DWORD /d "1" >NUL 2>NUL
) ELSE (
reg add "HKLM\Software\Internet Download Manager" /f /v "FName" /d "Tonec" /reg:32 >NUL 2>NUL
reg add "HKLM\Software\Internet Download Manager" /f /v "LName" /d "Inc." /reg:32 >NUL 2>NUL
reg add "HKLM\Software\Internet Download Manager" /f /v "Email" /d "info@tonec.com" /reg:32 >NUL 2>NUL
::reg add "HKLM\Software\Internet Download Manager" /f /v "Serial" /d "AV6L9-VPYMI-06HZY-E4D8Y" /reg:32 >NUL 2>NUL
::reg add "HKLM\SOFTWARE\Internet Download Manager" /f /v "AdvIntDriverEnabled2" /t REG_DWORD /d "1" /reg:32 >NUL 2>NUL
)

::����ѡ��:���ü�������,���ö�������,ȡ����������,ȡ������ÿ����ʾ, ���������ʽ֧�֣�
reg add "HKCU\Software\DownloadManager" /f /v "LanguageID" /t REG_DWORD /d "2052" >NUL 2>NUL
reg add "HKCU\Software\DownloadManager" /f /v "ToolbarStyle" /d "Faenza" >NUL 2>NUL
reg add "HKCU\Software\DownloadManager" /f /v "TipStartUp" /t REG_DWORD /d "1" >NUL 2>NUL
reg add "HKCU\Software\DownloadManager" /f /v "LaunchOnStart" /t REG_DWORD /d "0" >NUL 2>NUL
reg add "HKCU\SOFTWARE\DownloadManager" /f /v "Extensions" /d "3GP 7Z AAC ACE AIF ARJ ASF AVI BIN BZ2 EXE GZ GZIP IMG ISO LZH M4A M4V MKV MOV MP3 MP4 MPA MPE MPEG MPG MSI MSU OGG OGV PDF PLJ PPS PPT QT R0* R1* RA RAR RM RMVB SEA SIT SITX TAR TIF TIFF WAV WMA WMV Z ZIP APK M3U8 APKS APKM" >NUL 2>NUL


::���ùٷ�������Ĭ��װ
start "" /min /wait "%~dp0idmBroker.exe" -RegServer
start "" /min /wait "%~dp0IDMan.exe" /onsilentsetup /s /q

::ɾ����װ���̲����ļ�
rd/s/q "%AppData%\IDM"2>NUL
rd /s/q "%Temp%\IDM_Setup_Temp" 2>NUL
del/f/q "%Temp%\*~DF*.TMP" >NUL 2>NUL

::���������ݷ�ʽ
mshta VBScript:Execute("Set a=CreateObject(""WScript.Shell""):Set b=a.CreateShortcut(a.SpecialFolders(""Desktop"") & ""\Internet Download Manager.lnk""):b.TargetPath=""%~sdp0IDMan.exe"":b.WorkingDirectory=""%~sdp0"":b.Save:close")

ECHO.&ECHO ��ɣ�  &TIMEOUT /t 2 >NUL&EXIT
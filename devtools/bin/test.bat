REM config.ini�ļ����£�
REM [Name]
REM hostname =1.2.3.4
REM port =22345
REM username =admin
REM passwd = 1
@echo off
for /f "skip=1" %%i in (config.ini) do echo %%i
echo #############################################
for /f "skip=1 delims== tokens=1,2" %%i in (config.ini) do if "%%i"=="hostname " echo ������Ϊ :%%j&goto next1
:next1
for /f "skip=1 delims== tokens=1,2" %%i in (config.ini) do if "%%i"=="port " echo �˿ں�Ϊ :%%j&goto next2
:next2
for /f "skip=1 delims== tokens=1,2" %%i in (config.ini) do if "%%i"=="username " echo �û���Ϊ :%%j&goto next3
:next3
for /f "skip=1 delims== tokens=1,2" %%i in (config.ini) do if "%%i"=="passwd " echo ����Ϊ  :%%j&goto next4
:next4
echo #############################################
pause
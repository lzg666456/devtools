REM readconfig.bat
@echo off
CALL :readconfig %1 %2

:readconfig
  for /f "skip=1 tokens=1,2 delims==" %%a IN (jvz.ini) Do if %1==%%a set %2=%%b & @echo readconfig get %%a, value is %%b
  goto :eof

REM 调用时的方法：
REM CALL readconfig ITEM1 ITEM1_VALUE
REM ECHO %ITEM1_VALUE%
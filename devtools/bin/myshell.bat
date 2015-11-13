@echo off

REM a
REM sqliteflags=-lpthread -dl /usr/lib/libsqlite3.a
REM boostflags=-I/mingw64/include/ \
REM -D__USE_W32_SOCKETS -D_WIN32_WINNT=0x0501 
REM /mingw64/lib/libboost_atomic-mt.dll.a /mingw64/lib/libboost_iostreams-mt.dll.a /mingw64/lib/libboost_math_tr1l-mt.dll.a /mingw64/lib/libboost_serialization-mt.dll.a /mingw64/lib/libboost_chrono-mt.dll.a /mingw64/lib/libboost_locale-mt.dll.a /mingw64/lib/libboost_math_tr1-mt.dll.a /mingw64/lib/libboost_signals-mt.dll.a /mingw64/lib/libboost_container-mt.dll.a /mingw64/lib/libboost_log_setup-mt.dll.a /mingw64/lib/libboost_prg_exec_monitor-mt.dll.a /mingw64/lib/libboost_system-mt.dll.a /mingw64/lib/libboost_context-mt.dll.a /mingw64/lib/libboost_log-mt.dll.a /mingw64/lib/libboost_program_options-mt.dll.a /mingw64/lib/libboost_thread-mt.dll.a /mingw64/lib/libboost_coroutine-mt.dll.a /mingw64/lib/libboost_math_c99f-mt.dll.a /mingw64/lib/libboost_python3-mt.dll.a /mingw64/lib/libboost_timer-mt.dll.a /mingw64/lib/libboost_date_time-mt.dll.a /mingw64/lib/libboost_math_c99l-mt.dll.a /mingw64/lib/libboost_python-mt.dll.a /mingw64/lib/libboost_unit_test_framework-mt.dll.a /mingw64/lib/libboost_filesystem-mt.dll.a /mingw64/lib/libboost_math_c99-mt.dll.a /mingw64/lib/libboost_random-mt.dll.a /mingw64/lib/libboost_wave-mt.dll.a /mingw64/lib/libboost_graph-mt.dll.a /mingw64/lib/libboost_math_tr1f-mt.dll.a /mingw64/lib/libboost_regex-mt.dll.a /mingw64/lib/libboost_wserialization-mt.dll.a 
REM a

set "CURRENT_DIR=%cd%"
cd /d %~dp0

if exist "..\conf\env.bat" call ..\conf\env.bat 
color 0A
title myshell

:begin
	echo %cd%
	set command=
	set /p command=^>

	if "%command%" == "quit" goto end
	if "%command%" == "exit" goto end
	
	if "%command%" == "help" goto usage
	if "%command%" == "msys" goto msys_start
	if "%command%" == "powershell" goto powershell_start
	
	if "%command%" == "tomcat start" goto tomcat_start
	if "%command%" == "tomcat stop" goto tomcat_stop
	if "%command%" == "mysql start" goto usage
	if "%command%" == "mysql stop" goto usage

:common
	echo ########################
	echo exec command:%command%
	call %command%
	echo ########################
	echo.
goto begin

:usage
	echo ########################
	echo usage:%~dp0%0
	echo [quit^|exit]    exit this shell
	echo [help]         show this help info
	echo ########################
	echo.
goto begin

:msys_start
	start "msys" E:\lib\msys64\mingw64_shell.bat
goto begin


:powershell_start
	start C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe
goto begin

:buildflags
	set toolchain=""
	set mingw32boostflags="-I/mingw64/include/ -D__USE_W32_SOCKETS -D_WIN32_WINNT=0x0501 /mingw64/lib/libboost_atomic-mt.dll.a /mingw64/lib/libboost_iostreams-mt.dll.a /mingw64/lib/libboost_math_tr1l-mt.dll.a /mingw64/lib/libboost_serialization-mt.dll.a /mingw64/lib/libboost_chrono-mt.dll.a /mingw64/lib/libboost_locale-mt.dll.a /mingw64/lib/libboost_math_tr1-mt.dll.a /mingw64/lib/libboost_signals-mt.dll.a /mingw64/lib/libboost_container-mt.dll.a /mingw64/lib/libboost_log_setup-mt.dll.a /mingw64/lib/libboost_prg_exec_monitor-mt.dll.a /mingw64/lib/libboost_system-mt.dll.a /mingw64/lib/libboost_context-mt.dll.a /mingw64/lib/libboost_log-mt.dll.a /mingw64/lib/libboost_program_options-mt.dll.a /mingw64/lib/libboost_thread-mt.dll.a /mingw64/lib/libboost_coroutine-mt.dll.a /mingw64/lib/libboost_math_c99f-mt.dll.a /mingw64/lib/libboost_python3-mt.dll.a /mingw64/lib/libboost_timer-mt.dll.a /mingw64/lib/libboost_date_time-mt.dll.a /mingw64/lib/libboost_math_c99l-mt.dll.a /mingw64/lib/libboost_python-mt.dll.a /mingw64/lib/libboost_unit_test_framework-mt.dll.a /mingw64/lib/libboost_filesystem-mt.dll.a /mingw64/lib/libboost_math_c99-mt.dll.a /mingw64/lib/libboost_random-mt.dll.a /mingw64/lib/libboost_wave-mt.dll.a /mingw64/lib/libboost_graph-mt.dll.a /mingw64/lib/libboost_math_tr1f-mt.dll.a /mingw64/lib/libboost_regex-mt.dll.a /mingw64/lib/libboost_wserialization-mt.dll.a"

:end
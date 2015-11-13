@echo off

:begin
	goto %1
:usage
	echo %~dp0
	echo %@
goto end

:tomcat
	if "%2"=="start" echo abc
	if "%2"=="stop" echo abc
goto end

:mysql
	if "%2"=="init" echo abc
	if "%2"=="start" echo abc
	if "%2"=="stop" echo abc
goto end

:end
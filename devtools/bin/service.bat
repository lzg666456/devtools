@echo off

:begin
	echo %~dp0
	echo %@
	goto end

:tomcat_start
	call tomcat.bat start
goto begin

:tomcat_stop
	call tomcat.bat stop
goto begin

:end
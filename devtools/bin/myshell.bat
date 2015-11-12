rem @echo off

cd /d %~dp0
color 0a

:begin
	cd
	set /p command=>
	
	if "%command%"=="quit" goto end
	if "%command%"=="exit" goto end
goto begin


:end
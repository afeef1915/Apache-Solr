@echo off
rem START or STOP Apache Service
rem --------------------------------------------------------
rem Check if argument is STOP or START

if not ""%1"" == ""START"" goto stop

net start solrJettynum1
goto end

:stop

net stop solrJettynum1

:end
exit

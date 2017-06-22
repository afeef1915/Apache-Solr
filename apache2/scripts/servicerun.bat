@echo off
rem START or STOP Apache Service
rem --------------------------------------------------------
rem Check if argument is STOP or START

if not ""%1"" == ""START"" goto stop

net start solrApache-1
goto end

:stop

"C:/Bitnami/solr-6.5.1-0/apache2\bin\httpd.exe" -n "solrApache-1" -k stop

:end
exit

@echo off
rem -- Check if argument is INSTALL or REMOVE

if not ""%1"" == ""INSTALL"" goto remove

"C:/Bitnami/solr-6.5.1-0/apache2\bin\httpd.exe" -k install -n "solrApache-1" -f "C:/Bitnami/solr-6.5.1-0/apache2\conf\httpd.conf"

net start solrApache-1 >NUL
goto end

:remove
rem -- STOP SERVICE BEFORE REMOVING

net stop solrApache-1 >NUL
"C:/Bitnami/solr-6.5.1-0/apache2\bin\httpd.exe" -k uninstall -n "solrApache-1"

:end
exit

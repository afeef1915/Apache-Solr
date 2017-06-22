@echo off
rem -- Check if argument is INSTALL or REMOVE

if not ""%1"" == ""INSTALL"" goto remove

set SERVICE_NAME=solrJettynum1
set SERVICE_HOME=C:\Bitnami\solr-6.5.1-0/apache-solr
set PR_IMAGE=%SERVICE_HOME%\bin\solr.cmd
set PR_INSTALL=C:\Bitnami\solr-6.5.1-0/apache-solr\scripts\prunsrv.exe

%PR_INSTALL% //IS/%SERVICE_NAME% ^
--Description="%SERVICE_NAME%" ^
--DisplayName="%SERVICE_NAME%" ^
--Install="%SERVICE_HOME%\scripts\prunsrv.exe" ^
--Startup="auto" ^
--LogPath="%SERVICE_HOME%\logs" ^
--LogPrefix="%SERVICE_NAME%" ^
--LogLevel="Debug" ^
--StdOutput="auto" ^
--StdError="auto" ^
--StartMode="exe" ^
--StartImage="%PR_IMAGE%" ^
--StartParams="start" ^
--StopMode="exe" ^
--StopImage="%PR_IMAGE%" ^
--StopParams="stop"


net start solrJettynum1 >NUL
goto end

:remove
rem -- STOP SERVICE BEFORE REMOVING

net stop solrJettynum1 >NUL
sc delete solrJettynum1


:end
exit

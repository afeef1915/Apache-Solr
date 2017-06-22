@echo off
CALL C:\Bitnami\SOLR-6~1.1-0\scripts\setenv.bat
START /MIN "Bitnami Apache Solr Stack Environment" CMD /C %*
                    
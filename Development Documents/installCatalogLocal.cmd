@set @x=0 /*

:: --------------------------------------------------
:: This script installs the catalog in Windows environments (local machines):
::     
:: Prerequisites:
::    Order Care should be up & running
::    sqlplus must be installed in your local machine
::    Set the proper values for your machine before executing the script
::
:: Author: Jesús González
:: Date: 14/07/2014
:: --------------------------------------------------

:: --------------------------------------------------
:: EDITABLE SECTION
:: Please edit these variables to suit your local configuration:
::    - CWenv points to the folder where CW scripts are stored. 
::      ** Warning: It must be set using the full path!! **
::          e.g. set CWenv=C:\Users\panel\ConceptWave\designer\env\
::
::    - WORKSPACE points to the folder where the git branch has been checked out. It doesn´t need to be changed unless you move this file.
::      ** Warning: It must be set using the full path!! **
::          e.g. set WORKSPACE=C:\Users\panel\ConceptWave\projects\NGAA Development\
::
::    - SQLCON describes the database you are using for CW.
::          e.g. set SQLCON=NGAA/ngaa@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=localhost)(Port=1521))(CONNECT_DATA=(service_name=orcl)))
::
::    - SERVER_URL points to the url where CW has been deployed
::          e.g. set SERVER_URL=http://localhost:8080/cwf/
:: --------------------------------------------------

@echo off

set CWenv=%CD%\..\..\..\designer\env\
set WORKSPACE=%CD%\..\
set SQLCON=NGAA/ngaa@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=localhost)(Port=1521))(CONNECT_DATA=(service_name=orcl)))
set SERVER_URL=http://localhost:8080/cwf/

:: --------------------------------------------------
:: END OF EDITABLE SECTION
:: Don´t touch from this point unless you know what you are doing
:: --------------------------------------------------








Title Install Catalog - Local Environment

:: --------------------------------------------------
:: Check environment
:: --------------------------------------------------
set CONF_OK=true

:: Check paths
::---------------------
if not exist "%CWenv%catalogImport.cmd" (
    @echo:
    echo CWenv is not properly defined. 
    set CONF_OK=false
) else (
    echo CWenv seems to be OK
)

if not exist "%WORKSPACE%\Catalog\CBiO.xml" (
    @echo:
    echo WORKSPACE is not properly defined. 
    set CONF_OK=false
) else (
    echo WORKSPACE seems to be OK
)

:: Check database connection
::---------------------
echo select * from CWPL_PLMPARTICIPANTS; | sqlplus -s %SQLCON% > temp.txt
findstr /m "ERROR" temp.txt
if %errorlevel%==0 (
    @echo:
    echo SQLCON is not properly defined. There has been an error while accesing the NGAA database. 
    set CONF_OK=false
) else (
    echo SQLCON seems to be OK
)
del temp.txt

:: Check url availability
::---------------------
setlocal
cscript /nologo /e:jscript "%~f0" %SERVER_URL%
if %ErrorLevel% EQU 200 (
  echo SERVER_URL seems to be OK. %SERVER_URL% is up and running.
) else (
  @echo:
  echo SERVER_URL is not properly defined or server is not running.
  echo Web server error reported: %Errorlevel%
  set CONF_OK=false
)


if not "%CONF_OK%"=="true" (
    @echo:
    echo Please edit this file to suit your local configuration.
    @echo:
    pause
    exit
)


:: --------------------------------------------------
:: Clean Catalog (if user wants to)
:: --------------------------------------------------
@echo:
@echo:
:askAgain1
set /P FULL_INSTALL=Do you want to clean orders and catalog before you start? Y/[N] %=%

if "%FULL_INSTALL%"=="" goto :noCleanCatalog

if "%FULL_INSTALL%"=="Y" goto :cleanCatalog
if "%FULL_INSTALL%"=="y" goto :cleanCatalog

if "%FULL_INSTALL%"=="n" goto :noCleanCatalog
if "%FULL_INSTALL%"=="N" goto :noCleanCatalog

goto :askAgain1

:cleanCatalog
echo ------- Cleaning catalog and orders -------
sqlplus -s %SQLCON% < "%WORKSPACE%Sql\cleanOrders.sql"
sqlplus -s %SQLCON% < "%WORKSPACE%Sql\cleanCatalog.sql"
goto :continue1

:noCleanCatalog
echo Previous catalog will not be cleaned

:continue1


:: --------------------------------------------------
:: Import catalog and execute sql scripts
:: --------------------------------------------------
@echo on

echo ------- Clean codetables -------
sqlplus -s %SQLCON% < "%WORKSPACE%Sql\cleanCodeTable.sql"

@echo:
echo "Import CBiO catalog:"
CALL "%CWenv%catalogImport.cmd" username=upadmin password=upadmin server_url=%SERVER_URL% import_file="%WORKSPACE%Catalog\CBiO.xml"

@echo:
echo "Deactivate NGAA project:"
sqlplus -s %SQLCON% < "%WORKSPACE%Sql\deactivateNGAAProject.sql"

@echo:
echo "Import ACT NGAA catalog:"
CALL "%CWenv%catalogImport.cmd" username=upadmin password=upadmin server_url=%SERVER_URL% import_file="%WORKSPACE%Catalog\ImportCatalog_NGAA_ACT.xml"



@echo:
echo "Clean Configurations project:"
sqlplus -s %SQLCON% < "%WORKSPACE%Sql\deleteConfigurationsProject.sql"

@echo:
echo "Import ConfigurationsPLM:"
CALL "%CWenv%catalogImport.cmd" username=upadmin password=upadmin server_url=%SERVER_URL% import_file="%WORKSPACE%Catalog\ConfigurationsPLM.xml"

@echo:
echo "Import catalog4ConfigurationWSSoapUI_ACT:"
CALL "%CWenv%catalogImport.cmd" username=upadmin password=upadmin server_url=%SERVER_URL% import_file="%WORKSPACE%SoapUI\catalog4ConfigurationWSSoapUI_ACT.xml"


@echo:
echo ------- Execute sql files -------

sqlplus -s %SQLCON% < "%WORKSPACE%Sql\PrivilegeExport.sql"
sqlplus -s %SQLCON% < "%WORKSPACE%Sql\rulesetExport.sql"
sqlplus -s %SQLCON% < "%WORKSPACE%Sql\pmError.sql"
sqlplus -s %SQLCON% < "%WORKSPACE%Sql\pmOperation.sql"
sqlplus -s %SQLCON% < "%WORKSPACE%Sql\TransformationRules.sql"
sqlplus -s %SQLCON% < "%WORKSPACE%Sql\cwpc_itemDropMsgtodisplay.sql"
sqlplus -s %SQLCON% < "%WORKSPACE%Sql\insert_mensapatrones.sql"
sqlplus -s %SQLCON% < "%WORKSPACE%Sql\insert_mensatipopatron.sql"
sqlplus -s %SQLCON% < "%WORKSPACE%Sql\SubOperationsbyOperation.sql"
sqlplus -s %SQLCON% < "%WORKSPACE%Sql\MessageTypology.sql"
sqlplus -s %SQLCON% < "%WORKSPACE%Sql\env_aditional.sql"
sqlplus -s %SQLCON% < "%WORKSPACE%Sql\ERRORES_ACT.sql"


@echo:
pause

goto :EOF
JScript */
  with(new ActiveXObject("Microsoft.XMLHTTP")){
  open("GET",WSH.Arguments(0));send();
  while(readyState!=4){WSH.Sleep(50)};
  WSH.Quit(status)}

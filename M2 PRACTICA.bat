@echo off


:START
color 0f
echo = MENU
echo .........................
echo .1 = CREAR DIRECTORIOS  .
echo .2 = BORRAR DIRECTORIOS .
echo .3 = VER DIRECTORIOS    .
echo .4 = COPIA DE SEGURIDAD .
echo .S = SALIR              .
echo .........................
set/p opciones="Eliga la operacion que desea realizar.|(1)|(2)|(3)|(4)| o SALIR (s)
if %opciones%==1 GOTO Crear-Directorios
if %opciones%==2 GOTO Borrar-Directorios
if %opciones%==3 GOTO Ver-Directorios
if %opciones%==4 GOTO COPIA-DE-SEGURIDAD
if %opciones%==s GOTO SALIR


:Crear-Directorios
mkdir M2-Sistemes-Operatius
cd M2-Sistemes-Operatius
md UF1-Introducci-als-SMO UF2-Sistemes-Operatius-Propietaris
cd UF2-Sistemes-Operatius-Propietaris
md Instalacio_Windows10 Tasques_configuracio_Windows10 Tasques_administracio_Windows10
cd ../
mkdir UF3-Sistemes-Operatius-Lliures
echo ---------------------------------------------------
echo ya se han creado satisfactoriamente sus directorios
echo ---------------------------------------------------
echo.
pause
echo.
GOTO START

:Borrar-Directorios
echo voy a borrar todo MUAHAHAH
RD /S M2-Sistemes-Operatius
echo ----------------------------------------------------
echo ya se han borrado satisfactoriamente sus directorios
echo ----------------------------------------------------
pause>nul
GOTO START


:Ver-Directorios
color 0a
cd M2-Sistemes-Operatius
tree
pause>nul
GOTO START

:COPIA-DE-SEGURIDAD
color 09
echo ------------------------------------------------------------------------------------------------------
echo voy a crear una copia de seguridad que estara ubicada en Documentos en una carpeta con la FECHA ACTUAL
echo ------------------------------------------------------------------------------------------------------
cd %homepath%/Documents
mkdir M2_SMO_Backup_%date:~6,4%%date:~3,2%%date:~0,2%
cd %homepath%/Desktop
Robocopy M2-Sistemes-Operatius %homepath%/Documents/M2_SMO_Backup_%date:~6,4%%date:~3,2%%date:~0,2%  /E /SEC
MSG * COPIA DE SEGURIDAD SATISFACTORIA
pause>nul
GOTO START

:SALIR
EXIT


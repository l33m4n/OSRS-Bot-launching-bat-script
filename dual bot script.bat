echo off
:begin

SET dir="C:\Users\"%username%"\Documents"

echo Select a task:
echo =============
echo -
echo 1) Open OSbot
echo 2) Open Dreambot

echo -
set /p op=Type option:
if "%op%"=="1" goto op1
if "%op%"=="2" goto op2


echo Please Pick an option:
goto begin


:op1
echo you picked option 1
cd/d %dir%

for /f delims^= %%i in ('
dir/b/o-d "osbot*.jar"^|findstr/eil jar
')do set "_ver=%%~ni" && goto %:next

:next
set "_ver=%_ver:*-=%"
for %%i in (cm,ss,ab,and,so,on
)do 2>nul dir/b "%%~i-%_ver%.*"|findstr/eil jar

:: code after get version ::
java -jar "%_ver%.jar"
exit



:op2
echo you picked option 2
cd/d %dir%

for /f delims^= %%i in ('
dir/b/o-d "DBLauncher*.jar"^|findstr/eil jar
')do set "_ver=%%~ni" && goto %:next

:next
set "_ver=%_ver:*-=%"
for %%i in (cm,ss,ab,and,so,on
)do 2>nul dir/b "%%~i-%_ver%.*"|findstr/eil jar

:: code after get version ::
java -jar "%_ver%.jar"

:exit
@exit

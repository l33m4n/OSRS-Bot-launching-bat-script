@echo off

:: code before loop ::
set /a rnd=(%RANDOM% %% (5005-5555))+5005
cd/d "C:\Users\USERNAME\Documents"

for /f delims^= %%i in ('
dir/b/o-d "osbot*.jar"^|findstr/eil jar
')do set "_ver=%%~ni" && goto %:next

:next
set "_ver=%_ver:*-=%"
for %%i in (cm,ss,ab,and,so,on
)do 2>nul dir/b "%%~i-%_ver%.*"|findstr/eil jar

:: code after get version ::
java -Xmx3024M -Xms3024M -jar "%_ver%.jar" -debug %rnd%

@echo off

%windir%\microsoft.net\framework\v4.0.30319\msbuild ..\UAA.sln /p:Configuration=Release "/p:Platform=Any CPU"

IF %ERRORLEVEL% NEQ 0 GOTO err

7z a UAA_bin.zip -tzip @files.lst
PAUSE
EXIT /B 1

:err
PAUSE
EXIT /B 1

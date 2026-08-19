nmake /f Makefile.nt
if errorlevel 1 exit 1

copy cgi-fcgi\Release\cgi-fcgi.exe %LIBRARY_BIN%
if errorlevel 1 exit 1
copy libfcgi\Release\libfcgi.dll %LIBRARY_BIN%
if errorlevel 1 exit 1
mkdir %LIBRARY_LIB%
copy libfcgi\Release\libfcgi.lib %LIBRARY_LIB%
if errorlevel 1 exit 1

(robocopy include %LIBRARY_INC% "*.h") ^& IF %ERRORLEVEL% LEQ 1 exit 0


@echo on

mkdir %PREFIX%\etc\conda\activate.d
if %ERRORLEVEL% neq 0 exit 1

copy %RECIPE_DIR%\activate.bat %PREFIX%\etc\conda\activate.d\activate-%PKG_NAME%.bat
if %ERRORLEVEL% neq 0 exit 1

md %LIBRARY_PREFIX%\bin
if %ERRORLEVEL% neq 0 exit 1

copy %RECIPE_DIR%\cargo-auditable-wrapper.bat %LIBRARY_PREFIX%\bin\cargo-auditable-wrapper.bat
if %ERRORLEVEL% neq 0 exit 1

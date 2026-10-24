mkdir %PREFIX%\etc\conda\activate.d
copy %RECIPE_DIR%\activate.bat activate.bat

powershell -NoProfile -Command "(Get-Content activate.bat -Raw) -replace '@rust_arch_env_build@', $env:rust_arch_env_build -replace '@rust_arch_env@', $env:rust_arch_env -replace '@rust_arch@', $env:rust_arch | Set-Content activate.bat -NoNewline"

copy activate.bat %PREFIX%\etc\conda\activate.d\activate-%PKG_NAME%.bat

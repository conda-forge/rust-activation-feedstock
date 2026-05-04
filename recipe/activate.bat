if not defined CARGO_HOME set CARGO_HOME=%CONDA_PREFIX%\.cargo
if not defined CARGO_CONFIG set CARGO_CONFIG=%CARGO_HOME%\config
if not defined RUSTUP_HOME set RUSTUP_HOME=%CARGO_HOME%\rustup
set PATH=%CARGO_HOME%\bin;%PATH%

if not exist "%CARGO_HOME%" mkdir "%CARGO_HOME%"

set "CARGO_BUILD_TARGET=@rust_arch@"
set "CONDA_RUST_HOST=@rust_arch_env_build@"
set "CONDA_RUST_TARGET=@rust_arch_env@"

set "CARGO_TARGET_@rust_arch_env_build@_LINKER=link.exe"

if [%LD%] == [] (
    set "CARGO_TARGET_@rust_arch_env@_LINKER=link.exe"
) else (
    set "CARGO_TARGET_@rust_arch_env@_LINKER=%LD%"
)

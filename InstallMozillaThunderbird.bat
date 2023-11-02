set VERSION=115.4.1
set SHARE="\\943-vc10-8962\d:\SHARE\"
if %PROCESSOR_ARCHITECTURE% == x86 (
set REGISTRY_KEY_NAME="HKLM\SOFTWARE\Mozilla\Mozilla Thunderbird"
) else (
set REGISTRY_KEY_NAME="HKLM\SOFTWARE\Wow6432Node\Mozilla\Mozilla Thunderbird"
)
reg query %REGISTRY_KEY_NAME% /v CurrentVersion | find "%VERSION% (ru)"
if ERRORLEVEL 1 "\\%SHARE%\Thunderbird Setup %VERSION%.exe" -ms
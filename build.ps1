#!/usr/bin/env pwsh

Set-StrictMode -v latest
$ErrorActionPreference = "Stop"
$PSNativeCommandThrowPreference = $true

dotnet publish

write-host $?

find / -name 'pwsh' 2> /dev/null | % { dir $_ }

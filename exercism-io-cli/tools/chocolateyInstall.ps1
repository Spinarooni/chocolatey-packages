﻿$packageName = 'exercism-io-cli'
$url = 'https://github.com/exercism/cli/releases/download/v3.0.13/exercism-windows-32bit.zip'
$url64 = 'https://github.com/exercism/cli/releases/download/v3.0.13/exercism-windows-64bit.zip'

$installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Install-ChocolateyZipPackage "$packageName" "$url" "$installDir" "$url64"

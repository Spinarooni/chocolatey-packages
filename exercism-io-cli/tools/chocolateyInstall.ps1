$packageName = 'exercism-io-cli'
$url = 'https://github.com/exercism/cli/releases/download/v3.5.0/exercism-3.5.0-windows-32bit.zip'
$url64 = 'https://github.com/exercism/cli/releases/download/v3.5.0/exercism-3.5.0-windows-64bit.zip'
$checksum = 'F0767C2E84AB492EA433D706D033669F217130EAE484C0B5A3BB8CEFCBE9C3BA'
$checksum64 = 'B01600BA4C4E5A830B0CD62AEEF9CD4385FD8EE9C948AEF1C5E246D7F4E3C145'
$installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
    -Url "$url" `
    -UnzipLocation "$installDir" `
    -Url64bit "$url64" `
    -Checksum $checksum `
    -Checksum64 $checksum64 `
    -ChecksumType 'sha256' `
    -ChecksumType64 'sha256'
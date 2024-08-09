$packageName = 'exercism-io-cli'
$url = 'https://github.com/exercism/cli/releases/download/v3.4.0/exercism-3.4.0-windows-32bit.zip'
$url64 = 'https://github.com/exercism/cli/releases/download/v3.4.0/exercism-3.4.0-windows-64bit.zip'
$checksum = 'F8E8A0FD8F3FDDEFE253E934D6281A3431B137DBB3D848F850EC2D62DEEA0778'
$checksum64 = '9EF4DFC6F17034DBA48AE28FE46FA139EFE8887B02F6A845B38EF181CC98DAF5'
$installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
    -Url "$url" `
    -UnzipLocation "$installDir" `
    -Url64bit "$url64" `
    -Checksum $checksum `
    -Checksum64 $checksum64 `
    -ChecksumType 'sha256' `
    -ChecksumType64 'sha256'
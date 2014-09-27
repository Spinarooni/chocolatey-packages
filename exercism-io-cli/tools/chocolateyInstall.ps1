$packageName = 'exercism-io-cli'
$url = 'https://github.com/exercism/cli/releases/download/v1.7.3/exercism-windows-32bit.tgz'
$url64 = 'https://github.com/exercism/cli/releases/download/v1.7.3/exercism-windows-64bit.tgz'

$installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Install-ChocolateyZipPackage "$packageName" "$url" "$installDir" "$url64"

try {
  $binaryTar = $installDir + "\" + $packageName + "Install"
  Get-ChocolateyUnzip "$binaryTar"  "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw
}

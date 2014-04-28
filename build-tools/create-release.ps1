$installBuilderCli = "C:\Program Files (x86)\BitRock InstallBuilder Enterprise 8.6.0\bin\builder-cli.exe"
$pathToBuildFile = "flickrdownloadr.xml"
$pathToLicenseFile = "flickrdownloadrlicense.xml"

$platform = "windows"
If($args.Length -eq 1)
 {
   $platform = $args[0]
 }

If(Test-Path $pathToLicenseFile)
 {
   & $installBuilderCli build $pathToBuildFile $platform --license $pathToLicenseFile --setvars project.version=$env:BUILDNUMBER
 }
Else
 {
   & $installBuilderCli build $pathToBuildFile $platform --setvars project.version=$env:BUILDNUMBER
 }
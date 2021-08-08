param (
    [String]
    $version='latest'
)

$dockerImageName = "hpaurium/adafruit-gfx-fontconvert"
$fontconvertFolderPath = "fontconvert"

Push-Location -Path ..
Invoke-Expression "docker build -t ${dockerImageName}:${version} -f ${fontconvertFolderPath}/Dockerfile ."
Pop-Location

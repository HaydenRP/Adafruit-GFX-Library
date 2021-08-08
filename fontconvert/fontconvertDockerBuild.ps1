param (
    [String]
    $version='latest'
)

$dockerImageName = "fontconvert"
$fontconvertFolderPath = "fontconvert"

Push-Location -Path ..
Invoke-Expression "docker build -t ${dockerImageName}:${version} -f ${fontconvertFolderPath}/Dockerfile ."
Pop-Location

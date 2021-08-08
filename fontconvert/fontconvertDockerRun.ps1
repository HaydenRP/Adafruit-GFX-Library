#Requires -Version 6

param (
    [Parameter(Mandatory=$true)]
    [String]
    $fontFileName, 

    [Parameter(Mandatory=$true)]
    [String]
    $fontSize, 

    [String]
    $outputPath, 

    [String]
    $version = 'latest')

# Paths on host machine
$dockerImageName = "fontconvert"
$hostResourceFolder = ${PWD}

# Paths on container
$containerResourceFolder = "/fontconvert"
$containerResourceFile = "${containerResourceFolder}/${fontFileName}"

# Set the output path, if one was not provided
if ($null -eq $outputPath) 
{
    $fileNameWithoutExtension = Split-Path $fontFileName -LeafBase
    $outputPath = "${fileNameWithoutExtension}.h"
}

# Run the conversion
Write-Output "Coverting font ${fontFileName} with size ${fontSize}"
Invoke-Expression "docker run --rm  -v ${hostResourceFolder}:${containerResourceFolder} ${dockerImageName} ${containerResourceFile} ${fontSize} > ${outputPath}"
Write-Output "Saved to file ${outputPath}"
Write-Output ""
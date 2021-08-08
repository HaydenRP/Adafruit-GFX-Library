# Font Converter

Utility to convert TTF fonts to C header files compatible with the Adafruit GFX library

## Build docker image
To build the docker image locally, open a Powershell Core terminal (version >= 6.0), and run the following command

```ps
.\fontconvertDockerBuild.ps1 [version = "latest"]
```

### Optional Parameters
-  `version` is the tag version to build-  set to `latest` by default 

This builds the docker image `fontconvert` with the specified tag version


## Convert font file with docker image 

Once you have the docker image, you can use the run script to generate the header file

```ps
.\fontconvertDockerRun.ps1 [fontFileName] [fontSize] [outputPath] [version = "latest"]
```

### Required Parameters
-  `fontFileName` is the file name of the font to convert. Must not be a path.
-  `fontSize` is the size of the font to convert

### Optional Parameters
-  `outputPath` output file name - set to the input filename with a `.h` extension by default
-  `version` is the tag version to use - set to `latest` by default 
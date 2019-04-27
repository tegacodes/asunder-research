# Viewing netCDF Files

Climate models use a data formate called netCDF. 

[Unidata’s](https://www.unidata.ucar.edu/software/netcdf/) Network Common Data Format has been the workhorse data format for atmospheric and oceanographic modelers since the early 1990’s. This is a guide for using a Mac to work with netCDF files.

Info on the specs and grammar of the netcdf file format: https://www.unidata.ucar.edu/software/netcdf/docs/file_format_specifications.html 
This was helpful for navigating NetCDF file format: https://gdal.org/frmt_netcdf.html

Tutorial on tools for visualizing netcdf: https://www.youtube.com/watch?v=XqoetylQAIY (good stuff about python tools at 24min)

Use Panopoly to get see file format.

## ncview

This is an update on [these instructions](http://mazamascience.com/WorkingWithData/?p=1474).

Make sure brew is installed:

1) Make sure you have brew installed  
Install instructions [are here.](https://brew.sh/)

2) Install xQuartz
```
brew cask install xquartz
```
3) Install netCDF
```
brew install netCDF
```
4) Install ncview
```
brew install ncview
```

#### Errors: 
If there is an error related to libpng:
- either brew install libpng 
- brew reinstall libpng

If this is the first time you are installing xquartz, you may get an error messange "Can't open display, if using default DISPLAY"
- restart your computer and try again

## QGIS and GDAL

GDAL and QGIS play well together. Use QGIS to style maps and make scripts that can be automated in GDAL.

1) Install GDAL 
```
brew install gdal
```
2) Install QGIS
- Requires python 3.6 
- Also set up GDAL scripts. Go to Settings ... Options... System ... Environment Enable "Use Custom Variables". First select "Prepend", under variable enter "PATH", under value enter:
```
"/Library/Frameworks/GDAL.framework/Programs:/Library/Frameworks/Python.framework/Versions/3.6/bin:"
```
Restart QGIS

3) Export a variable from a NETCDF file to a geotif
```
gdal_translate -ot float32 -unscale -CO COMPRESS=deflate NETCDF:"FILENAME.nc":VARIABLENAME OUTPUT.tif
```
For example to get ground temp:
```
gdal_translate -ot float32 -unscale -CO COMPRESS=deflate NETCDF:"trun2.clm2.h0.0001-01-01-00000.nc":TG grndtemp.tif
```
Use QGIS to view the output.

4) Style the geotif
First figure out what you want to do in QGIS:
CHANGE THE COLOR: 
In QGIS, double click on layer. In Symbology > Render tyoe > Singleband pseudocolor. Choose color ramp. Can save color ramp out as a text file to use in a script. Choose the disk and save out as temp-color.txt.
*there is an annoying bug where you have to comment out the second line of this file before using it in GDAL*

Using GDAL to automatically generate the tif with the color ramp:
```
gdaldem color-relief grndtemp.tif temp-color.txt gt-test-col.tif
```

CHANGE THE PROJECTION:
In QGIS. Raster> Projections> Warp 
The log will give you the GDAL command.
(having some issues with this)

Questions:
How to set "no data" in the color ramp.


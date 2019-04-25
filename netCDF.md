# Viewing netCDF Files

Climate models use a data formate called netCDF. 

[Unidata’s](https://www.unidata.ucar.edu/software/netcdf/) Network Common Data Format has been the workhorse data format for atmospheric and oceanographic modelers since the early 1990’s. This is a guide for using a Mac to work with netCDF files.

Info on the specs and grammar of the netcdf file format: https://www.unidata.ucar.edu/software/netcdf/docs/file_format_specifications.html

Tutorial on tools for visualizing netcdf: https://www.youtube.com/watch?v=XqoetylQAIY (good stuff about python tools at 24min)

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

## netcdfjs

Javascript tool: https://github.com/cheminfo-js/netcdfjs


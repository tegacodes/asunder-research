# Viewing netCDF Files

Climate models use a data formate called netCDF. 

This is an update on [these instructions](http://mazamascience.com/WorkingWithData/?p=1474). "[Unidata’s](https://www.unidata.ucar.edu/software/netcdf/) Network Common Data Format has been the workhorse data format for atmospheric and oceanographic modelers since the early 1990’s. With more and more scientists using Macs to get their work done, it is important to get them ready with the the necessary tools of the trade.  This post walks you through the steps for setting up a Mac to work with netCDF."

Make sure brew is installed:

1) Make sure you have brew installed

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


### Errors: 
If there is an error related to libpng:
- either brew install libpng 
- brew reinstall libpng

If this is the first time you are installing xquartz, you may get an error messange "Can't open display, if using default DISPLAY"
- restart your computer and try again

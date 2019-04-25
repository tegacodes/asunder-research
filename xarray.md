# Using xarray

```
ncdump -h atmos.nc
```
OUTPUT
```
netcdf atmos {
dimensions:
	lat = 96 ;
	lon = 144 ;
	time = UNLIMITED ; // (6 currently)
	nbnd = 2 ;
	chars = 8 ;
	lev = 32 ;
	ilev = 33 ;
variables:
	double lat(lat) ;
		lat:_FillValue = -900. ;
		lat:long_name = "latitude" ;
		lat:units = "degrees_north" ;
	double lon(lon) ;
		lon:_FillValue = -900. ;
		lon:long_name = "longitude" ;
		lon:units = "degrees_east" ;
	double gw(lat) ;
		gw:_FillValue = -900. ;
		gw:long_name = "latitude weights" ;
	double lev(lev) ;
		lev:long_name = "hybrid level at midpoints (1000*(A+B))" ;
		lev:units = "hPa" ;
		lev:positive = "down" ;
		lev:standard_name = "atmosphere_hybrid_sigma_pressure_coordinate" ;
		lev:formula_terms = "a: hyam b: hybm p0: P0 ps: PS" ;
	double hyam(lev) ;
		hyam:long_name = "hybrid A coefficient at layer midpoints" ;
	double hybm(lev) ;
		hybm:long_name = "hybrid B coefficient at layer midpoints" ;
	double P0 ;
		P0:long_name = "reference pressure" ;
		P0:units = "Pa" ;
	double ilev(ilev) ;
		ilev:long_name = "hybrid level at interfaces (1000*(A+B))" ;
		ilev:units = "hPa" ;
		ilev:positive = "down" ;
		ilev:standard_name = "atmosphere_hybrid_sigma_pressure_coordinate" ;
		ilev:formula_terms = "a: hyai b: hybi p0: P0 ps: PS" ;
	double hyai(ilev) ;
		hyai:long_name = "hybrid A coefficient at layer interfaces" ;
	double hybi(ilev) ;
		hybi:long_name = "hybrid B coefficient at layer interfaces" ;
	double time(time) ;
		time:long_name = "time" ;
		time:units = "days since 0001-01-01 00:00:00" ;
		time:calendar = "noleap" ;
		time:bounds = "time_bnds" ;
	int date(time) ;
		date:long_name = "current date (YYYYMMDD)" ;
	int datesec(time) ;
		datesec:long_name = "current seconds of current date" ;
	double time_bnds(time, nbnd) ;
		time_bnds:long_name = "time interval endpoints" ;
	char date_written(time, chars) ;
	char time_written(time, chars) ;
	int ndbase ;
		ndbase:long_name = "base day" ;
	int nsbase ;
		nsbase:long_name = "seconds of base day" ;
	int nbdate ;
		nbdate:long_name = "base date (YYYYMMDD)" ;
	int nbsec ;
		nbsec:long_name = "seconds of base date" ;
	int mdt ;
		mdt:long_name = "timestep" ;
		mdt:units = "s" ;
	int ndcur(time) ;
		ndcur:long_name = "current day (from base day)" ;
	int nscur(time) ;
		nscur:long_name = "current seconds of current day" ;
	double co2vmr(time) ;
		co2vmr:long_name = "co2 volume mixing ratio" ;
	double ch4vmr(time) ;
		ch4vmr:long_name = "ch4 volume mixing ratio" ;
	double n2ovmr(time) ;
		n2ovmr:long_name = "n2o volume mixing ratio" ;
	double f11vmr(time) ;
		f11vmr:long_name = "f11 volume mixing ratio" ;
	double f12vmr(time) ;
		f12vmr:long_name = "f12 volume mixing ratio" ;
	double sol_tsi(time) ;
		sol_tsi:long_name = "total solar irradiance" ;
		sol_tsi:units = "W/m2" ;
	int nsteph(time) ;
		nsteph:long_name = "current timestep" ;
	float CLDLOW(time, lat, lon) ;
		CLDLOW:units = "fraction" ;
		CLDLOW:long_name = "Vertically-integrated low cloud" ;
	float FLNS(time, lat, lon) ;
		FLNS:Sampling_Sequence = "rad_lwsw" ;
		FLNS:units = "W/m2" ;
		FLNS:long_name = "Net longwave flux at surface" ;
	float FLNT(time, lat, lon) ;
		FLNT:Sampling_Sequence = "rad_lwsw" ;
		FLNT:units = "W/m2" ;
		FLNT:long_name = "Net longwave flux at top of model" ;
	float LHFLX(time, lat, lon) ;
		LHFLX:units = "W/m2" ;
		LHFLX:long_name = "Surface latent heat flux" ;
	float PRECT(time, lat, lon) ;
		PRECT:units = "m/s" ;
		PRECT:long_name = "Total (convective and large-scale) precipitation rate (liq + ice)" ;
	float PS(time, lat, lon) ;
		PS:units = "Pa" ;
		PS:long_name = "Surface pressure" ;
	float SHFLX(time, lat, lon) ;
		SHFLX:units = "W/m2" ;
		SHFLX:long_name = "Surface sensible heat flux" ;
	float T200(time, lat, lon) ;
		T200:units = "K" ;
		T200:long_name = "Temperature at 200 mbar pressure surface" ;
	float T500(time, lat, lon) ;
		T500:units = "K" ;
		T500:long_name = "Temperature at 500 mbar pressure surface" ;
	float T850(time, lat, lon) ;
		T850:units = "K" ;
		T850:long_name = "Temperature at 850 mbar pressure surface" ;
	float TS(time, lat, lon) ;
		TS:units = "K" ;
		TS:long_name = "Surface temperature (radiative)" ;
	float U200(time, lat, lon) ;
		U200:units = "m/s" ;
		U200:long_name = "Zonal wind at 200 mbar pressure surface" ;
	float U850(time, lat, lon) ;
		U850:units = "m/s" ;
		U850:long_name = "Zonal wind at 850 mbar pressure surface" ;
	float Z500(time, lat, lon) ;
		Z500:units = "m" ;
		Z500:long_name = "Geopotential Z at 500 mbar pressure surface" ;

// global attributes:
		:Conventions = "CF-1.0" ;
		:source = "CAM" ;
		:case = "trun" ;
		:logname = "bengt" ;
		:host = "" ;
		:initial_file = "/home/bengt/my_cesm_sandbox/cesm-inputdata/atm/cam/inic/fv/cami-mam3_0000-01-01_1.9x2.5_L32_c150407.nc" ;
		:topography_file = "/home/bengt/my_cesm_sandbox/cesm-inputdata/atm/cam/topo/fv_1.9x2.5_nc3000_Nsw084_Nrs016_Co120_Fi001_ZR_061116.nc" ;
		:model_doi_url = "https://doi.org/10.5065/D67H1H0V" ;
		:time_period_freq = "day_1" ;
}
```

To see the data: 
```
ncview atmos.nc
```

## Using Xarray
From here: 
https://towardsdatascience.com/handling-netcdf-files-using-xarray-for-absolute-beginners-111a8ab4463f
```
import xarray as xr
import json

# single file
atmosdataDIR = 'atmos.nc'
DS = xr.open_dataset(atmosdataDIR)

# Extract Surface Temperature
# Select the altitude nearest to 500m above surface
# Drop NaN, convert to Celcius
#da = DS.TS
# at vienna
da = DS.TS.sel(lat=48.2, lon=16.4, method='nearest')
dav = da.values
#print(da)
#print(da.values) #get just the values that you extraved with sel method

tmR = DS.sel(time=slice('0001-01-01','0001-01-04'))
#print(tmR)

value = tmR.TS.sel(lat=48.2, lon=16.4, method='nearest')
#print(value)

#convert da to dict
d = da.to_dict()

#extract array of temperatures
print(d["data"])
with open('data.json', 'w') as outfile:
    json.dump(d["data"], outfile)
```


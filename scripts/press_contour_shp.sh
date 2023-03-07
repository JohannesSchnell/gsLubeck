gdalwarp -te -179.75 -84 179.75 84 ../layers/netcdf/pressure_world_msl_time_180.nc ../tmp/tmp.nc && 
gdal_contour -a press -i 100 ../tmp/tmp.nc ../layers/shp/pressure/press_shp.shp &&
rm ../tmp/tmp.nc

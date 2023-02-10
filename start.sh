docker run -it -p 80:8080 \
  --mount src="$PWD"/"ncdf",target=/opt/geoserver_data/,type=bind \
  --env SKIP_DEMO_DATA=true \
  --env INSTALL_EXTENSIONS=true --env STABLE_EXTENSIONS="netcdf" \
  docker.osgeo.org/geoserver:2.22.0

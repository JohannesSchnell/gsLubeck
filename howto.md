# setup geoserver mit netcdf file und windbarbsstyle

## geoserver docker starten

```shell
sh start.sh
```

## geoserver im browser oeffnen

geoserver auf [localhost/geoserver](localhost/geoserver)

## config im geoserver

einloggen: user:admin, pw: geoserver

### ntcdf hinzufuegen usw.

Navigation links

- arbeitsbereich erstellen: name:maridata uri: maridata

- datenspeicher erstellen: Rasterdatenquellen >> NetCDF >> arbeitsberech: maridata, name: uvwind, file durchsuchen wind_uv_kanal.nc

- layer erstellen: maridata:wind auswaehlen >> Configure new Coverage view >> beide baender auswaehlen, name: uv_wind, speichern >> runterscrolen zu Baender, name von "u-component_of_wind_height_above_ground" zu "u" aendern, analog mit "v-comp...", speichern
- style erstellen: name: wind_spd_dir, arbeitsbereich: maridata, inhalt von wind_spd_dir.xml ins fenster kopieren, speichern

- layer >> uv_wind >> WMS-Einstellungen den Stil wind_spd_dir hinzufuegen, speichern

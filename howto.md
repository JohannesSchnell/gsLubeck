# setup geoserver mit netcdf file und windbarbsstyle

## geoserver docker starten

linux/ mac

```shell
sh start.sh
```

## geoserver im browser oeffnen

geoserver auf [localhost/geoserver](http://localhost/geoserver)

## config im geoserver

einloggen: user:admin, pw: geoserver

### ntcdf hinzufuegen usw.

Navigation links

1. arbeitsbereich erstellen:

- name: maridata
- uri: maridata

2. datenspeicher erstellen:

- Rasterdatenquellen >> NetCDF >> arbeitsberech: maridata, name: uvwind
- file durchsuchen wind_uv_kanal.nc

3. layer erstellen:

- maridata:wind auswaehlen >> Configure new Coverage view >> beide baender auswaehlen
- name: uv_wind, speichern >> runterscrolen zu Baender
- name von "u-component_of_wind_height_above_ground" zu "u" aendern, analog mit "v-comp..."
- speichern

4. style erstellen:

- name: wind_spd_dir, arbeitsbereich: maridata
- inhalt von wind_spd_dir.xml ins fenster kopieren
- speichern

5. layer >> uv_wind

- WMS-Einstellungen den Stil wind_spd_dir hinzufuegen
- speichern

# wind and flow visualisation using geoserver SLD and .nc files

## setup

follow [howto.md](https://github.com/JohannesSchnell/gsLubeck/blob/main/howto.md) _german_

## change params within the SLD

[Geoserver SLD Styling Guide](https://docs.geoserver.org/latest/en/user/styling/sld/index.html)

<details>
  <summary>
use to set the gaps between rendered symbols
</summary>

```xml
<ogc:Function name="parameter">
 <ogc:Literal>scale</ogc:Literal>
 <ogc:Literal>0.001</ogc:Literal>
</ogc:Function>
```

</details>

```xml
<PointSymbolizer>
  <Graphic>
    <Mark>
      <WellKnownName>
        extshape://narrow
      </WellKnownName>
      .
      .
      .
```

<details>
  <summary>
different symbols
</summary>
allows for [build-in and generic shapes](https://docs.geoserver.org/latest/en/user/styling/sld/extensions/pointsymbols.html)
```xml
<PointSymbolizer>
  <Graphic>
    <Mark>
      <WellKnownName>
        extshape://narrow
      </WellKnownName>
      .
      .
      .
```
</details>

```xml
                <Fill>
                  <CssParameter name ="fill">
                    <ogc:Function name ="Categorize">

                      <ogc:Function name="sqrt">
                        <ogc:Add>
                          <ogc:Mul>
                            <ogc:PropertyName>uo</ogc:PropertyName>
                            <ogc:PropertyName>uo</ogc:PropertyName>
                          </ogc:Mul>
                          <ogc:Mul>
                            <ogc:PropertyName>vo</ogc:PropertyName>
                            <ogc:PropertyName>vo</ogc:PropertyName>
                          </ogc:Mul>
                        </ogc:Add>
                      </ogc:Function>

                      <ogc:Literal>#ffffff</ogc:Literal>
                      <ogc:Literal>0.01</ogc:Literal>
                      <ogc:Literal>#1ce3ed</ogc:Literal>
                      <ogc:Literal>0.02</ogc:Literal>
                      <ogc:Literal>#148818</ogc:Literal>
                      <ogc:Literal>0.06</ogc:Literal>
                      <ogc:Literal>#dbeb52</ogc:Literal>
                      <ogc:Literal>0.1</ogc:Literal>
                      <ogc:Literal>#edad4c</ogc:Literal>
                      <ogc:Literal>0.2</ogc:Literal>
                      <ogc:Literal>#c92d24</ogc:Literal>

                    </ogc:Function >
                  </CssParameter>
                </Fill>
```

<details>
  <summary>
example how to use 'Categorize' Function within a 'fill' argument
</summary>

```xml
<Fill>
  <CssParameter name ="fill">
    <ogc:Function name ="Categorize">

      <ogc:Function name="sqrt">
        <ogc:Add>
          <ogc:Mul>
            <ogc:PropertyName>uo</ogc:PropertyName>
            <ogc:PropertyName>uo</ogc:PropertyName>
          </ogc:Mul>
          <ogc:Mul>
            <ogc:PropertyName>vo</ogc:PropertyName>
            <ogc:PropertyName>vo</ogc:PropertyName>
          </ogc:Mul>
        </ogc:Add>
      </ogc:Function>

      <ogc:Literal>#ffffff</ogc:Literal>
      <ogc:Literal>0.01</ogc:Literal>
      <ogc:Literal>#1ce3ed</ogc:Literal>
      <ogc:Literal>0.02</ogc:Literal>
      <ogc:Literal>#148818</ogc:Literal>
      <ogc:Literal>0.06</ogc:Literal>
      <ogc:Literal>#dbeb52</ogc:Literal>
      <ogc:Literal>0.1</ogc:Literal>
      <ogc:Literal>#edad4c</ogc:Literal>
      <ogc:Literal>0.2</ogc:Literal>
      <ogc:Literal>#c92d24</ogc:Literal>

    </ogc:Function >
  </CssParameter>
</Fill>
```

</details>

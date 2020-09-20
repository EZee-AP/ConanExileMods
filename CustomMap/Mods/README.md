### CustomMap
```
Simple blank example map for Conan Exiles.

To load on a dedicated server you must add 
this string to Engine.ini.

[/script/enginesettings.gamemapssettings]
ServerDefaultMap=/Game/Mods/CustomMap/Maps/CustomMap
```

### Notes
```
Currently "Content/Maps/AlwaysCook/MapDataTable"
must be edited directly to add to the datatable,
I'm not sure if this is intended or whether it's 
a bug, you can find the row data for CustomMap 
in "Mods/CustomMap/MapDataTable_CustomMap", the 
data from this table should be added to 
"MapDataTable" to enable map selection in COOP/SP.

The mod has a preconfigured admin widget example 
with Mod Control Panel support that can be 
enabled by checking "EnableUI" in "MDC_CustomMap", 
the widget will "only" be available while loaded
into CustomMap and won't show in MCP while playing 
on other maps.
```

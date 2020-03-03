### CustomMap
```
Simple example of a custom map for Conan Exiles,
CustomMap.umap has UltraDynamicSky, TimeOfDayManager, 
sandstorm, meteor shower, flat HeatMap, admin widget 
with Mod Control Panel support.

Textures used for the landscape material are taken from
Unreal Engine content examples or created by me.

You might also want to take a look at "RenderMapToHDR"
for some tools to help create a heatmap template and
rendering your map out for the T_FullscreenMap.

Notes:
The meteor shower controller is added via "Tile_00"
when you import your tiles you should copy the 
"MeteorSpawnController" actor from "Tile_00" to 
which ever tiles has the landscape the meteors will 
land, this is mainly for single player/coop as it 
ensures there is something for the meteors to actually 
hit...!

If you really want the meteor controller in  the main 
persistant for the meteor show then you should create 
a custom version and set the "life span" of the
meteor projectile after the spawn actor (SpawnActor 
BPMeteorProjectile)

To load into the map in SP/COOP you should use this 
string for the map name

/Game/Mods/CustomMap/Maps/CustomMap

To load on a dedicated server you must add this string
to Engine.ini

[/script/enginesettings.gamemapssettings]
ServerDefaultMap=/Game/Mods/CustomMap/Maps/CustomMap
```

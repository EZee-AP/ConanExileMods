### hades Dungeon Example
```

To install into your devkit you must move the file "hadeDungeon_Gameplay" from "Local" to
"ConanSandbox\Content\Maps\ConanSandbox\Gameplay\Camps_NPC\", what this does is inject 
our dungeon into the games files so we don't need to edit any of the default mod camp levels
to add the dungeon to the game, before building the mod you "MUST" open this file in the
devkit and hit save to ensure it will be shipped in the mod pak file =)

The main file of interest is "BP_Dungeon_SkyFade", this allows us to use one of the games 
default AreaSpecificParams from UltraDynamicSky_BP and take partial control of the 
skylight/skybox, an example of its use can be found in "hadeDungeon_Gameplay".

BP_Dungeon_SkyFade acts as a trigger box that will move the AreaSpecificParams when you 
enter/exit, this should cover your whole area and be a little bigger then the Dungeon Volume
to allow the effect fade in, if you get a sudden pop in of the effect it normally means 
you need to increase the size of the BP_Dungeon_SkyFade actor.

BP_Dungeon_SkyFade options:
Area To Hijack
	- this is an area name form the AreaSpecificParams array in UltraDynamicSky (see ConanSandbox.umap)
	- that we will use for our dungeon

Force Dark
	- enabling this option will build a new temporary array element and use LightCurve/FogCurve
	- giving a little more control of the lighting
	
Dungeon Location
	- center location of your dungeon, this is only needed if you don't set DungeunVolume
	
Dungeon Volume
	- Post Process Volume, this is used to add PP effects to your dungeon, the players distance to this
	- this will also be used to fade the sky effects in if used

Dungeon Priority
	- The priority of your area settings, higher priority means your area will override others 
	- (the Sandstorm uses 8)

Dungeon Radius
	- the distance it takes to fade the sky effect in???? (may differ if not using Dungeon Volume)
	- but we cannot see inside UltraDynamicSky to see :P
	
Dungeon Fade Exponent
	- we cannot see inside UltraDynamicSky, but maybe the strength.
	
Notes:
With a little editing you should be able to create a new array from scratch to have full control
of the sky, see the Force Dark option and the "BuildPatchArrays" function ;)

If you have issues with the dungeon not loading in the game, you might need to open ConanSandbox.umap,
load the dungeon level then assign it to layer unassigned in world composition.
```


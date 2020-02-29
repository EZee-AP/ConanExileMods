Warning! Requires a pretty decent PC and assumes your map is the same size as the conan exile map (806400 {-403200}, {403200}).

RenderMap_8x8_Heat_4096
Can be used as a guide when creating your heatmap (usefull app https://cdn.discordapp.com/attachments/273869365353644032/536498268293562368/TempCalc.zip).

RenderMap_8x8_Offset_4000
Will create a temporary map image you can use as a template to create your map image (T_FullscreenMap).

How-To
1: Copy both blueprints to your local folder.
2: Create 2 "RenderTargets" (Materials & Textures->Render Target), 1 4000x4000, 1 4096x4096.
3: Open "RenderMap_8x8_Offset_4000" and set the 4000x4000 render target to the "Texture Target" of the SceneCaptureComponent2D.
3: Open "RenderMap_8x8_Heat_4096" and set the 4096x4096 render target to the "Texture Target" of the SceneCaptureComponent2D.
4: Temporarily disable level streaming in the viewport "Viewport->Advanced Settings->Stream Levels Automatically When Camera Is Moved" should be unchecked.
5: load your map and set "all" heightmaps to be displayed (you should be able to see your whole map).
6: Drag the 2 blueprints into your level. =)
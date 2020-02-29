### ExampleWidget 
```
A collection of widgets that can be used as examples
for saving data to the database (on the server) and/or
the client PC, or to the player character file on the 
database (server).

All widgets fully support mod control panel when you set the
actor tags up in your mod controller.

AdminWidget - saves data top the server database
UserWidget - saves data to the client PC (SaveGame object)
MultiUserWidget - saves admin options to the server database, saves user options to the client PC, there is an admin check in the widget to disable admin options to none admins
SaveToPlayerWidget - saves player specific data to the player character on the server database

Mod Control Panel Spcific
AdminWidget - only available to admins in MCP
UserWidget - available to all users in MCP
MultiUserWidget - available to all users in MCP, admin options will be hidden to none admins
SaveToPlayerWidget - available to all users

```
# Godot 4 Button Export Plugin
This is a plugin for Godot 4 that allows you to export a button that runs a function from a tool script.
To add a button, first make a bool export variable. Then, name the variable the name of the function you want it to call, followed by "_button".

For example, to export a button for a function called "refresh_list", you'd just need to add this line of code to your script:
``` GDScript
@export var refresh_list_button: bool
```

extends Button

var edited_object : Object
var edited_property : String

func initialize() -> void:
	pressed.connect(button_control_pressed)
	text = edited_property.trim_suffix("_button").capitalize()

func button_control_pressed() -> void:
	edited_object.call(edited_property.trim_suffix("_button"))

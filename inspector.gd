extends EditorInspectorPlugin

const button_script := preload("res://addons/button-export/button.gd")

func _can_handle(object: Object) -> bool:
	var script := object.get_script()
	if script != null and script.is_tool():
		return true
	return false

func _parse_property(object : Object, type : Variant.Type, name : String, hint_type : PropertyHint,
		hint_string : String, usage_flags : PropertyUsageFlags, wide : bool) -> bool:
	if type == TYPE_BOOL and name.ends_with("_button"):
		var button_instance := button_script.new()
		button_instance.edited_object = object
		button_instance.edited_property = name
		button_instance.initialize()
		add_custom_control(button_instance)
		return true
	return false

@tool
extends EditorPlugin

const inspector_script := preload("res://addons/button-export/inspector.gd")
var inspector_instance : EditorInspectorPlugin

func _enter_tree() -> void:
	inspector_instance = inspector_script.new()
	add_inspector_plugin(inspector_instance)

func _exit_tree() -> void:
	remove_inspector_plugin(inspector_instance)

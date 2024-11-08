extends Control



func _on_play_pressed() -> void:
	get_tree().change_scene_to_file("res://main_compatible.tscn")


func _on_options_pressed(options_path) -> void:
	get_tree().change_scene_to_file(options_path) 


func _on_quit_pressed() -> void:
	get_tree().quit()

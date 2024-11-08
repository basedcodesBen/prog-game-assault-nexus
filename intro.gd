extends Node2D  

func _ready() -> void:
	$AnimationPlayer.play("Fade in")
	var timer1 = get_tree().create_timer(6)
	timer1.timeout.connect(_on_fade_out)

func _on_fade_out():
	$AnimationPlayer.play("Fade out") 
	
	var timer2 = get_tree().create_timer(3)
	timer2.timeout.connect(_on_change_scene)

func _on_change_scene():
	get_tree().change_scene_to_file("res://menu.tscn")  

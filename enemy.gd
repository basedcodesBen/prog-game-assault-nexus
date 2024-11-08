extends CharacterBody2D

class_name Enemy
var speed: float = 60.0

@onready var target = $CharacterBody2D

func _physics_process(delta: float) -> void:
	if target == null:
		get_tree().get_nodes_in_group("Player")
	if target != null:
		velocity = position.direction_to(target.position) * speed
		move_and_slide()

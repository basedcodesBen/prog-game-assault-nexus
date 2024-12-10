extends CharacterBody2D

@export var player_reference : CharacterBody2D
var direction : Vector2
@export var speed : float

func _physics_process(delta):
	velocity = (player_reference.position - position).normalized() * speed
	move_and_collide(velocity * delta)

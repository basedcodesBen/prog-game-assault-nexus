extends CharacterBody2D

# Attack
#var bullet = preload("res://boolets.tscn")
#
## Attack Nodes
#@onready var BulletTimer = get_node("%BulletTimer")
#@onready var BulletAttackTimer = get_node("%BulletAttackTimer")
#
#var bullet_ammo = 0
#var bullet_baseammo = 1
#var bullet_attackspeed = 1.5
#var bullet_level = 1
#
#var enemy_close = []


@export
var speed : float  # speed in pixels/sec

@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

#func _ready() -> void:
	#attack()

func _physics_process(delta):
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * speed

	move_and_collide(velocity * delta)
	if direction != Vector2.ZERO:
		if direction.x > 0:
			animated_sprite.play("right")
			animated_sprite.flip_h = false
		elif direction.x < 0:
			animated_sprite.play("right")
			animated_sprite.flip_h = true
		#elif direction.y > 0:
			#animated_sprite.play("down")
		#elif direction.y < 0:
			#animated_sprite.play("up")
		else:
			animated_sprite.play("default")

#func attack():
	#if bullet_level > 0:
		#BulletTimer.wait_time = bullet_attackspeed
		#if BulletTimer.is_stopped():
			#BulletTimer.start()
#
#func _on_bullet_attack_timer_timeout() -> void:
	#if bullet_ammo > 0:
		#var bullet_attack = bullet.instantiate()
		#bullet_attack.position = position
		#bullet_attack.target = get_random_target()
		#bullet_attack.level = bullet_level
		#add_child(bullet_attack)
		#bullet_ammo -= 1
		#if bullet_ammo > 0:
			#BulletAttackTimer.start()
		#else:
			#BulletAttackTimer.stop()
		#
#func get_random_target():
	#if enemy_close.size() > 0:
		#return enemy_close.pick_random().global_position
	#else:
		#return Vector2.UP
#
#
#func _on_bullet_timer_timeout() -> void:
	#bullet_ammo += bullet_baseammo
	#BulletAttackTimer.start()
#
#
#func _on_enemy_detection_area_body_entered(body: Node2D) -> void:
	#if not enemy_close.has(body):
		#enemy_close.append(body)
#
#
#func _on_enemy_detection_area_body_exited(body: Node2D) -> void:
	#if enemy_close.has(body):
		#enemy_close.erase(body)

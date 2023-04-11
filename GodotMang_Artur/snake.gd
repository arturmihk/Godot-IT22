extends KinematicBody2D


export var rocket = preload("res://enemyb.tscn")
var shoot_timer = 5
var shoot_interval = 1
var bullet_speed =100
var bullet_damage = 10

func _process(delta):
	$AnimatedSprite.play("idle")
	shoot_timer += get_process_delta_time()
	if shoot_timer >= shoot_interval:
		shoot()


func shoot():
	var bullet_instance = rocket.instance()
	var player = get_node("/root/Node2D/Player")
	if player != null:
		var player_direction = (player.global_position - global_position).normalized()
		bullet_instance.global_position = global_position
		bullet_instance.velocity = (player_direction * bullet_speed)
		get_parent().add_child(bullet_instance)


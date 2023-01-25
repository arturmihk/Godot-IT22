extends Node
#Artur-Mihk Peterso
#25.01.2023
#yl6
var rng = RandomNumberGenerator.new()
 
#hoitakse töös
func _process(delta):
	var ammo = 5
	var vaenlane = 100
	if Input.is_action_just_pressed("Lask"):
		while vaenlane > 0:
			rng.randomize()
			var dmg = rng.randi_range(1, 15)
			print("piu piu")
			ammo -= 1
			var pihtas = bool(randi() % 2)
			if ammo > 0:
				vaenlane -= dmg
				
	#if Input.is_action_just_pressed("Laadimine"):

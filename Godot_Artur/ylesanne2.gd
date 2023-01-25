extends Node
#Artur-Mihk Peterso
#25.01.2023
#yl2




var rng = RandomNumberGenerator.new()
func _ready():
	print("---------------Ylesanne2")
	rng.randomize()
	var raha = rng.randi_range(1, 3500)
	var ak47 = 2000
	if raha > ak47:
		print("Teil on piisavalt raha ak47 jaoks")
	else:
		print("Teil pole piisavalt raha ak47 jaoks, teil on veel vaja:", ak47-raha)
		

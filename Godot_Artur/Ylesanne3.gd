extends Node
#Artur-Mihk Peterso
#25.01.2023
#yl3
var rng = RandomNumberGenerator.new()
func _ready():
	print("---------------Ylesanne3")
	var vastanen = "P2"
	var vastane = 100

	var tegelanen = "P1"
	var tegelane = 100
	while vastane > 0 and tegelane > 0:
		rng.randomize()
		var hit = rng.randi_range(1, 15)
		var hit2 = rng.randi_range(1, 20)
		vastane-=hit2
		print(tegelanen," ","Hit:",hit2," ",vastanen," Life:",vastane)
		tegelane-=hit
		print(vastanen,"Hit:",hit," ",tegelanen,"Life:",tegelane)
		
	if vastane > 0:
		print("Game Over!")
		print("Player2 WINS!")
	else:
		print("Game Over!")
		print("Player1 WINS!")

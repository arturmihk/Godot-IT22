#Artur-Mihk Peterso
#25.01.2023
#yl6
extends Node
var rng = RandomNumberGenerator.new()

var ammo = 5
var vaenlane = 100

var lasud = 0.0
var plasud = 0.0
func _ready():
	print("--------------------------Yl6")
	
	


#hoitakse töös
func _process(_delta):
	$Taustapilt/Ammo.text = "Ammo: %s" % ammo
	$Taustapilt/Elud.text = "Elud: %s" % vaenlane
	$Taustapilt/Score.text = "Punktid: %s" % plasud


	if Input.is_action_just_pressed("Lask"):
		var pihtas = bool(randi() % 2)
		rng.randomize()
		var dmg = rng.randi_range(5, 15)
		if ammo >= 1:
			if vaenlane >=1:
				if pihtas == true:
					$Taustapilt/PiuPiu.text = "Piu Piu"
					vaenlane -= dmg 
					print("pihtas ", dmg, " Elud:", vaenlane)
					plasud += 1
				elif pihtas == false:
					$Taustapilt/PiuPiu.text = "Piu Piu"
					vaenlane -= 0
					print("möödas -0 Elud:",vaenlane)
				lasud += 1
				ammo -= 1 
				print("Salves:",ammo)
				print("piu piu")
			else:
				print("-----------Mäng Läbi-----------")
				print("punktid:",plasud)
				print("Laskude arv:",lasud)
				var effektiivsus = round(plasud/lasud*100)
				
				print("Effektiivsus:",effektiivsus,"%")
				
				
				get_tree().quit()
		else:
			print("Vaja laadida")
	if Input.is_action_just_pressed("Laadimine"):
		print("Laadimine")
		ammo = 5
		print("Salves: ",ammo)

extends Node
var rng = RandomNumberGenerator.new()

var skoorP=0
var skoorE=0


 
func _process(delta):
	$TextureRect/punktid1.text = "Skoor: %s" %skoorP
	$TextureRect/punktid2.text = "Skoor: %s" %skoorE
	if skoorE == 3:
		var kaotus = "Mingi TONT voitis"
		$TextureRect/Tulemus.text = "Tulemus: %s" %kaotus
		$TextureRect/paber.disabled = true
		$TextureRect/KIVI.disabled = true
		$TextureRect/kaarid.disabled = true
	elif skoorP == 3:
		var voit = "Sina voitsid"
		$TextureRect/Tulemus.text = "Tulemus: %s" %voit
		$TextureRect/paber.disabled = true
		$TextureRect/KIVI.disabled = true
		$TextureRect/kaarid.disabled = true
		
		
		
 
func _on_KIVI_pressed():
	$TextureRect/VALIK1.text = "kivi"
	rng.randomize()
	var was = rng.randi_range(1,4)
	if was == 1:
		$TextureRect/VALIK2.text="paber"
	elif was == 2:
		$TextureRect/VALIK2.text="kaarid"
	elif was == 3:
		$TextureRect/VALIK2.text="kivi"
	
	if was == 3:
		skoorE+=0
		skoorP+=0
	elif was == 2:
		skoorP+=1
	elif was == 1:
		skoorE+=1		
	
	
func _on_kaarid_pressed():
	$TextureRect/VALIK1.text = "kaarid"
	rng.randomize()
	var was = rng.randi_range(1,4)
	if was == 1:
		$TextureRect/VALIK2.text="paber"
	elif was == 2:
		$TextureRect/VALIK2.text="kaarid"
	elif was == 3:
		$TextureRect/VALIK2.text="kivi"
		
	if was == 2:
		skoorE+=0
		skoorP+=0
	elif was == 1:
		skoorP+=1
	elif was == 3:
		skoorE+=1

func _on_paber_pressed():
	$TextureRect/VALIK1.text = "paber"
	rng.randomize()
	var was = rng.randi_range(1,4)
	if was == 1:
		$TextureRect/VALIK2.text="paber"
	elif was == 2:
		$TextureRect/VALIK2.text="kaarid"
	elif was == 3:
		$TextureRect/VALIK2.text="kivi"
	
	if was == 1:
		skoorE+=0
		skoorP+=0
	elif was == 3:
		skoorP+=1
	elif was == 2:
		skoorE+=1
		
		
 

	
	

 
func _on_restard_pressed():
	get_tree().paused = false
	
	get_tree().reload_current_scene()

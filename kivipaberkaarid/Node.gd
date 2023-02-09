#Artur-Mihk Peterso
#09.02.2023
#yl8
extends Node
 
var sscore = 0
var vscore = 0

const kivi = 0
const kaaird = 1
const paber = 2
func _process(delta):
	if sscore == 10:
		$svoitsid.text="You WIN!"
	elif vscore ==10:
		$svoitsid.text="You LOSE!"
func _on_kivi_pressed():
	
func _on_paber_pressed():
	
func _on_kaarid_pressed():
	
func _on_restart_pressed():
 get_tree().reload_current_scene()


extends Node
 
var summa = 0
 
func _process(delta):
 $vastus.text = str(summa)
 
func _on_kivi_pressed():
 summa+=1
 $pluss_1.text = "valisid"
 $pluss_1.visible = not $pluss_1.visible
 
func _on_paber_pressed():
 summa+=2
 $pluss_2.visible = not $pluss_2.visible
 
func _on_pluss_3_pressed():
 summa+=3
 $pluss_3.visible = not $pluss_3.visible
 

func _on_kaarid_pressed():
 get_tree().reload_current_scene()

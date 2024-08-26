extends CanvasLayer


func _ready():

	pass
	
func _process(delta):
	pass

func _on_sair_pressed():
	get_tree().quit()	


func _on_entrar_pressed():
	get_tree().change_scene_to_file("res://level.tscn")


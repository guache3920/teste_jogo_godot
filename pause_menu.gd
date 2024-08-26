extends CanvasLayer


var game_pause = false

func _ready():
	visible = false

func _unhandled_input(event):
	if event.is_action_pressed("pause"):
		game_pause = !game_pause
		get_tree().paused = game_pause
		visible = game_pause

func _on_pause_pressed():
	get_tree().quit()
	


func _on_voltar_pressed():
	get_tree().paused = false
	visible = false


func _on_reinicar_pressed():
	get_tree().paused = false
	Global.soma_ponto = 0
	Global.soma_vida = 3
	get_tree().change_scene_to_file("res://level.tscn")
	

extends CanvasLayer

@onready var player = $"../player"
@onready var player_scene = preload("res://player.gd")





func _ready():
	visible = false
	#Global.player = player
	player.morri.connect(resetar_jogo)	
	Global.respaw_player()
	
		
func resetar_jogo():
	print("morri morrido")
	visible = true
	get_tree().paused = true
	
func _unhandled_input(event):
	if event.is_action_pressed("reset"):
		_on_volta_morto_pressed()

func _on_volta_morto_pressed():	
	get_tree().paused = false
	#var player = player_scdene.instantiate()
	Global.mortes = Global.mortes+1
	print(Global.mortes)
	get_tree().change_scene_to_file("res://level.tscn")
	visible = false
	Global.soma_ponto = 0
	Global.soma_vida = 3
	print("voltaaaaa")
	
	
	

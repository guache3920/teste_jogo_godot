extends Area2D

@onready var player = $"../../player"

# Called when the node enters the scene tree for the first time.


# Called every frame. 'delta' is the elapsed time since the previous frame.



func _on_body_entered(body):
	if body.name == "player":
		player.encosta_espinho = true
		print(player.encosta_espinho)
		await $"../../player/animação_player".animation_finished
		player.emit_signal("morri")
	else :
		player.encosta_espinho = false
		
		
		
		


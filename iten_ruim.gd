extends Area2D

@onready var player = $"../../player"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.



func _on_body_entered(body):
	if body.name == "player":
		
		player.levou_dano()
		queue_free()
		
		Global.soma_vida = Global.soma_vida-1
		print(Global.soma_vida)
		print_debug("player.Vida")
		
		
		
	
			
		
		

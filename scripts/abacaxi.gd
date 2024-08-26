extends Area2D

@onready var controle_timer = $"../../hud/Control4" as Control


var adc = 30

func _ready():
	pass
	
func _process(delta):
	pass
		


func _on_body_entered(body):
	if body.name == "player":
		controle_timer.segundos += 30
		$"animação_abacaxi".play("colect_abacaxi")
		await $"animação_abacaxi".animation_finished
		queue_free()

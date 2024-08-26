extends Area2D

var ponto := 3



func _on_body_entered(body):
	if body.name == "player":
		Global.soma_ponto += ponto 
		print(Global.soma_ponto)
		$"animação_cherry".play("colect_cherry")
		await $"animação_cherry".animation_finished
		queue_free()


extends Area2D
var ponto:=1


func _on_body_entered(body):
	if body.name == "player":
		Global.soma_ponto += ponto 
		print(Global.soma_ponto)
		$sprite_coletavel.play("coletado")
		await $sprite_coletavel.animation_finished
		queue_free()

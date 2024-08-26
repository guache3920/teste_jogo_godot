extends Node2D

const delay:= 1.0

@onready var plataforma:=$plataforma as AnimatableBody2D
@export var move_speed:= 3.0
@export var distancia:= 192
@export var horizontal:= true

var move_direction = 2
var segue:= Vector2.ZERO
var centro:= 16
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func phisics_process(delta):
	plataforma.position = plataforma.position.lerp(segue, 0.5)
	
func plataforma_move():
	var	move_direction = Vector2.RIGHT * distancia if horizontal else Vector2.UP * distancia
	var duração= move_direction.length() / float(move_speed * centro)
	
	var plataforma_tween = create_tween()
	plataforma_tween.tween_property(self, "segue", move_direction, duração)
	

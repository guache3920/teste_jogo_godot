extends Control

#@onready var tempo = $clock_tempo as Timer
@onready var tempo = $MarginContainer/HBoxContainer/Tempo

var count = 0
@onready var timer = $Timer

var minutos = 0
var segundos = 0

@onready var player = $"../../player"

@export_range(0,5) var limite_minutos := 1
@export_range(0,59) var limite_segundos := 0

# Called when the node enters the scene tree for the first time.
func _ready():
	tempo.text = str("%02d" % limite_minutos  ) + ":" + str("%02d" % limite_segundos)
	segundos = limite_segundos
	minutos = limite_minutos
	resetar_tempo
# Called every frame. 'delta' is the elapsed time since the previous frame.

func _process(delta):	
	if segundos ==0 && minutos == 0:
			player.emit_signal("morri")
	
	

func _on_timer_timeout():
	
	if segundos >= 60:
		minutos += 1
		segundos %= 60
		
	
	
	if segundos == 0 :
		if minutos > 0:
			minutos -= 1
			segundos = 60
	segundos -= 1	
	tempo.text = str("%02d" % minutos  ) + ":" + str("%02d" % segundos)
	
func resetar_tempo ():
	minutos = limite_minutos
	segundos = limite_segundos
	

			
	
	

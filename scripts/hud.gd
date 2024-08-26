extends CanvasLayer


@onready var vida = $Control/MarginContainer/HBoxContainer/vida as Label
@onready var ponto = $Control2/MarginContainer/HBoxContainer/pontos as Label
@onready var player = $"../player"
@onready var morte = $MarginContainer/HBoxContainer/morte as Label




func _ready():
	
	print(Global.soma_vida)
	vida.text = str("vida:","%02d" % Global.soma_vida)
	ponto.text = str("pontos:","%04d" % Global.soma_ponto)
	morte.text = str("mortes:","%03d" % Global.mortes)

func _process(delta):
	ponto.text = str("pontos:","%04d" % Global.soma_ponto)
	vida.text = str("vida:","%02d" % Global.soma_vida)
	morte.text = str("mortes:","%03d" % Global.mortes)
	

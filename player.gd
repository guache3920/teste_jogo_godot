extends CharacterBody2D


const SPEED = 200.0
const JUMP_VELOCITY = -300.0


var ta_tomando = false
var encosta_ruim = false
var encosta_espinho = false
var Vida = 3
signal morri
# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

@onready var animação := $"animação_player" as AnimatedSprite2D
var esta_pulando:=false 
func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor() && !encosta_ruim:
		velocity.y += gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("pulo") and is_on_floor() && !encosta_ruim && !encosta_espinho:
		velocity.y = JUMP_VELOCITY
		esta_pulando = true
	elif is_on_floor():
		esta_pulando = false	
	
	

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("esquerda", "direita")
	if direction && !encosta_ruim && !encosta_espinho:
		velocity.x = direction * SPEED
		animação.scale.x = direction
		
		if !encosta_ruim:
			
			if !esta_pulando:
				animação.play("run")
			else:
				animação.play("jump")	
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		if !encosta_espinho && !encosta_ruim:
			animação.play("idle")
		elif !encosta_espinho && !encosta_ruim:
			animação.play("idle")
		elif encosta_espinho && !encosta_ruim:
			animação.play("hit")
		
		
						
		
	
		

	move_and_slide()

	
func levou_dano():
	Vida = Global.soma_vida
	encosta_ruim = true
	animação.play("hit")
	await $"animação_player".animation_finished
	encosta_ruim = false
			
	
	if Global.soma_vida == 0:
		emit_signal("morri")
		
		
		

extends CharacterBody2D

const velocidad = 150
@onready var animacion = $AnimatedSprite2D

func _physics_process(delta):
	if Input.is_action_pressed("IZQUIERDA"):
		position.x -= velocidad * delta
		animacion.play("izquierda")
	elif Input.is_action_pressed("ABAJO"):
		position.y += velocidad * delta
		animacion.play("abajo")
	elif Input.is_action_pressed("ARRIBA"):
		position.y -= velocidad * delta
		animacion.play("arriba")
	elif Input.is_action_pressed("DERECHA"):
		position.x += velocidad * delta
		animacion.play("derecha")
	else:
		animacion.stop()

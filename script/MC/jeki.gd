extends CharacterBody2D

@export var speed: float = 100.0
@export var sprite: AnimatedSprite2D

func _physics_process(delta):
	var direction  = 0
	
	if Input.is_action_pressed("kanan"):
		direction = 1
		sprite.flip_h = false
		sprite.play("run")
	elif Input.is_action_pressed("kiri"):
		direction = -1
		sprite.flip_h = true
		sprite.play("run")
	else :
		sprite.play("idle")
		
	velocity.x = direction * speed
	move_and_slide()

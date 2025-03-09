extends CharacterBody2D

@export var sprite: AnimatedSprite2D
@export var area2d: Area2D

var player_near = false

func _ready():
	area2d.body_entered.connect(_on_area_2d_body_entered)
	area2d.body_exited.connect(_on_area_2d_body_exited)
	sprite.play("Idle")

func _on_area_2d_body_entered(body):
	if body.name == "Jeki":
		player_near = true


func _on_area_2d_body_exited(body):
	if body.name == "Jeki":
		player_near = false	
		
func _process(delta):
	if player_near and Input.is_action_just_pressed("action"):
		Dialogic.start("one")

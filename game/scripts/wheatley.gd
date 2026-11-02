extends CharacterBody2D

@export var speed = 400
@onready var sprite = $Sprite2D
var coins = 0

func get_input():
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * speed
	if (input_direction.x > 0):
		sprite.flip_h = false
	elif (input_direction.x < 0):
		sprite.flip_h = true

func _physics_process(delta):
	get_input()
	move_and_slide()

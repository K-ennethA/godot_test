extends CharacterBody2D

@export var speed = 400
@export var rotation_speed = 1.5



func get_input():
	var input_direcion = Input.get_vector("left", "right", "up", "down")
	velocity = input_direcion * speed

func _physics_process(delta):
	get_input()
	move_and_slide()

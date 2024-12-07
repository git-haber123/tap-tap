extends CharacterBody2D

@onready var player = $"."
var speed = 200
var speed_up = 210
var dvizh = true
@onready var camera = $Camera2D
var value = 0
#var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _physics_process(delta):
	#camera.rotation += 0.001
	#if is_on_ceiling_only():
		#get_tree().change_scene_to_file("res://menu.tscn")
	if Input.is_action_just_pressed("pum"):
		value += 1
		
	if value % 2 != 0:
		dvizh = false
		
	else:
		dvizh = true
		
	if dvizh:
		player.position.y -= speed * delta - 1.5
		player.position.x += speed * delta + 1.6
		
	else:
		player.position.y -= speed_up * delta
		player.position.x -= speed_up * delta
	
	if Input.is_action_just_pressed("pam"):
		get_tree().change_scene_to_file("res://menu_lvl.tscn")
	move_and_slide()

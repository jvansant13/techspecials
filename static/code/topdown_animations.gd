extends AnimatedSprite2D
class_name AnimationController
## This is a basic animation controller for a topdown character with
## 4 direction animations.
## To cut down to 2 direction animations change the up and down animations
## to be the side animations as well
##
## Be sure to set side animation to be true if your side animation faces right
	

@export var character: CharacterBody2D
@export var side_faces_right: bool = true
@export_group("Animations Names")
@export var side_idle: String = "side_idle"
@export var front_idle: String = "front_idle"
@export var back_idle: String = "back_idle"

@export var side_walk: String = "side_walk"
@export var front_walk: String = "front_walk"
@export var back_walk: String = "back_walk"

@export var side_attack: String = "side_attack"
@export var front_attack: String = "front_attack"
@export var back_attack: String = "back_attack"

@export var death: String = "death"



func _physics_process(delta):
	get_direction_flip()
	if character.current_state == character.State.Idle:
		get_idle_animations()
	if character.current_state == character.State.Moving:
		get_move_animations()


func get_idle_animations():
	match character.facing_direction:
		"left":
			play(side_idle)
		"right":
			play(side_idle)
		"up":
			play(back_idle)
		"down":
			play(front_idle)

func get_move_animations():
	match character.facing_direction:
		"left":
			play(side_walk)
		"right":
			play(side_walk)
		"up":
			play(back_walk)
		"down":
			play(front_walk)

func get_direction_flip():
	if side_faces_right:
		if character.facing_direction == "left":
			flip_h = true
		else:
			flip_h = false
	else:
		if character.facing_direction == "right":
			flip_h = true
		else:
			flip_h = false
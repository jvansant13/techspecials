extends CharacterBody2D

@export var sprite: AnimatedSprite2D
@export var speed: float = 100.0
@export var animation_speed: float = 1

enum Direction {
	Left,
	Right,
	Up,
	Down
}

enum State {
	Idle,
	Moving,
	Attack
}

var current_direciton: Direction = Direction.Right
var current_state: State = State.Idle


func _physics_process(delta: float) -> void:
	sprite.speed_scale = animation_speed
	match current_state:
		State.Idle:
			idle_state()
		State.Moving:
			moving_state()
		State.Attack:
			attack_state()
	move_and_slide()

func idle_state():
	get_idle_animations()
	velocity = Vector2.ZERO
	if Input.is_action_pressed("move_left") or Input.is_action_pressed("move_right") or Input.is_action_pressed("move_up") or Input.is_action_pressed("move_down"):
		current_state = State.Moving
	elif Input.is_action_pressed("attack"):
		current_state = State.Attack
	else:
		current_state = State.Idle
	
func moving_state():
	get_direction()
	get_walk_animations()
	velocity = Input.get_vector("move_left","move_right","move_up","move_down") * speed
	if Input.is_action_pressed("attack"):
		current_state = State.Attack
	elif !Input.is_anything_pressed():
		current_state = State.Idle
	
	
func attack_state():
	get_attack_animations()
	velocity = Vector2.ZERO
	await sprite.animation_finished
	current_state = State.Idle
	
	
func get_direction():
	if Input.is_action_pressed("move_left"):
		current_direciton = Direction.Left
	elif Input.is_action_pressed("move_right"):
		current_direciton = Direction.Right
	elif Input.is_action_pressed("move_up"):
		current_direciton = Direction.Up
	elif Input.is_action_pressed("move_down"):
		current_direciton = Direction.Down

		
func get_idle_animations():
	match current_direciton:
		Direction.Left:
			sprite.flip_h = true
			sprite.play("side_idle")
		Direction.Right:
			sprite.flip_h = false
			sprite.play("side_idle")
		Direction.Up:
			sprite.play("back_idle")
		Direction.Down:
			sprite.play("front_idle")

func get_walk_animations():
	match current_direciton:
		Direction.Left:
			sprite.flip_h = true
			sprite.play("side_walk")
		Direction.Right:
			sprite.flip_h = false
			sprite.play("side_walk")
		Direction.Up:
			sprite.play("back_walk")
		Direction.Down:
			sprite.play("front_walk")
			

func get_attack_animations():
	match current_direciton:
		Direction.Left:
			sprite.flip_h = true
			sprite.play("side_attack")
		Direction.Right:
			sprite.flip_h = false
			sprite.play("side_attack")
		Direction.Up:
			sprite.play("back_attack")
		Direction.Down:
			sprite.play("front_attack")
			

		
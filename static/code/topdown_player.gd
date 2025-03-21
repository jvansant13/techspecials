extends CharacterBody2D
class_name TopdownPlayer


@export var speed: float = 100.0
@export_group("Input Actions")
@export var left_action: String = "ui_left"
@export var right_action: String = "ui_right"
@export var up_action: String = "ui_up"
@export var down_action:String = "ui_down"
var movement_keys: Array[String] = [left_action,right_action,up_action,down_action]
var facing_direction: String = "Right"
enum State {Idle, Moving}
var current_state: State = State.Idle


func _physics_process(delta):
	match current_state:
		State.Idle:
			idle_state()
		State.Moving:
			moving_state()
	move_and_slide()


func idle_state():
	# Conditions in this state
	velocity = Vector2.ZERO
    
    ## if adding a new state, add a new elif.
    ## if that state has higher priority, add above this transistion
    ## for example, if attack higher priority than moving:
    ##
    ## if Input.is_action_pressed("attack"):
    ##     current_state = State.Attack
    ## elif Input.is_action_pressed(left_action) or Input.is_action_pressed(right_action) or Input.is_action_pressed(up_action) or Input.is_action_pressed(down_action):
    ##     current_state = State.Moving
    ##
    ## format is:
    ##
    ## if action, input, or criteria is met:
    ##     current_state = State.whatever
    ##

    # How to transition to another state
	if Input.is_action_pressed(left_action) or Input.is_action_pressed(right_action) or Input.is_action_pressed(up_action) or Input.is_action_pressed(down_action):
		current_state = State.Moving


func moving_state():
	# checks and conditions in this state
	if Input.is_action_pressed(left_action):
		facing_direction = "left"
		velocity = Vector2.LEFT * speed
	elif Input.is_action_pressed(right_action):
        facing_direction = "right"
		velocity = Vector2.RIGHT * speed
	elif Input.is_action_pressed(up_action):
        facing_direction = "up"
		velocity = Vector2.UP * speed
	elif Input.is_action_pressed(down_action):
        facing_direction = "down"
		velocity = Vector2.DOWN * speed


    ## read notes in idle_state for more info on state transitions

	# How to transition to another state
	else:
		current_state = State.Idle

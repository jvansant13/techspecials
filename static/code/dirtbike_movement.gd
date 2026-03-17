extends CharacterBody2D
## Sideview dirtbike movement, accelerates, decelerates, and rotates in air.

## CharacterBody2D(rename to player or whatever you want)
## |__sprite(AnimatedSprite2D/Sprite2D)
## |__CollisionShape2D

## Make sure you set up your input map with the names used below or update the direction names

@export var max_speed := 400
@export var acceleration := 600
@export var deceleration := 800
@export var gravity := 900
@export var rotation_speed := 3.0

func _physics_process(delta):
    # Gravity
    if not is_on_floor():
        velocity.y += gravity * delta

    var direction = Input.get_axis("left", "right")

    # Accelerate
    if direction != 0:
        velocity.x += direction * acceleration * delta
        velocity.x = clamp(velocity.x, -max_speed, max_speed)
    else:
        # Slow down when no input
        velocity.x = move_toward(velocity.x, 0, deceleration * delta)


    # Rotation in air
    if not is_on_floor():
        if Input.is_action_pressed("left"):
            rotation -= rotation_speed * delta
        elif Input.is_action_pressed("right"):
            rotation += rotation_speed * delta

    move_and_slide()
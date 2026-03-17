extends CharacterBody2D
## Flappybird style movement, constant gravity and using jump to move upwards

## CharacterBody2D(rename to player or whatever you want)
## |__sprite(AnimatedSprite2D/Sprite2D)
## |__CollisionShape2D

## Make sure you set up your input map with the names used below or update the direction names
@export var gravity := 900
@export var jump_force := -300

func _physics_process(delta):
    velocity.y += gravity * delta

    if Input.is_action_just_pressed("jump"):
        velocity.y = jump_force

    move_and_slide()


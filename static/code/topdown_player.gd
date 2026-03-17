extends CharacterBody2D
## Topdown 8 direction movement: Up, down, left, right and all the diagonals

## CharacterBody2D(rename to player or whatever you want)
## |__sprite(AnimatedSprite2D/Sprite2D)
## |__CollisionShape2D


## Make sure you set up your input map with the names used below or update the direction names
var speed = 400

func _physics_process(delta) -> void:
  var direction = Input.get_vector("left", "right", "up", "down")
  velocity = direction * speed

  move_and_slide()
extends Area2D
## Pickup item like a coin, increases score

##  Area2D(rename this to your item name)
##  |__sprite(AnimatedSprite2D/Sprite2D)
##  |__CollisionShape2D

@export var value := 1

func _on_body_entered(body):
    if body.is_in_group("player"):
        # if your pickup item does something other then add score then you need to 
        # make a function under the player script for it and call it here
        body.add_score(value)
        queue_free() # removes item after effect(score) is applied to your player

  

## Function for score add this to player script
var score = 0 # add this to your variables near the top on your player script.

func add_score(value):
  # Add this function to your player script
  score += value
  print(score)


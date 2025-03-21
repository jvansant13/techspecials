extends Area2D
class_name Coin
## This Script can easily be modified for a variety of pickup items.
## It looks to see if the character has a function called collect_coin,
## if so it calls it then it deletes itself


## Sees if player has function to collect coin, if so it does
func _on_body_entered(body: Node2D) -> void:
	if body.has_method("collect_coin"):
		body.collect_coin
		queue_free()
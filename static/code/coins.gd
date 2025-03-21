extends Area2D
class_name Coin


## Sees if player has function to collect coin, if so it does
func _on_body_entered(body: Node2D) -> void:
	if body.has_method("collect_coin"):
		body.collect_coin
		queue_free()
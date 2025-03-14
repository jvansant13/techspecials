class_name HealthComponent extends Node


signal zero_hitpoints_reached()
@export var max_hitpoints: int = 3
var hitpoints


func _ready() -> void:
	print(self.get_parent().get_parent().name, hitpoints)
	hitpoints = max_hitpoints


func apply_damage(hp: HitpointModifier) -> void:
	hitpoints -= hp.hp_modifier
	if hitpoints <= 0:
		hitpoints = 0
		zero_hitpoints_reached.emit()
	print(self.get_parent().get_parent().name, hitpoints)


func appy_healing(hp: HitpointModifier) -> void:
	hitpoints += hp.hp_modifier
	if hitpoints > max_hitpoints:
		hitpoints = max_hitpoints
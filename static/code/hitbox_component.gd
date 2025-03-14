class_name HitboxComponent extends Area2D


signal took_damage(hp: HitpointModifier)
@export var health_node: HealthComponent
@export var group: String


func _init() -> void:
	monitorable = true
	monitoring = false
	collision_layer =64
	collision_mask = 0


func _ready() -> void:
	if group:
		if get_tree().has_group(group):
			add_to_group(group)


func take_damage(hp: HitpointModifier) -> void:
	if health_node:
		health_node.apply_damage(hp)
	took_damage.emit(hp)

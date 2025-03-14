class_name HurtboxComponent extends Area2D


@export var target_groups: Array[String]
var targets: Array[HitboxComponent]


func _ready() -> void:
	# on creation this function connects these signals with these functions
	area_entered.connect(_on_area_entered)
	area_exited.connect(_on_area_exited)


func _init() -> void:
	# this function makes sure that the hurtbox can see the hitbox
	# and not the other way around
	monitorable = false
	monitoring = true
	collision_layer = 0
	collision_mask = 64


func deal_damage(attack: HitpointModifier):
	# attack data should be built in the delivering character
	if !targets.is_empty():
		if attack.effect_type == 1: # AOE
			for target in targets:
				target.take_damage(attack)
		else: # single
			targets[0].take_damage(attack)


func _on_area_entered(hitbox: Area2D) -> void:
	if hitbox is HitboxComponent:
		for target_group in target_groups:
			if hitbox.is_in_group(target_group):
				targets.append(hitbox)
		print(targets)


func _on_area_exited(hitbox: Area2D) -> void:
	if hitbox in targets:
		targets.erase(hitbox)

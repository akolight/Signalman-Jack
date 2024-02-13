extends Node2D

@export var move_speed = 80


func _process(delta):
	get_parent().set_progress(get_parent().get_progress() + move_speed * delta)

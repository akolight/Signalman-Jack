extends Node
var switch = false
@onready var switch_sprite = $SwitchSprite
@onready var switch_state = $SwitchState
@onready var mt_1_straight_path_follow = $Node/MT1StraightPath/MT1StraightPathFollow
@onready var mt_2_straight_path_follow = $Node/MT2StraightPath/MT2StraightPathFollow
var selected_path = mt_1_straight_path_follow
var move_speed = 0
var path_array
var path_dict = {
	0: "mt1 straight"
}

func _ready():
	switch_state.set_text(str(switch))

func _physics_process(delta):
	pass
	
func pull_switch():
	var tween = get_tree().create_tween()
	tween.tween_property(switch_sprite,"rotation_degrees",-30,1.0)
	#switch_sprite.global_rotation_degrees = -30

func return_switch():
	var tween = get_tree().create_tween()
	tween.tween_property(switch_sprite,"rotation_degrees",0,1.0)
	#switch_sprite.global_rotation_degrees = 0
	
func _on_switch_button_pressed():
	if switch == false:
		pull_switch()
		switch = true
		switch_state.set_text(str(switch))
	else:
		return_switch()
		switch = false
		switch_state.set_text(str(switch))

func call_train():
	pass


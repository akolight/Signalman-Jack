extends PathFollow2D


var train = preload("res://train.tscn").instantiate()

func _on_train_button_pressed():
	add_child(train)


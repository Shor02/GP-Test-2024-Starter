extends Button

@onready var slidercount: = $HSlider
var fallingsprite:PackedScene

func _ready():
	fallingsprite = load("res://fallingsprite.tscn")

func _on_pressed():
	var s = get_viewport().size
	for n in slidercount.value:
		var newfallingsprite = fallingsprite.instantiate()
		newfallingsprite.position.x = randf_range(20, s.x - 20)
		newfallingsprite.position.y = randf_range(20, s.y - 20)
		get_tree().root.add_child(newfallingsprite)

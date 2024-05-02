extends CollisionShape2D


@export var explosion:PackedScene
@onready var rb2d = $".."


func _on_rigid_body_2d_body_entered():
	print("ooglyboogly")

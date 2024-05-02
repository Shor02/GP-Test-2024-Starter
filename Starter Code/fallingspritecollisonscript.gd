extends CollisionShape2D


var explosion:PackedScene

func _ready():
	explosion = load("res://explosion.tscn")

func _on_rigid_body_2d_body_entered(body):
	var explode = explosion.instantiate()
	get_tree().get_root().add_child(explode)
	explode.global_position = self.global_position
	explode.emitting = true
	$"..".queue_free()

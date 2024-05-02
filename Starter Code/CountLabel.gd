extends Label
@onready var slidercountvalue = $".."
@onready var countlabel = $"."
# Called when the node enters the scene tree for the first time.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	countlabel.text = ("slidercountvalue.value")
	

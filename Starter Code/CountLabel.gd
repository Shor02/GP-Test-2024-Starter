extends Label
@onready var slidercountvalue = $".."
@onready var countlabel = $"."
# Called when the node enters the scene tree for the first time.

func _process(delta):
	countlabel.text = str(slidercountvalue.value)

	

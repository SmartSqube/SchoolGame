extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$UserList.list = [{
		"name":"Валера", "icon":"res://icon.png"
	},{
		"name":"Лёха", "icon":"res://icon.png"
	},{
		"name":"Елисей", "icon":"res://icon.png"
	},{
		"name":"Валера", "icon":"res://icon.png"
	},{
		"name":"Лёха", "icon":"res://icon.png"
	},{
		"name":"Елисей", "icon":"res://icon.png"
	}]

	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

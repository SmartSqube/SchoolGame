extends TextureButton

export var nameAvatar = ""
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	set_normal_texture(load("res://scenes/users/components/Avatar/avatars/"+nameAvatar+".jpg"))
	pass # Replace with function body."texture_normal"


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

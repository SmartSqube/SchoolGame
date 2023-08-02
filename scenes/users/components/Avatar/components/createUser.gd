extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():

	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_ok_pressed():
	if $LineEdit.text == "":
		$Label.text = "Пожуй листа и введи название пользывателя"
	else:
		DB.addUser({
			"name":$LineEdit.text, "icon":"res://icon.png"
		})
		DB.saveGame()
		get_tree().change_scene("res://scenes/users/Users.tscn")
	pass # Replace with function body.

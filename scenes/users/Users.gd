extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var list = []

# Called when the node enters the scene tree for the first time.
func _process(delta):
	$UserList.list = list
	pass # Replace with function body.




func _on_UserList_onClickCard(value):
	print("click user ", value)
	pass # Replace with function body.


func _on_UserList_onCreateCard():
	list.append({
		"name":"Добавлино", "icon":"res://icon.png"
	})
	pass # Replace with function body.

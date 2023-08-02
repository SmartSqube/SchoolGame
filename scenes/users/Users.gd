extends Control



func _process(delta):
	var list = DB.getUserList()
	$UserList.list = list




func _on_UserList_onClickCard(value):
	print("click user ", value)



func _on_UserList_onCreateCard():
	DB.addUser({
		"name":"Добавлино", "icon":"res://icon.png"
	})
	DB.saveGame()

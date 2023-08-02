extends Control



func _process(delta):
	var list = DB.getUserList()
	$UserList.list = list




func _on_UserList_onClickCard(value):
	print("click user ", value)



func _on_UserList_onCreateCard():
	get_tree().change_scene("res://scenes/users/components/Avatar/components/createUser.tscn")
	

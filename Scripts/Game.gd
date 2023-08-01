extends Control


func _ready():
	$Label.text = "%s" % DB.getCount()
	pass
	
func _on_Save_pressed():
	DB.setCount(DB.getCount()+1)
	$Label.text = "%s" % DB.getCount()
	DB.saveGame()

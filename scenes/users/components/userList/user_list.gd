extends ScrollContainer

class_name UserList

var Card = load("res://scenes/users/components/userList/Card.tscn")
export var list = []

signal onClickCard
signal onCreateCard


func _ready():
	pass 
	
func _process(delta):	
	var cardCount = list.size() + 1
	while  cardCount > $Grid.get_child_count():
		var card = Card.instance()
		card.connect("pressed", self, "_onClickCard")
		$Grid.add_child(card)
		
	while cardCount < $Grid.get_child_count():
		$Grid.remove_child($Grid.get_child($Grid.get_child_count()-1))
		
	
	for i in range(0, list.size(), 1):
		var card = $Grid.get_child(i)
		var item = list[i]
		card.label = item.name
		card.icon = item.icon
		
	var card := $Grid.get_child($Grid.get_child_count()-1) as Card
	if card:
		$Grid.columns = get_viewport_rect().size.x / card.rect_size.x
		card.label = "+"
	
	
func _onClickCard(value):
	if value == "+":
		emit_signal("onCreateCard")
	else:
		emit_signal("onClickCard",value)


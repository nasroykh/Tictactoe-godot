extends Control

onready var Button1 = $GlobalContainer/Row1/Button1
onready var Button2 = $GlobalContainer/Row1/Button2
onready var Button3 = $GlobalContainer/Row1/Button3
onready var Button4 = $GlobalContainer/Row2/Button4
onready var Button5 = $GlobalContainer/Row2/Button5
onready var Button6 = $GlobalContainer/Row2/Button6
onready var Button7 = $GlobalContainer/Row3/Button7
onready var Button8 = $GlobalContainer/Row3/Button8
onready var Button9 = $GlobalContainer/Row3/Button9

var player = true
var icon
var boardGame = [["0", "1", "2"],
		["3", "4", "5"],
		["6", "7", "8"]]
		
func _ready():
	pass

func switchAndCheckPlayer():
	player = !player	
	if (player):
		icon = load("res://X.png")
	else: 
		icon = load("res://O.png")

func checkWinner():
	if (((boardGame[0][0] == boardGame[0][1]) and (boardGame[0][0] == boardGame[0][2])) 
			or ((boardGame[1][0] == boardGame[1][1]) and (boardGame[1][0] == boardGame[1][2])) 
				or ((boardGame[2][0] == boardGame[2][1]) and (boardGame[2][0] == boardGame[2][2])) 
					or ((boardGame[0][0] == boardGame[1][0]) and (boardGame[0][0] == boardGame[2][0])) 
						or ((boardGame[0][1] == boardGame[1][1]) and (boardGame[0][1] == boardGame[2][1])) 
							or ((boardGame[0][2] == boardGame[1][2]) and (boardGame[0][2] == boardGame[2][2])) 
								or ((boardGame[0][0] == boardGame[1][1]) and (boardGame[0][0] == boardGame[2][2])) 
									or ((boardGame[0][2] == boardGame[1][1]) and (boardGame[0][2] == boardGame[2][0])) ):
		endGame()

func endGame():
	$GlobalContainer/Winner.text = "We have a winner !"
	$GlobalContainer/Replay.show()
	Button1.set_disabled(true)
	Button2.set_disabled(true)
	Button3.set_disabled(true)
	Button4.set_disabled(true)
	Button5.set_disabled(true)
	Button6.set_disabled(true)
	Button7.set_disabled(true)
	Button8.set_disabled(true)
	Button9.set_disabled(true)
	

func updateBoardGame(id, player):
	match id:
		1:
			if (player):
				boardGame[0][0] = "X"
			else:
				boardGame[0][0] = "O"
		2:
			if (player):
				boardGame[0][1] = "X"
			else:
				boardGame[0][1] = "O"
		3:
			if (player):
				boardGame[0][2] = "X"
			else:
				boardGame[0][2] = "O"
		4:
			if (player):
				boardGame[1][0] = "X"
			else:
				boardGame[1][0] = "O"
		5:
			if (player):
				boardGame[1][1] = "X"
			else:
				boardGame[1][1] = "O"
		6:
			if (player):
				boardGame[1][2] = "X"
			else:
				boardGame[1][2] = "O"
		7:
			if (player):
				boardGame[2][0] = "X"
			else:
				boardGame[2][0] = "O"
		8:
			if (player):
				boardGame[2][1] = "X"
			else:
				boardGame[2][1] = "O"
		9:
			if (player):
				boardGame[2][2] = "X"
			else:
				boardGame[2][2] = "O"
	checkWinner()

func _on_Button1_pressed():
	Button1.set_disabled(true)
	switchAndCheckPlayer()
	Button1.set_disabled_texture(icon)
	updateBoardGame(1, player)

func _on_Button2_pressed():
	Button2.set_disabled(true)
	switchAndCheckPlayer()
	Button2.set_disabled_texture(icon)
	updateBoardGame(2, player)
	

func _on_Button3_pressed():
	Button3.set_disabled(true)
	switchAndCheckPlayer()
	Button3.set_disabled_texture(icon)
	updateBoardGame(3, player)
	

func _on_Button4_pressed():
	Button4.set_disabled(true)
	switchAndCheckPlayer()
	Button4.set_disabled_texture(icon)
	updateBoardGame(4, player)
	

func _on_Button5_pressed():
	Button5.set_disabled(true)
	switchAndCheckPlayer()
	Button5.set_disabled_texture(icon)
	updateBoardGame(5, player)
	

func _on_Button6_pressed():
	Button6.set_disabled(true)
	switchAndCheckPlayer()
	Button6.set_disabled_texture(icon)
	updateBoardGame(6, player)
	

func _on_Button7_pressed():
	Button7.set_disabled(true)
	switchAndCheckPlayer()
	Button7.set_disabled_texture(icon)
	updateBoardGame(7, player)
	

func _on_Button8_pressed():
	Button8.set_disabled(true)
	switchAndCheckPlayer()
	Button8.set_disabled_texture(icon)
	updateBoardGame(8, player)
	

func _on_Button9_pressed():
	Button9.set_disabled(true)
	switchAndCheckPlayer()
	Button9.set_disabled_texture(icon)
	updateBoardGame(9, player)
	

func _on_Replay_pressed():
	get_tree().reload_current_scene()

extends Node

var quests = {}

func start_quest(name):
    quests[name] = "in progress"
    print("Quest started: " + name)

func complete_quest(name, player):
    quests[name] = "completed"
    print("Quest completed: " + name)
    if name == "Unlock Magic":
        player.can_use_magic = true

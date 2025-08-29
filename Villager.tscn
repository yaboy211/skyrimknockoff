extends CharacterBody3D

@export var dialogue_text := "Hello traveler!"
@export var gives_quest := true

func talk(player):
    print(dialogue_text)
    if gives_quest:
        get_node("/root/QuestManager").start_quest("Unlock Magic")
        gives_quest = false

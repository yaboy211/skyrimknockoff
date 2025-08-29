extends CharacterBody3D

@export var speed := 3.0
@export var health := 10
var target := null

func _physics_process(delta):
    if target:
        var dir = (target.global_transform.origin - global_transform.origin).normalized()
        velocity = dir * speed
        move_and_slide()
        if global_transform.origin.distance_to(target.global_transform.origin) < 1.5:
            print("Enemy attacks player!")

func take_damage(amount):
    health -= amount
    if health <= 0:
        queue_free()
        print("Enemy defeated!")

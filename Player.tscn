extends CharacterBody3D

@export var speed := 5.0
@export var jump_velocity := 4.0
var can_use_magic := false

func _physics_process(delta):
    var input_vector = Vector3.ZERO
    input_vector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
    input_vector.z = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
    input_vector = input_vector.normalized()
    
    velocity.x = input_vector.x * speed
    velocity.z = input_vector.z * speed

    if not is_on_floor():
        velocity.y -= 9.8 * delta
    elif Input.is_action_just_pressed("ui_jump"):
        velocity.y = jump_velocity

    move_and_slide()

func attack():
    print("Player attacks with sword!")

func cast_magic():
    if can_use_magic:
        print("Player casts magic!")
    else:
        print("Magic is locked! Complete quest first.")

extends KinematicBody2D

export (int) var detect_radius
export (float) var fire_rate
export (PackedScene) var Bullet
var vis_color = Color (0.8,0.9,0.2,0.1)

var target
var can_shoot = true

func _ready():

	
	$Sprite.self_modulate = Color(0.2, 0, 0)
	var shaper = CircleShape2D.new()
	shaper.radius = detect_radius
	var perim = $Visibility/DetectCircle
	perim.shape = shaper
	#$ShootTimer.wait_time = fire_rate
	
	
func _physics_process(delta):
		update()
		#if target:
		#	rotation = (target.position - position).angle()
		#	if can_shoot:
		#		shoot(target.position)
				
#func shoot(pos):
#	var b = Bullet.instance()
#	var a = (pos - global_position).angle()
#	b.start(global_position, a + rand_range(-0.05,0.05))
#	get_parent().add_child(b)
#	can_shoot = false
#	$ShootTimer.start()

#func draw():
#	draw_circle(Vector2(),detect_radius,vis_color)
	

	
#func _on_Visibility_body_entered(body):
#	if target:
#		return
#	target = body
#	$Sprite.self_modulate.r = 1.0

#func _on_Visibility_body_exited(body):
#	if body == target:
#		target = null
#		$Sprite.self_modulate.r = 0.2
#		
#func _on_ShootTomer_timerout():
#	can_shoot = true
	
	

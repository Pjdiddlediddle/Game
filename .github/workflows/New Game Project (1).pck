GDPC                0                                                                         P   res://.godot/exported/133200997/export-609f762188a68253d349ec58c4f3a8d3-game.scn 
      d      r}T=Nu(�ÎwL�    T   res://.godot/exported/133200997/export-6350fccf6e14d2f0c891730ee1d2c6cd-bullet.scn  �       +      ����=3�����٩M=    T   res://.godot/exported/133200997/export-ec12bd2205a8e44213188668d747d7fa-enemy.scn   �             �-(#�E���H:&    ,   res://.godot/global_script_class_cache.cfg  `/             ��Р�8���8~$}P�    D   res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctexp      �      �̛�*$q�*�́     L   res://.godot/imported/laserRed01.png-5c4f86f38d185760a9e2fbc316441561.ctex   #      8      /�)vUҕ�a�  �m       res://.godot/uid_cache.bin  @3      �       ��T�����UU����       res://Movement.gd   0&      �       �YYa �7�A�O��0       res://Shooting Thingy.gd�'      *      �go��@����>       res://UpperWall.gd  �&      �       ��}�,�'�y���C�       res://bullet.gd         �       ��6,a�0טG���       res://bullet.tscn.remap .      c       �ڦQDc?�]�F��       res://enemy.gd  �      �       ��T�W�
)��2;�Q       res://enemy.tscn.remap  �.      b       XJ9�ң��؆�v��u       res://game.tscn.remap   �.      a       �?��� �ު��y�       res://icon.svg  �/      �      C��=U���^Qu��U3       res://icon.svg.import   P"      �       �2@E�v}H���       res://laserRed01.png.import `%      �       �<]�`��Vc�z       res://project.binary�3      =      �V�>�Σ���$ �        extends Area2D
@export var speed: int

func _ready():
	pass

func _process(delta):
	position += (Vector2(0, -2) * speed * delta)

func _on_area_entered(area):
	queue_free()
	
 RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    size    script 	   _bundled       Script    res://bullet.gd ��������
   Texture2D    res://laserRed01.png /���iR�Q      local://RectangleShape2D_mxk5w �         local://PackedScene_ylvyi �         RectangleShape2D       
      A��A         PackedScene          	         names "         Bullet    script    speed    Area2D 	   Sprite2D 	   position    texture    CollisionShape2D    shape    _on_area_entered    area_entered    	   variants                    d   
         �A                         node_count             nodes        ��������       ����                                  ����                                 ����                   conn_count             conns                
   	                    node_paths              editable_instances              version             RSRC     
extends Area2D
@export var speed:int
@export var score:int
signal gonnadie 
var ded = 0
func _ready():
	pass

func _process(delta):
	position += (Vector2(0, 1) * speed * delta)

func _on_area_entered(area):
	gonnadie.emit()
	queue_free()
	
               RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    size    script 	   _bundled       Script    res://enemy.gd ��������
   Texture2D    res://icon.svg �#CZ Ad7      local://RectangleShape2D_mxk5w z         local://PackedScene_xvs6a �         RectangleShape2D       
     �B  �B         PackedScene          	         names "         Enemy    script    speed    Area2D 	   Sprite2D    scale    texture    CollisionShape2D    shape    _on_area_entered    area_entered    	   variants                    d   
      ?   ?                         node_count             nodes        ��������       ����                                  ����                                 ����                   conn_count             conns                
   	                    node_paths              editable_instances              version             RSRCRSRC                    PackedScene            ��������                                                  ..    Score_Label 
   UpperWall 	   Enemymin 	   Enemymax    Timer    resource_local_to_scene    resource_name    custom_solver_bias    size    script 	   _bundled       Script    res://Shooting Thingy.gd ��������   PackedScene    res://enemy.tscn ��3��nW   PackedScene    res://bullet.tscn �a�Ȩ;
   Texture2D    res://icon.svg �#CZ Ad7   Script    res://UpperWall.gd ��������      local://RectangleShape2D_ic8tj �         local://RectangleShape2D_yiufx �         local://RectangleShape2D_ly713 
         local://PackedScene_b7ivg ;         RectangleShape2D    	   
     �B  �B
         RectangleShape2D    	   
     �A  BC
         RectangleShape2D    	   
     �D  @A
         PackedScene          	         names "   *      Game    Node2D 
   Spaceship 	   position    script    Enemy    Bullet    score_label    min    max    timer    CharacterBody2D    CollisionShape2D    shape    debug_color 	   Sprite2D    texture 	   Marker2D    Timer 
   wait_time 	   one_shot    Walls    StaticBody2D 
   UpperWall    Area2D    light_mask 	   Enemymax 	   Enemymin    Score_Label    offset_left    offset_top    offset_right    offset_bottom    Label    process_callback 
   autostart    _on_child_exiting_tree    child_exiting_tree    _quit    area_entered    _on_timer_timeout    timeout    	   variants       
    �D �D                                                                                                   ��?��3?���>         
         ��      ?      
     P� �	D         
    @�D   @      
    @D  F�         
     �D  ��
     �B  1�
         ^D              B     �A     nC     �B            �?      node_count             nodes     �   ��������       ����                      ����                              @     @   	  @   
  @                    ����            	                    ����      
                    ����                          ����                                 ����                          ����                          ����                          ����                           ����        
             ����                         
             ����             
             ����             
             ����                                ����                                 !      ����                                              ����   "            #                conn_count             conns              %   $                    '   &                   )   (                    node_paths              editable_instances              version       
      RSRC            GST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /������!"2�H�$�n윦���z�x����դ�<����q����F��Z��?&,
ScI_L �;����In#Y��0�p~��Z��m[��N����R,��#"� )���d��mG�������ڶ�$�ʹ���۶�=���mϬm۶mc�9��z��T��7�m+�}�����v��ح�m�m������$$P�����එ#���=�]��SnA�VhE��*JG�
&����^x��&�+���2ε�L2�@��		��S�2A�/E���d"?���Dh�+Z�@:�Gk�FbWd�\�C�Ӷg�g�k��Vo��<c{��4�;M�,5��ٜ2�Ζ�yO�S����qZ0��s���r?I��ѷE{�4�Ζ�i� xK�U��F�Z�y�SL�)���旵�V[�-�1Z�-�1���z�Q�>�tH�0��:[RGň6�=KVv�X�6�L;�N\���J���/0u���_��U��]���ǫ)�9��������!�&�?W�VfY�2���༏��2kSi����1!��z+�F�j=�R�O�{�
ۇ�P-�������\����y;�[ ���lm�F2K�ޱ|��S��d)é�r�BTZ)e�� ��֩A�2�����X�X'�e1߬���p��-�-f�E�ˊU	^�����T�ZT�m�*a|	׫�:V���G�r+�/�T��@U�N׼�h�+	*�*sN1e�,e���nbJL<����"g=O��AL�WO!��߈Q���,ɉ'���lzJ���Q����t��9�F���A��g�B-����G�f|��x��5�'+��O��y��������F��2�����R�q�):VtI���/ʎ�UfěĲr'�g�g����5�t�ۛ�F���S�j1p�)�JD̻�ZR���Pq�r/jt�/sO�C�u����i�y�K�(Q��7őA�2���R�ͥ+lgzJ~��,eA��.���k�eQ�,l'Ɨ�2�,eaS��S�ԟe)��x��ood�d)����h��ZZ��`z�պ��;�Cr�rpi&��՜�Pf��+���:w��b�DUeZ��ڡ��iA>IN>���܋�b�O<�A���)�R�4��8+��k�Jpey��.���7ryc�!��M�a���v_��/�����'��t5`=��~	`�����p\�u����*>:|ٻ@�G�����wƝ�����K5�NZal������LH�]I'�^���+@q(�q2q+�g�}�o�����S߈:�R�݉C������?�1�.��
�ڈL�Fb%ħA ����Q���2�͍J]_�� A��Fb�����ݏ�4o��'2��F�  ڹ���W�L |����YK5�-�E�n�K�|�ɭvD=��p!V3gS��`�p|r�l	F�4�1{�V'&����|pj� ߫'ş�pdT�7`&�
�1g�����@D�˅ �x?)~83+	p �3W�w��j"�� '�J��CM�+ �Ĝ��"���4� ����nΟ	�0C���q'�&5.��z@�S1l5Z��]�~L�L"�"�VS��8w.����H�B|���K(�}
r%Vk$f�����8�ڹ���R�dϝx/@�_�k'�8���E���r��D���K�z3�^���Vw��ZEl%~�Vc���R� �Xk[�3��B��Ğ�Y��A`_��fa��D{������ @ ��dg�������Mƚ�R�`���s����>x=�����	`��s���H���/ū�R�U�g�r���/����n�;�SSup`�S��6��u���⟦;Z�AN3�|�oh�9f�Pg�����^��g�t����x��)Oq�Q�My55jF����t9����,�z�Z�����2��#�)���"�u���}'�*�>�����ǯ[����82һ�n���0�<v�ݑa}.+n��'����W:4TY�����P�ר���Cȫۿ�Ϗ��?����Ӣ�K�|y�@suyo�<�����{��x}~�����~�AN]�q�9ޝ�GG�����[�L}~�`�f%4�R!1�no���������v!�G����Qw��m���"F!9�vٿü�|j�����*��{Ew[Á��������u.+�<���awͮ�ӓ�Q �:�Vd�5*��p�ioaE��,�LjP��	a�/�˰!{g:���3`=`]�2��y`�"��N�N�p���� ��3�Z��䏔��9"�ʞ l�zP�G�ߙj��V�>���n�/��׷�G��[���\��T��Ͷh���ag?1��O��6{s{����!�1�Y�����91Qry��=����y=�ٮh;�����[�tDV5�chȃ��v�G ��T/'XX���~Q�7��+[�e��Ti@j��)��9��J�hJV�#�jk�A�1�^6���=<ԧg�B�*o�߯.��/�>W[M���I�o?V���s��|yu�xt��]�].��Yyx�w���`��C���pH��tu�w�J��#Ef�Y݆v�f5�e��8��=�٢�e��W��M9J�u�}]釧7k���:�o�����Ç����ս�r3W���7k���e�������ϛk��Ϳ�_��lu�۹�g�w��~�ߗ�/��ݩ�-�->�I�͒���A�	���ߥζ,�}�3�UbY?�Ӓ�7q�Db����>~8�]
� ^n׹�[�o���Z-�ǫ�N;U���E4=eȢ�vk��Z�Y�j���k�j1�/eȢK��J�9|�,UX65]W����lQ-�"`�C�.~8ek�{Xy���d��<��Gf�ō�E�Ӗ�T� �g��Y�*��.͊e��"�]�d������h��ڠ����c�qV�ǷN��6�z���kD�6�L;�N\���Y�����
�O�ʨ1*]a�SN�=	fH�JN�9%'�S<C:��:`�s��~��jKEU�#i����$�K�TQD���G0H�=�� �d�-Q�H�4�5��L�r?����}��B+��,Q�yO�H�jD�4d�����0*�]�	~�ӎ�.�"����%
��d$"5zxA:�U��H���H%jس{���kW��)�	8J��v�}�rK�F�@�t)FXu����G'.X�8�KH;���[             [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://bw4ps4may1utg"
path="res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex"
metadata={
"vram_texture": false
}
                GST2   	   6      ����               	 6           RIFF�  WEBPVP8L�  /@�è�$G������g�pض�$1���Z�ܶ�n��ow���$�Qj���;��'�a��6Z��2B�$�dG�_�B
Y�?�O�6uh�B5d!�,TSF�)d��Um�z���(�ڐ��y���H0MQ|� _��� �X
pY�e�������o]�j��pr�Ќ��	�y��҃�9\��K���ܡ<E!C�QG��!�wh�H�.gw��N��uǍ����U��C�9�&�k~}�����m۪���nyv�`��؅ݏ�_[?"����<�dn/6B�t�O:�]�/I���R��:
,�$��K��8�Ћ�	�(\��B!��Q�{Co%��E)��P�}T@���;@�Q�#�@���;A�P�4@���;C����g�@��лB���Wt@���{B����O�B�}�{G?��0�oA������L�=
�i�c����8�&1�LCos�[�<���,C��ǳ� r�\          [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://cqaabpx1f11x0"
path="res://.godot/imported/laserRed01.png-5c4f86f38d185760a9e2fbc316441561.ctex"
metadata={
"vram_texture": false
}
          extends Node

var vect = Vector2(0,0)

func _ready():
	pass 

func _process(delta):
	pass
	
	
	
func _input(event):
	if event.is_action_pressed("right"):
		Vector2(1,0)
       extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _quit():
	get_tree().quit()
            extends CharacterBody2D


const SPEED = 400.0
const JUMP_VELOCITY = -400.0
@export var Enemy : PackedScene
@export var Bullet : PackedScene
@export var score_label: Label
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
@export var ded: int
var score:int

@export var min:Marker2D
@export var max:Marker2D
@export var timer:Timer



func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	move_and_slide()

	if Input.is_action_just_pressed("shoot"):
		if timer.is_stopped():
			shoot()
			timer.start()
	
	

func shoot():
	var b = Bullet.instantiate()
	owner.add_child(b)
	b.transform = $Marker2D.global_transform
	
func spawn():
	var Loc_x = randi_range(min.position.x, max.position.x)
	var Loc_y = randi_range(min.position.y, max.position.y)
	
	var e = Enemy.instantiate()
	e.gonnadie.connect(update_score)
	owner.add_child(e)
	
	
	# Set the global position of the Enemy
	e.global_position = Vector2(Loc_x, Loc_y)

func update_score():
	score += 1
	score_label.text = str(score)

func _on_timer_timeout():
	spawn()

func _on_upper_wall_area_entered(area):
	pass # Replace with function body.
      [remap]

path="res://.godot/exported/133200997/export-6350fccf6e14d2f0c891730ee1d2c6cd-bullet.scn"
             [remap]

path="res://.godot/exported/133200997/export-ec12bd2205a8e44213188668d747d7fa-enemy.scn"
              [remap]

path="res://.godot/exported/133200997/export-609f762188a68253d349ec58c4f3a8d3-game.scn"
               list=Array[Dictionary]([])
     <svg height="128" width="128" xmlns="http://www.w3.org/2000/svg"><rect x="2" y="2" width="124" height="124" rx="14" fill="#363d52" stroke="#212532" stroke-width="4"/><g transform="scale(.101) translate(122 122)"><g fill="#fff"><path d="M105 673v33q407 354 814 0v-33z"/><path fill="#478cbf" d="m105 673 152 14q12 1 15 14l4 67 132 10 8-61q2-11 15-15h162q13 4 15 15l8 61 132-10 4-67q3-13 15-14l152-14V427q30-39 56-81-35-59-83-108-43 20-82 47-40-37-88-64 7-51 8-102-59-28-123-42-26 43-46 89-49-7-98 0-20-46-46-89-64 14-123 42 1 51 8 102-48 27-88 64-39-27-82-47-48 49-83 108 26 42 56 81zm0 33v39c0 276 813 276 813 0v-39l-134 12-5 69q-2 10-14 13l-162 11q-12 0-16-11l-10-65H447l-10 65q-4 11-16 11l-162-11q-12-3-14-13l-5-69z"/><path d="M483 600c3 34 55 34 58 0v-86c-3-34-55-34-58 0z"/><circle cx="725" cy="526" r="90"/><circle cx="299" cy="526" r="90"/></g><g fill="#414042"><circle cx="307" cy="532" r="60"/><circle cx="717" cy="532" r="60"/></g></g></svg>
             �a�Ȩ;   res://bullet.tscn��3��nW   res://enemy.tscn{ڴ��)   res://game.tscn�#CZ Ad7   res://icon.svg/���iR�Q   res://laserRed01.png              ECFG      application/config/name         New Game Project   application/run/main_scene         res://game.tscn    application/config/features$   "         4.2    Forward Plus       application/config/icon         res://icon.svg     display/window/stretch/mode         viewport
   input/left�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   A   	   key_label             unicode    a      echo          script         input/right�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   D   	   key_label             unicode    d      echo          script         input/up�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   W   	   key_label             unicode    w      echo          script      
   input/down�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   S   	   key_label             unicode    s      echo          script         input/shoot�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode       	   key_label             unicode           echo          script         input/spawn�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode    @ 	   key_label             unicode           echo          script         physics/2d/default_gravity          4   rendering/textures/vram_compression/import_etc2_astc            
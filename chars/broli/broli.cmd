;------------------------------------------------------
;CMD file for Broli ver.1.2 (from SNES,"Dragon Ball Z") 
;Originally created by Kuzu-bei for MUGEN 06.27  
;Changes and English Notes made by The Necromancer
;------------------------------------------------------

;---------------------------------------------------------------------------
; The CMD File.
;
; Two parts: 1. Command definition and  2. State entry
; (state entry is after the commands def section)
;
; 1. Command definition
; ---------------------
; Note: The commands are CASE-SENSITIVE, and so are the command names.
; The eight directions are:
;   B, DB, D, DF, F, UF, U, UB     (all CAPS)
;   corresponding to back, down-back, down, downforward, etc.
; The six buttons are:
;   a, b, c, x, y, z               (all lower case)
;   In default key config, abc are are the bottom, and xyz are on the
;   top row. For 2 button characters, we recommend you use a and b.
;   For 6 button characters, use abc for kicks and xyz for punches.
;
; Each [Command] section defines a command that you can use for
; state entry, as well as in the CNS file.
; The command section should look like:
;
;   [Command]
;   name = some_name
;   command = the_command
;   time = time (optional -- defaults to 15 if omitted)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas.
;   Directions and buttons can be preceded by special characters:
;   slash (/) - means the key must be held down
;          egs. command = /D       ;hold the down direction
;               command = /DB, a   ;hold down-back while you press a
;   tilde (~) - to detect key releases
;          egs. command = ~a       ;release the a button
;               command = ~D, F, a ;release down, press fwd, then a
;          If you want to detect "charge moves", you can specify
;          the time the key must be held down for (in game-ticks)
;          egs. command = ~30a     ;hold a for at least 30 ticks, then release
;               command = ~30
;   dollar ($) - Direction-only: detect as 4-way
;          egs. command = $D       ;will detect if D, DB or DF is held
;               command = $B       ;will detect if B, DB or UB is held
;   plus (+) - Buttons only: simultaneous press
;          egs. command = a+b      ;press a and b at the same time
;               command = x+y+z    ;press x, y and z at the same time
;   You can combine them:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;   It's recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This matches the way most
;   popular fighting games implement their engine.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. Defaults to 15
;   if omitted
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; The commands are given below. Delete, add, or modify as you wish.


;-| Name |----------------------| Description |----------------------------

;Move ID
;[Command](Required)            ;Japanese Text/Alternate Name          
;Move Name                      ;Japanese Name (Description: Misc/English Name)
;Command                        ;Original Command
;Time to execute move (Optional)             

;-| Super Motions |-------------| Description |----------------------------

;-------------
;Move ID: 3000
;-------------
[Command]                       ;K.F.M.S.W.A
name = "QCF2_x"                 ;K.F.M.S.W.A (3-Hit Punch: Triple KF Palm Broli Style)
command = ~D, DF, F, a          ;~D, DF, F, D, DF, F, x
time = 20

;-------------
;Move ID: 3010
;-------------
[Command]                       ;�C���C�U�[�L���m��
name = "YOG_b"                  ;N/A (Multi-Hit Projectile: Eraser Cannon)
command = D, DF, F, c           ;~B, D, DF, F, b

;-------------
;Move ID: 3020
;-------------
[Command]                       ;�X���[�C���O�u���X�^�[
name = "QCBF_b"                 ;Shyougeki Ha (Single-Hit Projectile: Throwing Blaster)
command = ~D, DF, F, b          ;~D, DB, B, F, b

;-------------
;Move ID: 3030
;-------------
[Command]                       ;N/A
name = "USSJ_Z"                 ;USSJ (Transformation: USSJ)
command = /z                    ;N/A
time = 1
[Command]                       ;N/A
name = "USSJ_C"                 ;USSJ (Transformation: USSJ)
command = /c                    ;N/A
time = 1

;-------------
;Move ID: 4010
;-------------
[Command]                       ;N/A
name = "Speed_Z"                ;N/A (Speed Up: Speed Up)
command = /z                    ;N/A
time = 1
[Command]                       ;N/A
name = "Speed_C"                ;N/A (Speed Up: Speed Up)
command = /c                    ;N/A
time = 1

;-------------
;Move ID: 3040
;-------------
[Command]                       ;N/A
name = "Meteor Smash"           ;N/A (14-Hit Combo: Meteor Smash)
command = ~D, DB, B, a          ;N/A
time = 20

;-------------
;Move ID: 3050
;-------------
[Command]                       ;N/A
name = "Hyper Dash"             ;N/A (Random Super: Hyper Dash)
command = ~D, DB, B, b          ;N/A
time = 20

;-------------
;Move ID: 3060
;-------------
[Command]                       ;N/A
name = "Ultimate"               ;N/A (Ground to Air Combo: Ultimate)
command = ~D, DB, B, c          ;N/A

;-------------
;Move ID: 4000
;-------------
[Command]
name = "Renzoku Energy Dan"
command = ~D, DF, F, D, DF, F, z
time = 25

;-| EX Motions |-----------| Description |----------------------------

;-------------
;Move ID: 1011
;-------------
[Command]                       ;�X�}�b�V���[�����A�b�gEX
name = "SON_bx"                 ;N/A (2-Hit Punch: Smasher Lariat EX)
command = ~B, F, z              ;~30$B, F, b+x

;-------------
;Move ID: 1021
;-------------
[Command]                       ;�}�V���K���V���[�^�[
name = "MGS_EX"                 ;N/A (5-Hit Kick Combo: Machine Gun Shooter EX)
command = ~B, F, c              ;~F, B, F, a

;-------------
;Move ID: 1071
;-------------
[Command]                       ;���-�g
name = "Bakuhatsu Ha EX"        ;Bakuhatsu Ha EX(Explosion Shot: N/A)
command = ~D, DF, F, D, DF, F, y;N/A
time = 25

;-------------
;Move ID: 2012
;-------------
[Command]                       ;N/A
name = "Shogekiha"              ;Shogekiha (EX move for Kiai Hou: N/A)
command = ~D, DB, B, D, DB, B, z;N/A
time = 25

;-------------
;Move ID: 2005
;-------------
[Command]                       ;N/A
name = "Seeker Blast"           ;Seeker Blast (Homing Projectile: Seeker Blast)
command = ~D, DF, F, D, DF, F, x;N/A
time = 25

;-------------
;Move ID: 2015
;-------------
[Command]                       ;N/A
name = "Earthquake"             ;N/A (Earthquake: Earthquake)
command = ~D, DB, B, D, DB, B, y;N/A 
time = 25
                  
;-| Special Motions |-----------| Description |----------------------------

;-----------
;Move ID: 70
;-----------
[Command]                       ;N/A
name = "High Jump"              ;N/A (High Jump: High Jump) 
command = ~D, U                 ;N/A

;-----------
;Move ID: 70
;-----------
[Command]                       ;N/A
name = "High Jump"              ;N/A (High Jump: High Jump) 
command = ~D, UF                ;N/A

;-----------
;Move ID: 70
;-----------
[Command]                       ;N/A
name = "High Jump"              ;N/A (High Jump: High Jump) 
command = ~D, UB                ;N/A

;-------------
;Move ID: 1020
;-------------
[Command]                       ;�}�V���K���V���[�^�[
name = "FBF_a"                  ;N/A (5-Hit Kick Combo: Machine Gun Shooter)
command = ~B, F, b              ;~F, B, F, a

;-------------
;Move ID: 1060
;-------------
[Command]                       ;�C��-C
name = "FBF_b"                  ;Kiai Hou (Quick Shot: N/A )
command = ~D, DB, B, z          ;~F, B, F, b

;-------------
;Move ID: 1070
;-------------
[Command]                       ;�����g
name = "DU_b"                   ;Bakuhatsu Ha (Explosion Shot: N/A)
command = ~D, DF, F, y          ;~D, U, b

;-------------
;Move ID: 1000
;-------------
[Command]                       ;�A�g�~�b�N�{���o�[
name = "Smasher"                ;N/A (1-Hit Punch: Smasher)
command = ~B, F, x              ;~D, DF, F, x

;-------------
;Move ID: 1010
;-------------
[Command]                       ;�X�}�b�V���[�����A�b�g
name = "SON_x"                  ;N/A (2-Hit Punch: Smasher Lariat)
command = ~B, F, y              ;~30$B, F, x

;-------------
;Move ID: 1030
;-------------
[Command]                       ;�G�l���M�[�e
name = "Kikou Ha"               ;Kikou Ha (Basic Projectile: Fireball)
command = ~D, DF, F, x          ;b

;-------------
;Move ID: 1050
;-------------
[Command]                       ;�A���G�l���M�[�e
name = "QCB_b"                  ;Renzokou Kikou Ha (3 Projectiles: Triple Fireball)
command = ~D, DF, F, z          ;~D, DB, B, b

;-------------
;Move ID: 1090
;-------------
[Command]                       ;�w���Y�X�}�b�V��
name = "Hell's Smash"           ;N/A (Air to Ground Smash: Hell's Smash)
command = ~B, F, a              ;~F, B, D, U, a

;-------------
;Move ID: 1999
;-------------
[Command]                       ;N/A
name = "Bukuu Jutsu"            ;Bukuu Jutsu (Flying: Flying)
command = x+y                   ;~y

;-------------
;Move ID: 2001
;-------------
[Command]                       ;N/A
name = "Instantaneous Movement" ;N/A (Teleportation: Instantaneous Movement)
command = y+z                   ;N/A                   
time = 1
[Command]                       ;N/A
name = "Instantaneous Movement" ;N/A (Teleportation: Instantaneous Movement)
command = x+z                   ;N/A                   
time = 1
[Command]                       ;N/A
name = "Instantaneous Movement" ;N/A (Teleportation: Instantaneous Movement)
command = ~D, DB, B, x          ;N/A                   

;-------------
;Move ID: 2014
;-------------
[Command]                       ;N/A
name = "Smash Down"             ;N/A (Overhead Smash: Smash Down)
command = ~D, DB, B, y          ;N/A                   

;-| Double Tap |----------------| Description |----------------------------

[Command]                       ;N/A
name = "FF"                     ;N/A (Required: Run Forward)
command = F, F                  ;N/A
time = 15

[Command]                       ;N/A
name = "BB"                     ;N/A (Required: Run Backward) 
command = B, B                  ;N/A
time = 15

[Command]                       ;N/A
name = "UU"                     ;N/A (Required: Fly Upward)
command = U, U                  ;N/A
time = 15

[Command]                       ;N/A
name = "DD"                     ;N/A (Required: Fly Downward)
command = D, D                  ;N/A
time = 15

;-| 2/3 Button Combination |----| Description |----------------------------

[Command]                       ;N/A
name = "recovery"               ;N/A (Required: Recovery)
command = x+y                   ;a+b                   
time = 1

[Command]                       ;N/A
name = "recovery"               ;N/A (Required: Recovery)
command = y+z                   ;a+b                   
time = 1

[Command]                       ;N/A
name = "recovery"               ;N/A (Required: Recovery)
command = x+z                   ;a+b                   
time = 1

;-------------
;Move ID: 2100
;-------------
[Command]                       ;N/A
name = "ax"                     ;N/A (Required: Air Counter Attack)
command = a+b                   ;a+x                    
time = 1         

;-------------
;Move ID: 1040
;-------------
[Command]                       ;�C������
name = "holda"                  ;N/A (Charge: Super Power Up)
command = /a                    ;N/A
time = 1
[Command]                       ;�C������
name = "holdx"                  ;N/A (Charge: Super Power Up)
command = /x                    ;N/A
time = 1

;-------------
;Move ID: 2004
;-------------
[Command]                       ;N/A
name = "holdb"                  ;N/A
command = /b                    ;N/A (Impenetrable Shield: Ki Barrier) 
time = 1   
[Command]                       ;N/A
name = "holdy"                  ;N/A
command = /y                    ;N/A (Impenetrable Shield: Ki Barrier) 
time = 1   

;-| Dir + Button |--------------| Description |----------------------------

;-------------
;Move ID: 1080
;-------------
[Command]                       ;����
name = "fwd_x"                  ;N/A (Throw: Throw)
command = /F, x                 ;N/A
time = 1
[Command]                       ;����
name = "fwd_x"                  ;N/A (Throw: Throw)
command = /F, y                 ;/F, x
time = 1
[Command]                       ;����
name = "fwd_x"                  ;N/A (Throw: Throw)
command = /F, z                 ;N/A
time = 1

;-| Single Button |-------------| Description |----------------------------

[Command]                       ;�L�b�N
name = "a"                      ;N/A (Button A: A)
command = a                     ;N/A
time = 1

[Command]                       ;�C���g
name = "b"                      ;N/A (Button B: B) 
command = b                     :N/A
time = 1

[Command]                       ;N/A
name = "c"                      ;N/A (Button C: C)
command = c                     ;N/A
time = 1

[Command]                       ;�p���`
name = "x"                      ;N/A (Button X: X)
command = x                     ;N/A
time = 1

[Command]                       ;����p
name = "y"                      ;N/A (Button Y: Y)
command = y                     ;N/A 
time = 1

[Command]                       ;N/A
name = "z"                      ;N/A (Button Z: Z)
command = z                     ;N/A
time = 1

;-| Hold Dir |------------------| Description |----------------------------

[Command]                       ;N/A
name = "holdfwd"                ;N/A (Required: Hold Dir)
command = /$F                   ;N/A
time = 1

[Command]                       ;N/A
name = "holdback"               ;N/A (Required: Hold Dir) 
command = /$B                   ;N/A
time = 1

[Command]                       ;N/A
name = "holdup"                 ;N/A (Required: Hold Dir)
command = /$U                   ;N/A
time = 1

[Command]                       ;N/A
name = "holddown"               ;N/A (Required: Hold Dir)
command = /$D                   ;N/A
time = 1

[Command]                       ;N/A
name = "holdz"                  ;N/A (Required: Hold Dir)
command = /z                    ;N/A
time = 1

[Command]                       ;N/A
name = "holdc"                  ;N/A (Required: Hold Dir)
command = /c                    ;N/A
time = 1

;---------------------------------------------------------------------------
; 2. State entry
; Don't remove the following line. It's required by the CMD standard.
;---------------------------------------------------------------------------

[Statedef -1]
;-1 States: Lowest Priority
;---------------------------------------------------------------------------
;Japanese Name/Japanese Text
;English Name/English Equivalent
;---------------------------------------------------------------------------

;===========================================================================

;-| Super Moves |---------------| Description |-----------------------------

;K.F.M.S.W.A                    
;Triple KF Palm Broli Style
[State -1]
type = ChangeState
value = 3000
triggerall = command = "QCF2_x"
triggerall = power >= 1000
triggerall = stateno != 3010
triggerall = stateno != 3020

trigger1 = statetype = S
trigger1 = ctrl = 1

trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact = 1

trigger3 = stateno >= 150        ;�i�K�[�h���j
trigger3 = stateno <= 153        ;�i�K�[�h���j
trigger4 = stateno = 5120       ;�i�N���オ�蒆�j
trigger5 = stateno = 2000
trigger6 = movecontact = 1
trigger6 = stateno = 1020

;-------------------------------| Description |-----------------------------

;�C���C�U�[�L���m��
;Eraser Cannon
[State -1]
type = ChangeState
value = 3010
triggerall = power >= 1000
triggerall = command = "YOG_b"
triggerall = stateno != 3010
triggerall = stateno != 3020

trigger1 = statetype = S
trigger1 = ctrl = 1

trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact = 1

trigger3 = stateno = 5120       ;�i�N���オ�蒆�j
trigger4 = stateno = 2000
trigger5 = movecontact = 1
trigger5 = stateno = 1020
trigger6 = movecontact = 1
trigger6 = stateno = 3000
trigger7 = stateno >= 150        ;�i�K�[�h���j
trigger7 = stateno <= 153        ;�i�K�[�h���j

;-------------------------------| Description |-----------------------------

;�X���[�C���O�u���X�^�[
Throwing Blaster
[State -1]
type = ChangeState
value = 3020
triggerall = power >= 1000
triggerall = stateno != 3010
triggerall = stateno != 3020
triggerall = command = "QCBF_b"

trigger1 = statetype = S
trigger1 = ctrl = 1

trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact = 1

trigger3 = stateno = 5120       ;�i�N���オ�蒆�j
trigger4 = stateno = 2000
trigger5 = movecontact = 1
trigger5 = stateno = 1020
trigger6 = movecontact = 1
trigger6 = stateno = 3000
trigger7 = stateno >= 150       ;�i�K�[�h���j
trigger7 = stateno <= 153       ;�i�K�[�h���j

;-------------------------------| Description |-----------------------------

;USSJ Mode Transformation
[State -1]
type = ChangeState
value = 3030
triggerall = power >= 2500
triggerall = command = "USSJ_Z"
triggerall = command = "USSJ_C"
triggerall = Var(5) != 1
triggerall = life >= 501

trigger1 = statetype = S
trigger1 = ctrl = 1

trigger2 = stateno = 2000

;-------------------------------| Description |-----------------------------

;Speed Up
[State -1]
type = ChangeState
value = 4010
triggerall = power >= 2000
triggerall = command = "Speed_Z"
triggerall = command = "Speed_C"
triggerall = Var(9) != 1

trigger1 = statetype = S
trigger1 = ctrl = 1

trigger2 = stateno = 2000

;-------------------------------| Description |-----------------------------

;Meteor Smash
[State -1]
type = ChangeState
value = 3040
triggerall = command = "Meteor Smash"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1

trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact = 1

trigger3 = stateno = 2000

trigger4 = stateno >= 150       ;�i�K�[�h���j
trigger4 = stateno <= 153       ;�i�K�[�h���j

;-------------------------------| Description |-----------------------------

;Hyper Dash
[State -1]
type = ChangeState
value = 3050
triggerall = command = "Hyper Dash"
triggerall = power >= 500
trigger1 = statetype = S
trigger1 = ctrl = 1

trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact = 1

trigger3 = stateno = 2000

trigger4 = stateno >= 150       ;�i�K�[�h���j
trigger4 = stateno <= 153       ;�i�K�[�h���j

;-------------------------------| Description |-----------------------------

;Ultimate
[State -1]
type = ChangeState
value = 3060
triggerall = command = "Ultimate"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl = 1

trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact = 1

trigger3 = stateno = 2000

trigger4 = stateno >= 150       ;�i�K�[�h���j
trigger4 = stateno <= 153       ;�i�K�[�h���j

;===========================================================================

;-| SpecialEX Moves |---------------| Description |-------------------------

;-------------------------------| Description |-----------------------------

;Renzoku Energy Dan
[State -1]
type = ChangeState
value = 4000
triggerall = command = "Renzoku Energy Dan"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 2000

;-------------------------------| Description |-----------------------------

;�X�}�b�V���[�����A�b�gEX
;Smasher Lariat EX
[State -1]
type = ChangeState
value = 1011
triggerall = command = "SON_bx"
triggerall = power >= 500
trigger1 = statetype = S
trigger1 = ctrl = 1

trigger2 = stateno = 2000

trigger3 = stateno >= 150        ;�i�K�[�h���j
trigger3 = stateno <= 153        ;�i�K�[�h���j


;--------------------------------| Description |----------------------------

;�X�}�b�V���[�����A�b�gEX�i�L�����Z���j
;Smasher Lariat EX - During Combos
[State -1]
type = ChangeState
value = 1011
triggerall = command = "SON_bx"
triggerall = movecontact = 1
triggerall = power >= 500

;------------------------------------
;Combo Triggers for Smasher Lariat EX
;------------------------------------

trigger1 = stateno = 200
trigger2 = stateno = 201
trigger3 = stateno = 202
trigger4 = stateno = 210
trigger5 = stateno = 211
trigger6 = stateno = 212
trigger7 = stateno = 400
trigger8 = stateno = 410
trigger9 = stateno = 1020
trigger9 = time >= 50

;--------------------------------| Description |----------------------------

;�}�V���K���V���[�^�[
;Machine Gun Shooter EX
[State -1]
type = ChangeState
value = 1021
triggerall = command = "MGS_EX"
triggerall = power >= 500
trigger1 = statetype = S
trigger1 = ctrl = 1

trigger2 = stateno = 2000

trigger3 = stateno >= 150        ;�i�K�[�h���j
trigger3 = stateno <= 153        ;�i�K�[�h���j

;--------------------------------| Description |----------------------------

;�}�V���K���V���[�^�[�i�L�����Z���j
;Machine Gun Shooter EX - During Combos
[State -1]
type = ChangeState
value = 1021
triggerall = command = "MGS_EX"
triggerall = movecontact = 1

;-----------------------------------------
;Combo Triggers for Machine Gun Shooter EX
;-----------------------------------------

trigger1 = stateno = 200
trigger2 = stateno = 201
trigger3 = stateno = 202
trigger4 = stateno = 210
trigger5 = stateno = 211
trigger6 = stateno = 212
trigger7 = stateno = 400
trigger8 = stateno = 410
trigger9 = stateno = 1020
trigger9 = time >= 50

;--------------------------------| Description |----------------------------

;���-�g
;Bakuhatsu Ha EX
[State -1]
type = ChangeState
value = 1071
triggerall = command = "Bakuhatsu Ha EX"
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger2 = stateno = 40          ;�i�W�����v�J�n�j 
trigger3 = stateno = 2000

trigger4 = stateno >= 150        ;�i�K�[�h���j
trigger4 = stateno <= 153        ;�i�K�[�h���j

;--------------------------------| Description |----------------------------

;���-�g�i�L�����Z���jEX
;Bakuhatsu Ha EX - During Combos
[State -1]
type = ChangeState
value = 1071
triggerall = command = "Bakuhatsu Ha EX"
triggerall = movecontact = 1

;----------------------------------
;Combo Triggers for Bakuhatsu Ha EX
;----------------------------------

trigger1 = stateno = 200
trigger2 = stateno = 201
trigger3 = stateno = 202
trigger4 = stateno = 210
trigger5 = stateno = 211
trigger6 = stateno = 212
trigger7 = stateno = 400
trigger8 = stateno = 410
trigger9 = stateno = 1010
trigger10 = stateno = 1020
trigger11 = stateno = 3000

;--------------------------------| Description |----------------------------

;Seeker Blast
[State -1]
type = ChangeState
value = 2005
triggerall = command = "Seeker Blast"

trigger1 = statetype = S
trigger1 = ctrl = 1

trigger2 = stateno = 2000

;--------------------------------| Description |----------------------------

;Shogekiha
[State -1]
type = ChangeState
value = 2012
triggerall = command = "Shogekiha"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1070
trigger2 = Time  >= 15
trigger2 = Power > 0
trigger3 = stateno = 2000

trigger4 = stateno >= 150        ;�i�K�[�h���j
trigger4 = stateno <= 153        ;�i�K�[�h���j

;--------------------------------| Description |----------------------------

;Earthquake
[State -1]
type = ChangeState
value = 2015
triggerall = command = "Earthquake"
triggerall = power >= 500
trigger1 = ctrl = 1

trigger2 = stateno >= 150        ;�i�K�[�h���j
trigger2 = stateno <= 153        ;�i�K�[�h���j

;--------------------------------| Description |----------------------------

;Earthquake - During Combos
[State -1]
type = ChangeState
value = 2015
triggerall = command = "Earthquake"
triggerall = power >= 500
triggerall = Var(3) = 0
triggerall = movecontact = 1

;-----------------------------
;Combo Triggers for Earthquake
;-----------------------------

trigger1 = stateno = 200
trigger2 = stateno = 201
trigger3 = stateno = 202
trigger4 = stateno = 210
trigger5 = stateno = 211
trigger6 = stateno = 212
trigger7 = stateno = 400
trigger8 = stateno = 410
trigger9 = stateno = 1010
trigger10 = stateno = 1020
trigger11 = stateno = 3000

;===========================================================================

;-| Special Moves |-------------| Description |-----------------------------

;�A�g�~�b�N�{���o�[
;Smasher
[State -1]
type = ChangeState
value = 1000
triggerall = command = "Smasher"

trigger1 = statetype = S
trigger1 = ctrl = 1

trigger2 = stateno >= 150        ;�i�K�[�h���j
trigger2 = stateno <= 153        ;�i�K�[�h���j
trigger3 = stateno = 2000

;--------------------------------| Description |----------------------------

;�X�}�b�V���[�����A�b�g
;Smasher Lariat
[State -1]
type = ChangeState
value = 1010
triggerall = command = "SON_x"
trigger1 = statetype = S
trigger1 = ctrl = 1

trigger2 = stateno = 2000

trigger3 = stateno >= 150        ;�i�K�[�h���j
trigger3 = stateno <= 153        ;�i�K�[�h���j

;---------------------------------| Description |---------------------------

;�X�}�b�V���[�����A�b�g�i�L�����Z���j
;Smasher Lariat - During Combos
[State -1]
type = ChangeState
value = 1010
triggerall = command = "SON_x"
triggerall = movecontact = 1

;---------------------------------
;Combo Triggers for Smasher Lariat
;---------------------------------

trigger1 = stateno = 200
trigger2 = stateno = 201
trigger3 = stateno = 202
trigger4 = stateno = 210
trigger5 = stateno = 211
trigger6 = stateno = 212
trigger7 = stateno = 400
trigger8 = stateno = 410
trigger9 = stateno = 1020
trigger9 = time >= 50

;--------------------------------| Description |----------------------------

;�}�V���K���V���[�^�[
;Machine Gun Shooter
[State -1]
type = ChangeState
value = 1020
triggerall = command = "FBF_a"
trigger1 = statetype = S
trigger1 = ctrl = 1

trigger2 = stateno = 2000

trigger3 = stateno >= 150        ;�i�K�[�h���j
trigger3 = stateno <= 153        ;�i�K�[�h���j

;--------------------------------| Description |----------------------------

;�}�V���K���V���[�^�[�i�L�����Z���j
;Machine Gun Shooter - During Combos
[State -1]
type = ChangeState
value = 1020
triggerall = command = "FBF_a"
triggerall = movecontact = 1

;--------------------------------------
;Combo Triggers for Machine Gun Shooter
;--------------------------------------

trigger1 = stateno = 200
trigger2 = stateno = 201
trigger3 = stateno = 202
trigger4 = stateno = 210
trigger5 = stateno = 211
trigger6 = stateno = 212
trigger7 = stateno = 400
trigger8 = stateno = 410

;--------------------------------| Description |----------------------------

;�����g
;Bakuhatsu Ha
[State -1]
type = ChangeState
value = 1070
triggerall = command = "DU_b"
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger2 = stateno = 40          ;�i�W�����v�J�n�j 
trigger3 = stateno = 2000

trigger4 = stateno >= 150        ;�i�K�[�h���j
trigger4 = stateno <= 153        ;�i�K�[�h���j

;--------------------------------| Description |----------------------------

;�����g�i�L�����Z���j
;Bakuhatsu Ha - During Combos
[State -1]
type = ChangeState
value = 1070
triggerall = command = "DU_b"
triggerall = movecontact = 1

;-------------------------------
;Combo Triggers for Bakuhatsu Ha
;-------------------------------

trigger1 = stateno = 200
trigger2 = stateno = 201
trigger3 = stateno = 202
trigger4 = stateno = 210
trigger5 = stateno = 211
trigger6 = stateno = 212
trigger7 = stateno = 400
trigger8 = stateno = 410
trigger9 = stateno = 1010
trigger10 = stateno = 1020
trigger11 = stateno = 3000

;--------------------------------| Description |----------------------------

;�C���C
;Kiai Hou
[State -1]
type = ChangeState
value = 1060
triggerall = command = "FBF_b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1070
trigger2 = Time  >= 15
trigger2 = Power > 0
trigger3 = stateno = 2000

trigger4 = stateno >= 150        ;�i�K�[�h���j
trigger4 = stateno <= 153        ;�i�K�[�h���j

;--------------------------------| Description |----------------------------

;�C���C�i�L�����Z���j
;Kiai Hou - During Combos
[State -1]
type = ChangeState
value = 1060
triggerall = command = "FBF_b"
triggerall = movecontact = 1

;---------------------------
;Combo Triggers for Kiai Hou
;---------------------------

trigger1 = stateno = 200
trigger2 = stateno = 201
trigger3 = stateno = 202
trigger4 = stateno = 210
trigger5 = stateno = 211
trigger6 = stateno = 212
trigger7 = stateno = 400
trigger8 = stateno = 410
trigger9 = stateno = 1010
trigger10 = stateno = 3000
trigger11 = stateno = 1020
trigger11 = time >= 50

;--------------------------------| Description |----------------------------

;�A���G�l���M�[�e
;Renzokou Kikou Ha
[State -1]
type = ChangeState
value = 1050
triggerall = command = "QCB_b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 2000

;--------------------------------| Description |----------------------------

;�A���G�l���M�[�e�i�L�����Z���j
;Renzokou Kikou Ha - During Combos
[State -1]
type = ChangeState
value = 1050
triggerall = command = "QCB_b"
triggerall = movecontact = 1

;------------------------------------
;Combo Triggers for Renzokou Kikou Ha
;------------------------------------
trigger1 = stateno = 200
trigger2 = stateno = 201
trigger3 = stateno = 202
trigger4 = stateno = 210
trigger5 = stateno = 211
trigger6 = stateno = 212
trigger7 = stateno = 400
trigger8 = stateno = 410

;--------------------------------| Description |----------------------------

;�J�E���^�[
;Air Counter Attack - Normal
[State -1]
type = ChangeState
value = 2100

trigger1 = command = "ax"
trigger1 = CanRecover = 1
trigger1 = HitFall = 1
trigger1 = StateType = A
trigger1 = HitOver = 1
trigger1 = Alive = 1

;--------------------------------| Description |----------------------------

;�J�E���^�[
;Air Counter Attack - USSJ Mode
[State -1]
type = ChangeState
value = 2100
triggerall = command = "ax"
triggerall = Alive = 1
triggerall = var(5) != 0
triggerall = Pos Y < 0

trigger1 = stateno = 5035
trigger2 = stateno = 5020
trigger3 = stateno = 5030
trigger4 = stateno = 5050
trigger5 = stateno = 5040
trigger6 = stateno = 5071
trigger7 = stateno = 5000
trigger8 = stateno = 5001
trigger9 = stateno = 5002
trigger10 = stateno = 5010
trigger11 = stateno = 5011
trigger12 = stateno = 5012
trigger13 = stateno = 5020
trigger14 = stateno = 5021
trigger15 = stateno = 5022
trigger16 = stateno = 5110
trigger17 = stateno = 5120

;--------------------------------| Description |----------------------------

;�J�E���^�[
;Aerial Kick
[State -1]
type = ChangeState
value = 2100
triggerall = command = "ax"
trigger1 = StateType = A
trigger1 = ctrl = 1

trigger2 = stateno = 610
trigger2 = movecontact = 1

;--------------------------------| Description |----------------------------

;�C������
;Charge/Power Up
[State -1]
type = ChangeState
value = 1040
triggerall = command = "holda"
triggerall = command = "holdx"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 2000

;--------------------------------| Description |----------------------------

;�_�b�V��
;Run/Air Dash - Forward
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

;--------------------------------| Description |----------------------------

;�o�b�N�_�b�V��
;Run/Air Dash - Backward
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1

;--------------------------------| Description |----------------------------

;����
;Throw
[State -1]
type = ChangeState
value = 1080
triggerall = command = "fwd_x"  
triggerall = p2bodydist X <= 15
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 2000

;--------------------------------| Description |----------------------------

;�w���Y�X�}�b�V��
;Hell's Smash
[State -1]
type = ChangeState
value = 1090
triggerall = command = "Hell's Smash"
trigger1 = statetype = S
trigger1 = ctrl = 1

trigger2 = stateno = 40          ;�i�W�����v�J�n�j  

trigger3 = stateno = 2000

;--------------------------------| Description |----------------------------

;�w���Y�X�}�b�V��
;Hell's Smash - During Combos
[State -1]
type = ChangeState
value = 1090
triggerall = command = "Hell's Smash"
triggerall = movecontact = 1

;-------------------------------
;Combo Triggers for Hell's Smash
;-------------------------------

trigger1 = stateno = 200         ;Strong Punch
trigger2 = stateno = 201         ;Weak Punch
trigger3 = stateno = 202         ;Medium Punch
trigger4 = stateno = 212         ;Strong Kick
trigger5 = stateno = 210         ;Medium Kick
trigger6 = stateno = 211         ;Weak Kick
trigger7 = stateno = 400         ;Crouch Punch
trigger8 = stateno = 410         ;Crouch Kick
trigger9 = stateno = 610         ;Jump Kick
trigger9 = time >= 12
trigger10 = stateno = 2100       ;Aerial Kick
trigger10 = time >= 12
trigger11 = stateno = 1020
trigger11 = time >= 50         

;--------------------------------| Description |----------------------------

;�w���Y�X�}�b�V��
;Hell's Smash - Counter
[State -1]
type = ChangeState
value = 1090
triggerall = command = "Hell's Smash"
triggerall = var(5) != 0
triggerall = alive = 1
trigger1 = statetype = S
trigger1 = ctrl = 1

trigger1 = stateno >= 150
trigger2 = Stateno <= 153
trigger3 = stateno = 5000
trigger4 = stateno = 5001
trigger5 = stateno = 5002
trigger6 = stateno = 5010
trigger7 = stateno = 5011
trigger8 = stateno = 5012
trigger9 = stateno = 5020
trigger10 = stateno = 5021
trigger11 = stateno = 5022
trigger12 = stateno = 5110
trigger13 = stateno = 5120

;--------------------------------| Description |----------------------------

;����p
;Bukuu Jutsu 
[State -1]
type = ChangeState
value = 1999
triggerall = command = "Bukuu Jutsu"
trigger1 = statetype = S
trigger1 = ctrl = 1

;--------------------------------| Description |----------------------------

;����p
;Bukuu Jutsu
[State -1]
type = ChangeState
value = 2000
triggerall = command = "Bukuu Jutsu"
trigger1 = statetype = A
trigger1 = ctrl = 1

;--------------------------------| Description |----------------------------

;�G�l���M�[�e
;Kikou Ha
[State -1]
type = ChangeState
value = 1030
triggerall = command = "Kikou Ha"

trigger1 = statetype = S         ;Can only be done while you're on the ground.
trigger1 = ctrl = 1              ;Can be done anytime, as long as you have control.

trigger2 = stateno = 2000        ;Can be done while flying.

;--------------------------------| Description |----------------------------

;Instantaneous Movement
[State -1]
type = ChangeState
value = 2001
triggerall = command = "Instantaneous Movement"

trigger1 = statetype = S         ;Can only be done while you're on the ground.
trigger1 = ctrl = 1              ;Can be done anytime, as long as you have control.

trigger2 = stateno = 2000        ;Can be done while flying.

;--------------------------------| Description |----------------------------

;Instantaneous Movement - Counter 1
[State -1]
type = ChangeState
value = 2001
triggerall = command = "Instantaneous Movement"
triggerall = alive = 1           ;Can only be done while you're still alive. (Prevents bugs)
trigger1 = ctrl = 1              ;Can be done anytime, as long as you have control.

trigger1 = stateno >= 150        ;Can be done while guarding.
trigger2 = Stateno <= 153

trigger3 = stateno = 5000        ;All triggers below are getting hit states.
trigger4 = stateno = 5001
trigger5 = stateno = 5002
trigger6 = stateno = 5010
trigger7 = stateno = 5011
trigger8 = stateno = 5012
trigger9 = stateno = 5020
trigger10 = stateno = 5021
trigger11 = stateno = 5022
trigger12 = stateno = 5110
trigger13 = stateno = 5120
trigger14 = stateno = 5110
trigger15 = stateno = 5035
trigger16 = stateno = 5030
trigger17 = stateno = 5050
trigger18 = stateno = 5040
trigger19 = stateno = 5071

;--------------------------------| Description |----------------------------

;Instantaneous Movement - Counter 2
[State -1]
type = ChangeState
value = 2001
triggerall = command = "recovery"
triggerall = alive = 1           ;Can only be done while you're still alive. (Prevents bugs)
triggerall = ctrl = 1              ;Can be done anytime, as long as you have control.

trigger1 = stateno >= 150        ;Can be done while guarding.
trigger2 = Stateno <= 153

trigger3 = stateno = 5000        ;All triggers below are getting hit states.
trigger4 = stateno = 5001
trigger5 = stateno = 5002
trigger6 = stateno = 5010
trigger7 = stateno = 5011
trigger8 = stateno = 5012
trigger9 = stateno = 5020
trigger10 = stateno = 5021
trigger11 = stateno = 5022
trigger12 = stateno = 5110
trigger13 = stateno = 5120
trigger14 = stateno = 5110
trigger15 = stateno = 5035
trigger16 = stateno = 5030
trigger17 = stateno = 5050
trigger18 = stateno = 5040
trigger19 = stateno = 5071

;--------------------------------| Description |----------------------------

;Impenetrable Shield
[State -1]
type = ChangeState
value = 2004
triggerall = command = "holdb"
triggerall = command = "holdy"

trigger1 = statetype = S         ;Can only be done while on the ground.
trigger1 = ctrl = 1              ;Can be done as long as you have control.

trigger2 = stateno = 2000        ;Can be done while flying.

trigger3 = stateno >= 150        ;Can be done while guarding.
trigger3 = stateno <= 153
trigger3 = Time >= 20            ;This specifies what time must pass before 
                                 ;the move can be executed. (While guarding)

;--------------------------------| Description |----------------------------

;Impenetrable Shield - Counter
[State -1]
type = ChangeState
value = 2004
triggerall = command = "holdb"
triggerall = command = "holdy"
triggerall = Alive = 1
triggerall = var(5) != 0

trigger1 = stateno = 5035
trigger2 = stateno = 5020
trigger3 = stateno = 5030
trigger4 = stateno = 5050
trigger5 = stateno = 5040
trigger6 = stateno = 5071
trigger7 = stateno = 5000
trigger8 = stateno = 5001
trigger9 = stateno = 5002
trigger10 = stateno = 5010
trigger11 = stateno = 5011
trigger12 = stateno = 5012
trigger13 = stateno = 5020
trigger14 = stateno = 5021
trigger15 = stateno = 5022
trigger16 = stateno = 5110
trigger17 = stateno = 5120

;--------------------------------| Description |----------------------------

;Smash Down
[State -1]
type = ChangeState
value = 2014
triggerall = command = "Smash Down"
trigger1 = ctrl = 1
trigger2 = stateno = 2000

trigger3 = stateno >= 150        ;�i�K�[�h���j
trigger3 = stateno <= 153        ;�i�K�[�h���j

;--------------------------------| Description |----------------------------

;Smash Down - During Combos
[State -1]
type = ChangeState
value = 2014
triggerall = command = "Smash Down"
triggerall = movecontact = 1

;-----------------------------
;Combo Triggers for Smash Down
;-----------------------------

trigger1 = stateno = 200
trigger2 = stateno = 201
trigger3 = stateno = 202
trigger4 = stateno = 210
trigger5 = stateno = 211
trigger6 = stateno = 212
trigger7 = stateno = 400
trigger8 = stateno = 410
trigger9 = stateno = 1010
trigger10 = stateno = 1020
trigger11 = stateno = 3000

;===========================================================================

;-| Basic Moves |----------------| Description |----------------------------

;Super Jump
[State -1]
type = ChangeState
value = 70
triggerall = command = "High Jump"
trigger1 = statetype != A
trigger1 = ctrl = 1

;-| Normal Standing Attacks |----| Description |----------------------------

;�����p���`�i�Βn�A�������j
;Strong Punch
[State -1]
type = ChangeState
value = 200
triggerall = command = "z"

trigger1 = statetype = S
trigger1 = ctrl = 1              ;These 3 triggers are needed for basic attacks
trigger1 = command != "holddown"

trigger2 = stateno = 2000        ;Can be done while flying

;--------------------------------| Description |----------------------------

;�����p���`�i�Βn�A�������A�`�F�[���j
;Strong Punch - During Combos
[State -1]
type = ChangeState
value = 200
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = movecontact = 1

;-------------------------------
;Combo Triggers for Strong Punch
;-------------------------------

trigger1 = stateno = 201         ;Weak Punch
trigger2 = stateno = 202         ;Medium Punch
trigger3 = stateno = 210         ;Medium Kick
trigger4 = stateno = 211         ;Weak Kick
trigger5 = stateno = 400         ;Crouch Punch
trigger6 = stateno = 410         ;Crouch Kick

;--------------------------------| Description |----------------------------

;-����p���`�i�Βn�A���--��A�`�F�[���j
;Strong Punch - Alternate Y
[State -1]
type = ChangeState
value = 200
triggerall = command = "y"       ;Can be used with the "y" button alternatively   
triggerall = command != "holddown"
trigger1 = movecontact = 1
trigger1 = stateno = 202         ;Triggers when in Medium Punch
trigger1 = movecontact = 1       ;Triggers only when Medium Punch has contact

;--------------------------------| Description |----------------------------

;�����p���`�i�Βn�A�ߋ����j
;Weak Punch
[State -1]
type = ChangeState
value = 201
triggerall = command = "x"

trigger1 = command != "holddown"
trigger1 = statetype = S         ;These 3 triggers are needed for basic attacks
trigger1 = ctrl = 1

trigger2 = stateno = 2000        ;Can be done while flying

;--------------------------------| Description |----------------------------

;�����p���`�i�΋�j
;Medium Punch
[State -1]
type = ChangeState
value = 202
triggerall = command = "y"

trigger1 = command != "holddown" 
trigger1 = statetype = S         ;These 3 triggers are needed for basic attacks
trigger1 = ctrl = 1              

trigger2 = stateno = 2000        ;Can be done while flying

;--------------------------------| Description |----------------------------

;-����p���`�i�΋�j
;Medium Punch - During Combos
[State -1]
type = ChangeState
value = 202
triggerall = command = "y"
triggerall = command != "holddown" 
triggerall = movecontact = 1

;-------------------------------
;Combo Triggers for Meduim Punch
;-------------------------------

trigger1 = stateno = 201         ;Weak Punch
trigger2 = stateno = 202         ;Medium Punch
trigger3 = stateno = 210         ;Medium Kick
trigger4 = stateno = 211         ;Weak Kick
trigger5 = stateno = 400         ;Crouch Punch
trigger6 = stateno = 410         ;Crouch Kick

;--------------------------------| Description |----------------------------

;-����p���`�i�΋�j
;Medium Punch - Alternate X
[State -1]
type = ChangeState
value = 202
triggerall = command = "x"       ;Can be used with the "x" button alternatively   
triggerall = command != "holddown"

trigger1 = stateno = 201         ;Triggers when in Weak Punch
trigger1 = movecontact = 1       ;Triggers only when Weak Punch has contact

;--------------------------------| Description |----------------------------

;�����L�b�N�i�Βn�A�������j
;Medium Kick
[State -1]
type = ChangeState
value = 210
triggerall = command = "b"

trigger1 = command != "holddown"
trigger1 = statetype = S         ;These 3 triggers are needed for basic attacks
trigger1 = ctrl = 1

trigger2 = stateno = 2000        ;Can be done while flying

;--------------------------------| Description |----------------------------

;�����L�b�N�i�Βn�A�������A�`�F�[���j
Medium Kick - During Combos
[State -1]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = movecontact = 1

;------------------------------
;Combo Triggers for Medium Kick
;------------------------------

trigger1 = stateno = 201         ;Weak Punch
trigger2 = stateno = 202         ;Medium Punch
trigger3 = stateno = 211         ;Weak Kick
trigger4 = stateno = 400         ;Crouch Punch
trigger5 = stateno = 410         ;Crouch Kick

;--------------------------------| Description |----------------------------

;-����L�b�N�i�Βn�A���--��j
;Medium Kick - Alternate A
[State -1]
type = ChangeState
value = 210
triggerall = command = "a"       ;Can be used with the "a" button alternatively   
triggerall = command != "holddown"

trigger1 = stateno = 211         ;Triggers when in Medium Kick
trigger1 = movecontact = 1       ;Triggers only when Medium Kick has contact

;--------------------------------| Description |----------------------------

;�����L�b�N�i�Βn�A�ߋ����j
;Weak Kick
[State -1]
type = ChangeState
value = 211
triggerall = command = "a"

trigger1 = command != "holddown"
trigger1 = statetype = S         ;These 3 triggers are needed for basic attacks
trigger1 = ctrl = 1

trigger2 = command != "holddown"
trigger2 = stateno = 201         ;Triggers when in Weak Punch
trigger2 = movecontact = 1       ;Triggers only when Weak Punch has contact

trigger3 = stateno = 2000

;--------------------------------| Description |----------------------------

;�����L�b�N�i�΋�j
;Strong Kick
[State -1]
type = ChangeState
value = 212
triggerall = command = "c"

trigger1 = command != "holddown"
trigger1 = statetype = S         ;These 3 triggers are needed for basic attacks
trigger1 = ctrl = 1

trigger2 = stateno = 2000        ;Can be done while flying

;--------------------------------| Description |----------------------------

;�����L�b�N�i�΋�A�`�F�[���j
;Strong Kick - During Combos
[State -1]
type = ChangeState
value = 212
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = movecontact = 1

;------------------------------
;Combo Triggers for Strong Kick
;------------------------------

trigger1 = stateno = 200         ;Strong Punch
trigger2 = stateno = 201         ;Weak Punch
trigger3 = stateno = 202         ;Medium Punch
trigger4 = stateno = 210         ;Medium Kick
trigger5 = stateno = 211         ;Weak Kick
trigger6 = stateno = 400         ;Crouch Punch
trigger7 = stateno = 410         ;Crouch Kick

;--------------------------------| Description |----------------------------

;-����L�b�N�i�Βn�A���--��j
;Strong Kick - Alternate B
[State -1]
type = ChangeState
value = 212
triggerall = command = "b"       ;Can be used with the "b" button alternatively   
triggerall = command != "holddown"

trigger1 = stateno = 210         ;Triggers when in Medium Kick
trigger1 = movecontact = 1       ;Triggers only when Medium Kick has contact

;-| Normal Crouching Attacks |---| Description |----------------------------

;���p���`
;Crouch Punch 
[State -1]
type = ChangeState
value = 400
triggerall = command = "holddown"  ;Required for crouching attacks
triggerall = statetype = C
trigger1 = ctrl = 1

trigger1 = command = "x"         ;States that any punch button can be used
trigger2 = command = "y"
trigger3 = command = "z"

;--------------------------------| Description |----------------------------

;���p���`
;Crouch Punch X - During Combos
[State -1]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown";Required for crouching attacks
triggerall = movecontact = 1
triggerall = time >= 7

;---------------------------------
;Combo Triggers for Crouch Punch X
;---------------------------------

trigger1 = stateno = 200         ;Strong Punch
trigger2 = stateno = 201         ;Weak Punch
trigger3 = stateno = 202         ;Medium Punch
trigger4 = stateno = 210         ;Medium Kick
trigger5 = stateno = 211         ;Weak Kick
trigger6 = stateno = 212         ;Strong Kick
trigger7 = stateno = 400         ;Crouch Punch
trigger8 = stateno = 410         ;Crouch Kick

;--------------------------------| Description |----------------------------

;���p���`
;Crouch Punch Y - During Combos
[State -1]
type = ChangeState
value = 400
triggerall = command = "y"
triggerall = command = "holddown";Required for crouching attacks
triggerall = movecontact = 1
triggerall = time >= 7

;---------------------------------
;Combo Triggers for Crouch Punch Y
;---------------------------------

trigger1 = stateno = 200         ;Strong Punch
trigger2 = stateno = 201         ;Weak Punch
trigger3 = stateno = 202         ;Medium Punch
trigger4 = stateno = 210         ;Medium Kick
trigger5 = stateno = 211         ;Weak Kick
trigger6 = stateno = 212         ;Strong Kick
trigger7 = stateno = 400         ;Crouch Punch
trigger8 = stateno = 410         ;Crouch Kick

;--------------------------------| Description |----------------------------

;���p���`
;Crouch Punch Z - During Combos
[State -1]
type = ChangeState
value = 400
triggerall = command = "z"
triggerall = command = "holddown";Required for crouching attacks
triggerall = movecontact = 1
triggerall = time >= 7

;---------------------------------
;Combo Triggers for Crouch Punch Z
;---------------------------------

trigger1 = stateno = 200         ;Strong Punch
trigger2 = stateno = 201         ;Weak Punch
trigger3 = stateno = 202         ;Medium Punch
trigger4 = stateno = 210         ;Medium Kick
trigger5 = stateno = 211         ;Weak Kick
trigger6 = stateno = 212         ;Strong Kick
trigger7 = stateno = 400         ;Crouch Punch
trigger8 = stateno = 410         ;Crouch Kick

;--------------------------------| Description |----------------------------

;���L�b�N
;Crouch Kick
[State -1]
type = ChangeState
value = 410

triggerall = command = "holddown";Required for crouching attacks
triggerall = statetype = C
trigger1 = ctrl = 1

trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"

;--------------------------------| Description |----------------------------

;���L�b�N�i�`�F�[���j
;Crouch Kick A - During Combos
[State -1]
type = ChangeState
value = 410

triggerall = command = "a"
triggerall = command = "holddown";Required for crouching attacks
triggerall = movecontact = 1
triggerall = time >= 7

;--------------------------------
;Combo Triggers for Crouch Kick A
;--------------------------------

trigger1 = stateno = 200         ;Strong Punch
trigger2 = stateno = 201         ;Weak Punch
trigger3 = stateno = 202         ;Medium Punch
trigger4 = stateno = 210         ;Medium Kick
trigger5 = stateno = 211         ;Weak Kick
trigger6 = stateno = 212         ;Strong Kick
trigger7 = stateno = 400         ;Crouch Punch
trigger8 = stateno = 410         ;Crouch Kick

;--------------------------------| Description |----------------------------

;���L�b�N�i�`�F�[���j
;Crouch Kick B - During Combos
[State -1]
type = ChangeState
value = 410

triggerall = command = "b"
triggerall = command = "holddown";Required for crouching attacks
triggerall = movecontact = 1
triggerall = time >= 7

;--------------------------------
;Combo Triggers for Crouch Kick B
;--------------------------------

trigger1 = stateno = 200         ;Strong Punch
trigger2 = stateno = 201         ;Weak Punch
trigger3 = stateno = 202         ;Medium Punch
trigger4 = stateno = 210         ;Medium Kick
trigger5 = stateno = 211         ;Weak Kick
trigger6 = stateno = 212         ;Strong Kick
trigger7 = stateno = 400         ;Crouch Punch
trigger8 = stateno = 410         ;Crouch Kick

;--------------------------------| Description |----------------------------

;���L�b�N�i�`�F�[���j
;Crouch Kick C - During Combos
[State -1]
type = ChangeState
value = 410

triggerall = command = "c"
triggerall = command = "holddown";Required for crouching attacks
triggerall = movecontact = 1
triggerall = time >= 7

;--------------------------------
;Combo Triggers for Crouch Kick C
;--------------------------------

trigger1 = stateno = 200         ;Strong Punch
trigger2 = stateno = 201         ;Weak Punch
trigger3 = stateno = 202         ;Medium Punch
trigger4 = stateno = 210         ;Medium Kick
trigger5 = stateno = 211         ;Weak Kick
trigger6 = stateno = 212         ;Strong Kick
trigger7 = stateno = 400         ;Crouch Punch
trigger8 = stateno = 410         ;Crouch Kick

;-| Normal Jump Attacks |--------| Description |----------------------------

;�W�����v�L�b�N�i�p���`�j
;Jump Kick
[State -1]
type = ChangeState
value = 610

triggerall = statetype = A
triggerall = ctrl = 1

trigger1 = command = "x"         ;States that any button can be used
trigger2 = command = "y"
trigger3 = command = "z"
trigger4 = command = "a"
trigger5 = command = "b"
trigger6 = command = "c"

;--------------------------------| Description |----------------------------

;�W�����v�L�b�N�i�p���`�j
;Jump Kick X - During Combos
[State -1]
type = ChangeState
value = 610

triggerall = command = "x"
triggerall = command = "holddown";Required for crouching attacks
triggerall = movecontact = 1
triggerall = time >= 5

;------------------------------
;Combo Triggers for Jump Kick X
;------------------------------

trigger1 = stateno = 610

;--------------------------------| Description |----------------------------

;�W�����v�L�b�N�i�p���`�j
;Jump Kick Y - During Combos
[State -1]
type = ChangeState
value = 610

triggerall = command = "y"
triggerall = command = "holddown";Required for crouching attacks
triggerall = movecontact = 1
triggerall = time >= 5

;------------------------------
;Combo Triggers for Jump Kick Y
;------------------------------

trigger1 = stateno = 610

;--------------------------------| Description |----------------------------

;�W�����v�L�b�N�i�p���`�j
;Jump Kick Z - During Combos
[State -1]
type = ChangeState
value = 610

triggerall = command = "z"
triggerall = command = "holddown";Required for crouching attacks
triggerall = movecontact = 1
triggerall = time >= 5

;------------------------------
;Combo Triggers for Jump Kick Z
;------------------------------

trigger1 = stateno = 610

;--------------------------------| Description |----------------------------

;�W�����v�L�b�N�i�p���`�j
;Jump Kick A - During Combos
[State -1]
type = ChangeState
value = 610

triggerall = command = "a"
triggerall = command = "holddown";Required for crouching attacks
triggerall = movecontact = 1
triggerall = time >= 5

;------------------------------
;Combo Triggers for Jump Kick A
;------------------------------

trigger1 = stateno = 610

;--------------------------------| Description |----------------------------

;�W�����v�L�b�N�i�p���`�j
;Jump Kick B - During Combos
[State -1]
type = ChangeState
value = 610

triggerall = command = "b"
triggerall = command = "holddown";Required for crouching attacks
triggerall = movecontact = 1
triggerall = time >= 5

;------------------------------
;Combo Triggers for Jump Kick B
;------------------------------

trigger1 = stateno = 610

;--------------------------------| Description |----------------------------

;�W�����v�L�b�N�i�p���`�j
;Jump Kick C - During Combos
[State -1]
type = ChangeState
value = 610

triggerall = command = "c"
triggerall = command = "holddown";Required for crouching attacks
triggerall = movecontact = 1
triggerall = time >= 5

;------------------------------
;Combo Triggers for Jump Kick C
;------------------------------

trigger1 = stateno = 610

;This character is not to be distributed in any other site, other than those 
;of the Mugen Elite, or of the ReadMe file. If you have downloaded this 
;character from another site, please send an e-mail to "The Necromancer",
;at demon_nightmare@hotmail.com. The tutorials contained within this characters 
;are properties of the Mugen Elite.


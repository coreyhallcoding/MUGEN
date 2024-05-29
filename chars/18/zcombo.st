;Z-Combo1:  Arcade Chain (From LP)
[Statedef 300]
type    = S
movetype= A
physics = S
juggle  = 2
poweradd= 75
ctrl = 0
anim = 241
velset = 3,0

[State 3000, Super B]
type = AfterImage
trigger1 = AnimElem = 1
time = 6
PalContrast =  0,0,255
PalBright = 10,10,10
trans = add
ignorehitpause = 1

[State 3000, Super C]
type = AfterImageTime
trigger1 = AnimTime != 0
time = 6

[State 200, 2]
type = HitDef
trigger1 = time = 0
attr = S, NA
damage   = 20
priority = 3
guardflag = MA
pausetime = 10,10
sparkno = 2
sparkxy =  0,-63
hitsound   = s0,8
guardsound = 6,0
ground.type = High
ground.slidetime = 11
ground.hittime  = 11
ground.velocity = -3.5
air.velocity = -2,-3
airguard.velocity = -3     

[State 200, 7]
type = Playsnd
trigger1 = AnimElem = 2
value = 0,0

[State 200, 7]
type = Playsnd
trigger1 = time = 2 && random <= 300
value = 2,1

[State 200, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 301]
type    = S
movetype= A
physics = S
juggle  = 2
poweradd= 75
ctrl = 0
anim = 200
velset = 3,0

[State 3000, Super B]
type = AfterImage
trigger1 = AnimElem = 1
time = 6
PalContrast =  0,0,255
PalBright = 10,10,10
trans = add
ignorehitpause = 1

[State 3000, Super C]
type = AfterImageTime
trigger1 = AnimTime != 0
time = 6

[State 200, 2]
type = HitDef
trigger1 = time = 0
attr = S, NA
damage   = 20
priority = 2
guardflag = MA
pausetime = 10,10
sparkno = 2
sparkxy =  0,-63
hitsound   = s0,8
guardsound = 6,0
ground.type = High
ground.slidetime = 11
ground.hittime  = 11
ground.velocity = -3.5
air.velocity = -2,-3
airguard.velocity = -3     

[State 200, 7]
type = Playsnd
trigger1 = AnimElem = 2
value = 0,0

[State 200, 7]
type = Playsnd
trigger1 = time = 2 && random <= 300
value = 2,1

[State 200, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 302]
type    = S
movetype= A
physics = S
juggle  = 2
poweradd= 75
ctrl = 0
anim = 302
velset = 3,0

[State 3000, Super B]
type = AfterImage
trigger1 = AnimElem = 1
time = 6
PalContrast =  0,0,255
PalBright = 10,10,10
trans = add
ignorehitpause = 1

[State 3000, Super C]
type = AfterImageTime
trigger1 = AnimTime != 0
time = 6

[State 200, 2]
type = HitDef
trigger1 = time = 0
attr = S, NA
damage   = 35
priority = 3
guardflag = MA
pausetime = 10,10
sparkno = 3
sparkxy =  0,-63
hitsound   = s5,9
guardsound = 6,0
ground.type = High
ground.slidetime = 11
ground.hittime  = 11
ground.velocity = -6,-6
air.velocity = -6,-6
airguard.velocity = -3
envshake.time = 10
fall.envshake.time = 10
fall = 1
fall.recover = 0    

[State 200, 7]
type = Playsnd
trigger1 = AnimElem = 2
value = 0,0

[State 200, 7]
type = Playsnd
trigger1 = time = 2 && random <= 300
value = 2,1

[State 200, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Z-Combo 2: Overhead smash finisher
[Statedef 305]
type = S
movetype = A
physics = S
velset = 0
ctrl = 0
anim = 310
poweradd = 100

[State 3000, Super B]
type = AfterImage
trigger1 = AnimElem = 1
time = 6
PalContrast =  0,0,255
PalBright = 10,10,10
trans = add
ignorehitpause = 1

[State 3000, Super C]
type = AfterImageTime
trigger1 = AnimTime != 0
time = 6

[State 0, 1]
type = PosAdd
trigger1 = AnimElem = 4
x = 46
;y = 
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = Width
trigger1 = AnimElemTime(2) >=0 && AnimElemTime(4) < 0
;edge = 0,0
player = 50,0
;ignorehitpause = 0
;persistent = 1



[State 210, 1]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1, 7
channel = 0

[State 210, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 0, 2

[State 100, 1]
type = MakeDust
trigger1 = AnimElemTime(2) >=0 && AnimElemTime(6) < 0
pos = 0, 0
spacing = 1

[State 410, 1]
type = VelSet
trigger1 = AnimElemTime(2) >=0 && AnimElemTime(6) < 0
x = 5

[State 4001, HitDef]
type = HitDef
trigger1 = AnimElem = 5
attr = S, SA
animtype = Hard
damage = 40
hitflag = MAF
guardflag = HA
pausetime = 10, 10
sparkno = 3
sparkxy = 0,-35
hitsound = s5,9
guardsound = 6,0
ground.type = High
ground.slidetime = 13
ground.hittime = 26
ground.velocity = -12,12
guard.velocity = -6
air.velocity = -12,12
airguard.velocity = -6,-1
down.velocity = -12,0
down.hittime = 26
envshake.time = 10
fall = 1
fall.recover = 0
fall.envshake.time = 10


[State 0, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Z-Combo 3: Upper to Wall Kick
[Statedef 310]
type    = S
movetype= A
physics = S
juggle  = 2
poweradd= 75
ctrl = 0
anim = 420
velset = 6,0

[State 3000, Super B]
type = AfterImage
trigger1 = AnimElem = 1
time = 6
PalContrast =  0,0,255
PalBright = 10,10,10
trans = add
ignorehitpause = 1

[State 3000, Super C]
type = AfterImageTime
trigger1 = AnimTime != 0
time = 6

[State 200, 2]
type = HitDef
trigger1 = time = 0
animtype = DiagUp
attr = S, NA
damage   = 35
priority = 3
guardflag = MA
pausetime = 10,10
sparkno = 2
sparkxy =  0,-63
hitsound   = s0,8
guardsound = 6,0
ground.type = Low
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -1.5,-8.4
air.velocity = -1.5,-8.4
guard.velocity = -7
yaccel = .55
envshake.time = 10
fall.envshake.time = 10
fall = 1
fall.recover = 0    

[State 200, 7]
type = Playsnd
trigger1 = AnimElem = 2
value = 0,0

[State 200, 7]
type = Playsnd
trigger1 = time = 2 && random <= 300
value = 2,1

[State 200, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 311]
type    = S     
movetype= A     
physics = S     
juggle  = 1     
velset = 0,0
ctrl = 0  
anim = 1056
poweradd = 100

[State 1475, 4.5]
type = Width
trigger1 = 1
player = 45, 0

[State 3000, Super B]
type = AfterImage
trigger1 = AnimElem = 1
time = 6
PalContrast =  0,0,255
PalBright = 10,10,10
trans = add
ignorehitpause = 1

[State 3000, Super C]
type = AfterImageTime
trigger1 = AnimTime != 0
time = 6

[State 0, ]
type = VelSet
trigger1 = AnimElem = 6
x = 5
;y = 
;ignorehitpause = 0
;persistent = 1

[State 202, 1]
type = HitDef
trigger1 = AnimElem = 7
attr = S, NA   
damage = 50
animtype = Heavy
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10,10
sparkno = 1
sparkxy = 0,-60
hitsound = s5,9
guardsound = 6,0
ground.type = High
ground.slidetime = 25
ground.hittime  = 20
ground.velocity = -15,0
air.velocity = -15,0
fall = 1
fall.recover = 0
yaccel = .55
envshake.time = 10
fall.envshake.time = 10
p2stateno = 1066

[State 200, 7]
type = Playsnd
trigger1 = time = 2 
value = 1,11

[State 200, 7]
type = Playsnd
trigger1 = AnimElem = 5
value = 0,1

[State 202, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Z-Combo 4:  Budokai Combo no. 1 (Mini Power Blitz)
[Statedef 320]
type    = S
movetype= A
physics = S
juggle  = 2
poweradd= 75
ctrl = 0
anim = 211
velset = 6,0

[State 0, 1]
type = Explod
trigger1 = AnimElem = 1 && Anim = 211
anim = 225
pos = 0,-15
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
ownpal = 0
sprpriority = 4
removeongethit = 1
ignorehitpause = 0
;persistent = 1
scale = .75, .75
ID = 210

[State 3000, Super B]
type = AfterImage
trigger1 = AnimElem = 1
time = 6
PalContrast =  0,0,255
PalBright = 10,10,10
trans = add
ignorehitpause = 1

[State 3000, Super C]
type = AfterImageTime
trigger1 = AnimTime != 0
time = 6

[State 200, 2]
type = HitDef
trigger1 = time = 0
attr = S, NA
damage   = 20
priority = 3
guardflag = MA
pausetime = 10,10
sparkno = 2
sparkxy =  0,-63
hitsound   = s0,8
guardsound = 6,0
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -3.5
air.velocity = -2,-3
airguard.velocity = -3     

[State 200, 7]
type = Playsnd
trigger1 = AnimElem = 2
value = 0,0

[State 200, 7]
type = Playsnd
trigger1 = time = 2 && random <= 300
value = 2,1

[State 200, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


[Statedef 321]
type = U
movetype = A
physics = N
poweradd = 100
velset = 0, 0
ctrl = 0

[State 3000, Super B]
type = AfterImage
trigger1 = AnimElem = 1
time = 6
PalContrast =  0,0,255
PalBright = 10,10,10
trans = add
ignorehitpause = 1

[State 3000, Super C]
type = AfterImageTime
trigger1 = AnimTime != 0
time = 6

[State 0, 1]
type = Explod
trigger1 = !time
anim = 990
postype = p1
pos = 0,0
sprpriority = 5
supermove = 1
ownpal = 1


[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0 && Anim != 360
value = 360

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1,10
volume = 255
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 0,7
volume = 255

[State 1000, Helper]
type = Helper
trigger1 = !IsHelper(11000)
trigger1 = AnimElem =5
postype = p1
pos = 46,-67
stateno = 322
bindtime = 1
ownpal = 1
name = "Energy Ball"
ID = 321

[State 1000, ChangeState]
type = ChangeState
trigger1 = Time =50
value = 0
ctrl = 1



; The Energy Shot
[Statedef 322]
type = S
movetype = A
physics = N
velset = 0,0
anim = 366
sprpriority = 2
juggle = 2
ctrl = 0

[State 0, 1]
type = BindToParent
trigger1 = 1
time = 1
;facing = 0
pos = 49, -67
;ignorehitpause = 0
;persistent = 1

[State 4001, 1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 4001, 2]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 3031, 1]
type = AfterImage
trigger1 = Time = 0
time = 9999
PalBright   =   0,  0,  0
PalContrast = 120,120,120
PalAdd      =  0,0,0 ;29, 29, 29
PalMul      = .77,.77,.77
trans = add
timegap =1
framegap = 2

[State 0, 1]
type = Explod
trigger1 = !time
anim = 365
postype = p1
pos = 0,0
sprpriority = 1
supermove = 1
ownpal = 1
random = 0,0
bindtime = -1



[State 4001, HitDef]
type = HitDef
trigger1 = !time
attr = S, SP
animtype = Medium
damage = 55,5
hitflag = MAFD
guardflag = MA
pausetime = 0, 9
sparkno = S996
sparkxy = 0,0
hitsound = s5,12
guardsound = 6,0
ground.type = High
ground.slidetime = 13
ground.hittime = 26
ground.velocity = -12,-2
guard.velocity = -4
air.velocity = -12,-2
airguard.velocity = -4,-2
down.velocity = -12,0
down.hittime = 26
palfx.color = 0
fall = 1
fall.recover = 0
envshake.time = 30

[State 4001, NotHitBy]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 4001, HitOverride]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 1006
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 4001, HitBy]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 2512, Helper Hits Count Too]
type = ParentVarSet ; Only works for helpers.
trigger1 = UniqHitCount != Var(20)
v = 19
value = 1

[State 2512, Helper Hits Count Too]
type = VarSet
trigger1 = UniqHitCount != Var(20)
v = 20
value = UniqHitCount

[State 4001, DestroySelf]
type = DestroySelf
trigger1 = animtime =0
trigger2 = parent, stateno != 321

; Z-Combo 5: Budokai Combo no.2 (Field on!)
[Statedef 325]
type    = S
movetype= A
physics = S
juggle  = 2
poweradd= 75
ctrl = 0
anim = 420
velset = 6,0

[State 3000, Super B]
type = AfterImage
trigger1 = AnimElem = 1
time = 6
PalContrast =  0,0,255
PalBright = 10,10,10
trans = add
ignorehitpause = 1

[State 3000, Super C]
type = AfterImageTime
trigger1 = AnimTime != 0
time = 6

[State 200, 2]
type = HitDef
trigger1 = time = 0
animtype = DiagUp
attr = S, NA
damage   = 35
priority = 3
guardflag = MA
pausetime = 10,10
sparkno = 2
sparkxy =  0,-63
hitsound   = s0,8
guardsound = 6,0
ground.type = Low
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -1.5,-10.4
air.velocity = -1.5,-10.4
guard.velocity = -7
envshake.time = 10
fall.envshake.time = 10
fall = 1
fall.recover = 0    

[State 200, 7]
type = Playsnd
trigger1 = AnimElem = 2
value = 0,0

[State 200, 7]
type = Playsnd
trigger1 = time = 2 
value = 2,1

[State 200, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 326]
type = U
movetype = A
physics = N
poweradd = 100
velset = 0, 0
ctrl = 0

[State 3000, Super B]
type = AfterImage
trigger1 = AnimElem = 1
time = 6
PalContrast =  0,0,255
PalBright = 10,10,10
trans = add
ignorehitpause = 1

[State 3000, Super C]
type = AfterImageTime
trigger1 = AnimTime != 0
time = 6

[State 0, 1]
type = Explod
trigger1 = !time
anim = 990
postype = p1
pos = 0,0
sprpriority = 5
supermove = 1
ownpal = 1


[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0 && Anim != 199
value = 199

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,10
volume = 255
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,7
volume = 255

[State 1000, Helper]
type = Helper
trigger1 = !IsHelper(11000)
trigger1 = AnimElem =2
postype = p1
pos = 0,0
stateno = 327
bindtime = 1
ownpal = 1
name = "Energy Field"
ID = 326

[State 1000, ChangeState]
type = ChangeState
trigger1 = Time =50
value = 0
ctrl = 1



; The Energy Shot
[Statedef 327]
type = S
movetype = A
physics = N
velset = 0,0
anim = 355
sprpriority = 5
juggle = 2
ctrl = 0

[State 0, 1]
type = BindToParent
trigger1 = 1
time = 1
;facing = 0
pos = 0, 0
;ignorehitpause = 0
;persistent = 1

[State 4001, 1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 4001, 2]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 3031, 1]
type = AfterImage
trigger1 = Time = 0
time = 9999
PalBright   =   0,  0,  0
PalContrast = 120,120,120
PalAdd      =  0,0,0 ;29, 29, 29
PalMul      = .77,.77,.77
trans = add
timegap =1
framegap = 2

[State 0, 1]
type = Explod
trigger1 = !time
anim = 990
postype = p1
pos = 0,0
sprpriority = 5
supermove = 1
ownpal = 1


[State 0, 1]
type = Explod
trigger1 = !time
anim = 990
postype = p1
pos = 0,0
sprpriority = 5
supermove = 1
ownpal = 1
facing = -1

[State 4001, HitDef]
type = HitDef
trigger1 = !time
attr = S, SP
animtype = Medium
damage = 55,5
hitflag = MAFD
guardflag = MA
pausetime = 0, 9
sparkno = 3
sparkxy = 0,floor(p2dist Y - 50)
hitsound = s55,1
guardsound = 6,0
ground.type = High
ground.slidetime = 23
ground.hittime = 26
ground.velocity = -15,-2
guard.velocity = -4
air.velocity = -15,-2
airguard.velocity = -4,-2
down.velocity = -3,-1
down.hittime = 26
getpower = 0
envshake.time = 20
fall.envshake.time = 20
fall = 1
fall.recover = 0
sprpriority = 5

[State 4001, NotHitBy]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 4001, HitOverride]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 1006
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 4001, HitBy]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 2512, Helper Hits Count Too]
type = ParentVarSet ; Only works for helpers.
trigger1 = UniqHitCount != Var(20)
v = 19
value = 1

[State 2512, Helper Hits Count Too]
type = VarSet
trigger1 = UniqHitCount != Var(20)
v = 20
value = UniqHitCount

[State 4001, DestroySelf]
type = DestroySelf
trigger1 = animtime =0
trigger2 = parent, stateno != 326
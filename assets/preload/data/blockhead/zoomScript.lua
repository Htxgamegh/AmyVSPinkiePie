--for Canera Again
mustHit = false
local px = 500
local py = 280
local bx = 800
local by = 360
slap = false
local ofs = 20

--------------- u thought that this is was for Zoom? and i hide the modchart.lua hehehe :)

--Sonic and Dash
local watchALT = '_left'
local watchANIM = ''
walkaway = false

---------------

--Idk for Camera
camspeedFor = 1
camspeed = 1
multgame = 1
multhud = 1

---------------

--u might find a very random messages and wierd things about my fav modder and fav artists here so :) because i love leaving a message on lua
function onCreatePost() --shi 500+line aaaaasaa thanks stronvo for cheer up
    setProperty('camHUD.visible',false)
	setProperty('dad.x',320)
	setProperty('dad.y', 13)
	setProperty('timeTxt.visible', false)
    setProperty('timeBar.visible', false)
    setProperty('timeBarBG.visible', false)
    setProperty('cameraSpeed', 3) --Fun Fun Fun Fun

	setProperty('boyfriend.x', 631)
	setProperty('boyfriend.y',110)
	--dad.disabledDance = true
	--bf.disabledDance = true
    precacheImage('pinkieGroup')
    precacheImage('pinkieGroup2')
    precacheImage('pinkiewhistle')
setProperty('gf.visible',false)
setProperty('defaultCamZoom',1.3)
setProperty('skipCountdown',true)
setProperty('camPos.x',1280)
setProperty('camPos.y',720)
setProperty('camFollow.x',640)
setProperty('camFollow.y',360)
setProperty('cam.x',511.5)
setProperty('cam.y',293.7)
end
function onCreate()

makeLuaSprite('sky','sky',-194,-164) --i want to give up on this ;-; #($($(('?9:
loadGraphic('sky','sky')
setProperty('sky.antialiasing',true)
setScrollFactor('sky', 0.1, 0.1)
scaleObject('sky', 1.7, 1.2)
addLuaSprite('sky', false)


makeLuaSprite('hills', 'hills', -1371,169.8,true)
loadGraphic('hills','hills') 
setProperty('hills.antialiasing', true)
setScrollFactor('hills', 0.3, 0.3)
addLuaSprite('hills', false)

makeLuaSprite('houses','houses',-1025.5,73.1,true)
loadGraphic('houses','houses')
setProperty('houses.antialiasing', true)
setScrollFactor('houses',0.6,0.6)
addLuaSprite('houses', false)


makeLuaSprite('house','house',325.05,118.5,true)
loadGraphic('house','house')
setProperty('house.antialiasing', true)
setScrollFactor('house', 0.6, 0.6)
addLuaSprite('house', false)


makeLuaSprite('road','road',-1121.7,491.65,true)
loadGraphic('road','road')
setProperty('road.antialiasing',true)
setScrollFactor('road',0.9, 0.9)
addLuaSprite('road', false)




makeAnimatedLuaSprite('sonic','sonic',561,333,true) --update ur psych engine to latest please so the true on this works
loadGraphic('sonic','sonic')
loadFrames('sonic','sonic')
addAnimationByIndices('sonic','idle_left','sonic','0',0) --addAnimationByIndices(tag:String, name:String, prefix:String, indices:String, framerate:Int = 24)
addAnimationByIndices('sonic','blink_left','sonic','1',0) --i got confused its just a indices lol
addAnimationByIndices('sonic','idle_left-surprised','sonic','2',0)
addAnimationByIndices('sonic','idle_left-bored','sonic','3',0)

addAnimationByIndices('sonic','idle_right','sonic','4',0)
addAnimationByIndices('sonic','blink_right','sonic','5',0)
addAnimationByIndices('sonic','idle_right-surprised','sonic','6',0)
addAnimationByIndices('sonic','idle_right-bored','sonic','7',0)

addAnimationByIndices('sonic','look','sonic','8',0)
addAnimationByPrefix('sonic','walkaway','sonicWALK', 4, true)
objectPlayAnimation('sonic','idle_left')
setProperty('sonic.antialiasing', true)
addLuaSprite('sonic', false)

--ohh oh, do you know kaohto20, he is good at drawing i am inspired how he makes those its a cool small comic too


makeAnimatedLuaSprite('rainbowdash','rainbowdash',631,380,true)
loadGraphic('rainbowdash','rainbowdash')
loadFrames('rainbowdash','rainbowdash')
addAnimationByIndices('rainbowdash','idle_left','rainbowdash','0',0)
addAnimationByIndices('rainbowdash','blink_left','rainbowdash','1',0)
addAnimationByIndices('rainbowdash','idle_left-surprised', 'rainbowdash','2',0)
addAnimationByIndices('rainbowdash','idle_left-bored','rainbowdash','3',0)

addAnimationByIndices('rainbowdash','idle_right','rainbowdash','4',0)
addAnimationByIndices('rainbowdash','blink_right', 'rainbowdash','5',0)
addAnimationByIndices('rainbowdash','idle_right-surprised','rainbowdash','6',0)
addAnimationByIndices('rainbowdash','idle_right-bored','rainbowdash','7',0)

addAnimationByIndices('rainbowdash','look', 'rainbowdash','8',0)
addAnimationByPrefix('rainbowdash','walkaway','rainbowdashWALK',4, true)
objectPlayAnimation('rainbowdash','idle_left')
setProperty('rainbowdash.antialiasing',true)
addLuaSprite('rainbowdash', false)

setScrollFactor('rainbowdash', 0.87, 0.87)
setScrollFactor('sonic', 0.87, 0.87)

makeLuaSprite('roadF','roadF',-752.2,709.1,true)
loadGraphic('roadF','roadF')
setProperty('roadF.antialiasing',true)
setScrollFactor('roadF', 1.2, 1.2)
addLuaSprite('roadF', false)


makeLuaSprite('shadow','shadow',270.55-133,631.95-3)
loadGraphic('shadow','shadow')
setProperty('shadow.antialiasing',true)
setScrollFactor('shadow', 1, 1)
addLuaSprite('shadow', false)


makeAnimatedLuaSprite('pinkiewhistle','pinkiewhistle',0,0)
loadGraphic('pinkiewhistle','pinkiewhistle')
loadFrames('pinkiewhistle','pinkiewhistle')
addAnimationByPrefix('pinkiewhistle','pinkiewhistle','pinkieWhistle',24,true)
objectPlayAnimation('pinkiewhistle','pinkiewhistle',true)
setProperty('pinkiewhistle.antialiasing',true)
setObjectCamera('pinkiewhistle', 'other')
setProperty('pinkiewhistle.alpha', 0.01) --this should work
precacheImage('pinkiewhistle')--making sure it precache AHY IT DOESN'T WORK I NEED THIS to prevent the lag on android users
addLuaSprite('pinkiewhistle', false)



makeAnimatedLuaSprite('pinkieGroup', 'pinkieGroup',1428.75,2)
loadGraphic('pinkieGroup','pinkieGroup')
loadFrames('pinkieGroup','pinkieGroup')
addAnimationByPrefix('pinkieGroup','pinkieGroup','pinkieGroup0',24,false)
addAnimationByPrefix('pinkieGroup','idle','pinkieGroupBounce',12,false)
objectPlayAnimation('pinkieGroup','pinkieGroup')
setProperty('pinkieGroup.antialiasing', true)
setScrollFactor('pinkieGroup', 0.95, 0.95)
--pinkieGroup.setOrigin(pinkieGroup,0,0) idk
setProperty('pinkieGroup.visible',true)
addLuaSprite('pinkieGroup', false)


makeAnimatedLuaSprite('pinkieGroup2', 'pinkieGroup2',1395.1,-234.35)
loadGraphic('pinkieGroup2','pinkieGroup')
loadFrames('pinkieGroup2','pinkieGroup')
addAnimationByPrefix('pinkieGroup2','pinkieGroup','pinkieGroup0',24,false)
addAnimationByPrefix('pinkieGroup2','idle','pinkieGroupBounce',12,false)
objectPlayAnimation('pinkieGroup2','pinkieGroup')
setProperty('pinkieGroup2.antialiasing',true)
scaleObject('pinkieGroup2',1.64, 1.64)
setScrollFactor('pinkieGroup2', 1.2, 1.2)
setProperty('pinkieGroup2.visible', true)
addLuaSprite('pinkieGroup2', true)



makeAnimatedLuaSprite('amyGroup','amyGroup',-3367.05,-30)
loadGraphic('amyGroup','amyGroup')
loadFrames('amyGroup','amyGroup')
addAnimationByPrefix('amyGroup','amyGroup','amycrowd',24,false)
addAnimationByPrefix('amyGroup','idle','amybounce',12,false)
objectPlayAnimation('amyGroup','amyGroup')
setProperty('amyGroup.antialiasing',true)
setScrollFactor('amyGroup', 0.95, 0.95)
setProperty('amyGroup.visible', false)
addLuaSprite('amyGroup', false)


makeAnimatedLuaSprite('amyGroup2','amyGroup2',-3098.9,-240.45)
loadGraphic('amyGroup2','amyGroup')
loadFrames('amyGroup2','amyGroup')
addAnimationByPrefix('amyGroup2','amyGroup','amycrowd',24,false)
addAnimationByPrefix('amyGroup2','idle','amybounce',12,false)
objectPlayAnimation('amyGroup2','amyGroup')
setProperty('amyGroup2.antialiasing',true)
scaleObject('amyGroup2',1.64, 1.64)
setScrollFactor('amyGroup2',1.2, 1.2)
setProperty('amyGroup2.visible',false)
addLuaSprite('amyGroup2', true) --"i want ehem inside me" idc amy said it with adeep voice

--OOOO,do you know banbuds,im inspired on him making sprites animating and more i love his arts

end
local frames = 0
function onSongStart()
setProperty('dad.specialAnim', true)
setProperty('boyfriend.specialAnim', true)
characterPlayAnim('boyfriend','talk1',true)
characterPlayAnim('dad','talk1',true)
setProperty('pinkieGroup2.visible', false)
setProperty('pinkieGroup.visible',false) 
setProperty('pinkiewhistle.x',-2006)
setProperty('pinkiewhistle.y',-131.4)
setProperty('pinkiewhistle.alpha', 1) --precache maybe precacheImage at 8k-4k sucks

end
function onBeatHit()--BEATTIME

	followchar = curBeat >= 20


	if curBeat >= 52 and curBeat % camspeed == 0 then
		triggerEvent('Add Camera Zoom',0.03*multgame,0.06*multhud)
	end
    if curBeat > 356 and curBeat % camspeedFor == 0 then --calculator
		triggerEvent('Add Camera Zoom',0.03*multgame,0.06*multhud)
	end

	if curBeat == 22 then

setProperty('camFollow.x',808)
setProperty('camFollow.y',276)
	setProperty('dad.specialAnim', false)
	end
	if curBeat == 32 then

	setProperty('dad.specialAnim', false)
	end



	if curBeat > 244 then
	camspeed = 4
	--setProperty('dad.danceSpeed',4)
	--setProperty('boyfriend.danceSpeed',4)
	--setProperty('bfaltAnim','-alt')
	--setProperty('dadaltAnim','-alt')
	triggerEvent('Alt Idle Animation', 'dad', '-alt')
	triggerEvent('Alt Idle Animation', 'boyfriend', '-alt')
	end

	if curBeat == 276 then
	slap = false
		doTweenAlpha('camHUD', 'camHUD',0,0.4, 'linear')
		doTweenZoom('camGame','camGame',1.2, 1.2, 'linear')
		--setCamPos(421.5,253.7)
        setProperty('camFollow.x', 421.5)
        setProperty('camFollow.y', 253.7)
	end
--and of course bbpanzu,i am inspired to him making this mods, its banger i love the song 'Babs Sneed', 'Looking Glass', 'Toyboy'i hope fnf don't die until i make my own mod 
	if curBeat == 283 then
		setProperty('dad.specialAnim', true)
        setProperty('boyfriend.specialAnim', true)
		characterPlayAnim('dad','talk2')
		characterPlayAnim('boyfriend','talk2')
	end
	if curBeat == 293 then
		--setCamPos(648,276)
		setProperty('camFollow.x', 648)
        setProperty('camFollow.y', 276)
	end
	if curBeat == 302 then
		--setCamPos(848,276)
		setProperty('camFollow.x', 848)
        setProperty('camFollow.y', 276)
		setProperty('defaultCamZoom',1.4)
		setProperty('camGame.zoom',1.6)
	end
	if curBeat == 305 then
		setProperty('defaultCamZoom',1.2)
	end
	if curBeat == 307 then
		--pinkiewhistle.tween(pinkiewhistle,{['x']=-206},0.3,'sineOut')
		doTweenX('pinkieswhistle', 'pinkiewhistle', -206, 0.3, 'sineOut')
		setProperty('defaultCamZoom',1.4)
	end
	if curBeat == 310 then
		--pinkiewhistle.tween(pinkiewhistle,{['x']=2000},0.8,'sineIn')
		doTweenX('pinkiewshistle', 'pinkiewhistle', 2000, 0.3, 'sineOut')
		setProperty('defaultCamZoom',0.8)
	end
	if curBeat == 312 then
setProperty('pinkieGroup.visible',true) --"Too many Pinkie Pie"
setProperty('pinkieGroup2.visible', true)
--pinkieGroup.tween(pinkieGroup,{['x']=492},1,'circInOut')
--pinkieGroup2.tween(pinkieGroup2,{['x']=726},1,'circOut')
doTweenX('pinkieGrsoup', 'pinkieGroup', 492, 1, 'circInOut')
doTweenX('pinkieGrosup2', 'pinkieGroup2', 726, 1, 'circOut')
objectPlayAnimation('pinkieGroup','pinkieGroup')
objectPlayAnimation('pinkieGroup2','pinkieGroup')
		--gameCam.shake(gameCam,0.01,1.4)
		cameraShake('camGame', 1.4, 0.01)
	end
	if curBeat == 321 then
		doTweenX('camFollow.x','camFollow',420,1.2)
		doTweenY('camFollow.y','camFollow',290,1.2)
	end

	if curBeat == 344 then
setProperty('amyGroup.visible', true)
setProperty('amyGroup2.visible',true)
--amyGroup.tween(amyGroup,{['x']=-367.05},1,'circInOut')
--amyGroup2.tween(amyGroup2,{['x']=-1198},1,'circOut')
doTweenX('pinkiesGroup', 'amyGroup', -367.05, 1, 'circInOut')
doTweenX('pinkieGsroup2', 'amyGroup2', -1198, 1, 'circOut')
objectPlayAnimation('amyGroup','amyGroupGroup',true)
objectPlayAnimation('amyGroup2','amyGroup',true)
		--gameCam.shake(gameCam,0.01,1.4)
		cameraShake('camGame', 1.4, 0.01)
end
	if curBeat == 89*4 then -- :rock: bbpan why this thing using a math
camspeedFor = 1
multgame = 1.3
	--setProperty('dad.danceSpeed',1)
	--setProperty('camBoomSpeed',1)
	--setProperty('boyfriend.danceSpeed',1)
	--dad.disabledDance = false
	--bf.disabledDance = false
objectPlayAnimation('amyGroup','idle',true)
objectPlayAnimation('amyGroup2','idle',true)
objectPlayAnimation('pinkieGroup','idle',true)
objectPlayAnimation('pinkieGroup2','idle',true)
		doTweenAlpha('camereaaaaWOWOWOWOOOO','camHUD',1,0.2) --why u zoomin huh °=°
		setProperty('defaultCamZoom',0.9)
	end

	if curBeat > 89*4 then
	
objectPlayAnimation('amyGroup','idle',true)
objectPlayAnimation('amyGroup2','idle',true)
objectPlayAnimation('pinkieGroup','idle',true)
objectPlayAnimation('pinkieGroup2','idle',true)
	
	end
--And that's it

--OO FINNALLLpyY curStepPHEHEHETTT
end
--this is hard than i though, i thought it was easy to rechange it

function onStepHit()
if curStep == 0 then
setProperty('dad.specialAnim', true)
setProperty('boyfriend.specialAnim', true)
characterPlayAnim('boyfriend','talk1',true)
characterPlayAnim('dad','talk1',true)
--setCamPos(721.5,293.7)
setProperty('camFollow.x', 721.5)
setProperty('camFollow.y', 293.7)

end
if curStep == 25 then

setProperty('camFollow.x', 969)
setProperty('camFollow.y', 282)
--setCamPos(969,282)

end

if curStep == 31 then


setProperty('defaultCamZoom',1.3)
setProperty('camGame.zoom',1.5)
--setCamPos(508,276)
setProperty('camFollow.x', 508)
setProperty('camFollow.y', 276)

end

if curStep == 33 then


setCamPos(648,276)
setProperty('camFollow.x', 648)
setProperty('camFollow.y', 276)

end




if curStep == 80 then
--gameCam.shake(gameCam,0.02,0.4) shakeit SHAKEEITTTTT
cameraShake('camGame', 0.4, 0.02)
end
if curStep == 81 then

setProperty('camHUD.visible',true)

setProperty('camGame.zoom',1)
setProperty('defaultCamZoom',0.8)
slap = true

watchANIM = '-surprised' --does this even work here //Tested it works like a charm 'but the android workflows finkin still jot working fcn ndk versions"
dashsonic();
end

if curStep == 164 then

watchANIM = ''
dashsonic();
end


if curStep == 454 then
--boredexam
watchANIM = '-bored'
dashsonic();
end

if curStep == 494 then
walkaway = true
objectPlayAnimation('rainbowdash','look')
objectPlayAnimation('sonic','look')
end

if curStep == 534 then
objectPlayAnimation('rainbowdash','walkaway',true)
objectPlayAnimation('sonic','walkaway',true)
setProperty('rainbowdash.velocity.x', 100)
setProperty('sonic.velocity.x', 100)
end


end


function dashsonic()


if not walkaway then
objectPlayAnimation('rainbowdash','idle'..watchALT..watchANIM)
objectPlayAnimation('sonic','idle'..watchALT..watchANIM)
end

end

--oh geez my eyes starting to hurt aaaaaaaaaaaaaaaawadagaka
function onMoveCamera(focus)
if focus == 'dad' then
watchALT = '_left'
dashsonic()
end
	if not followchar and slap then
		--setCamPos(px, py)
		setProperty('camFollow.x', px)
		setProperty('camFollow.y', py)
mustHit = false

elseif focus == 'boyfriend' then
watchALT = '_right'
dashsonic()
end
	if not followchar and slap  then
		--setCamPos(bx, by)
		setProperty('camFollow.x', bx)
		setProperty('camFollow.y', by)
	end
mustHit = true
end

local followchar = true;
local del = 0;
local del2 = 0;

-- so now i know that we can use 89*4 like that on curBeat i learned something NEWWW
function onUpdate(elapsed)
if getProperty('dad.animation.curAnim.name') == 'talk1' or getProperty('boyfriend.animation.curAnim.name') == 'talk2' then
   setProperty('dad.specialAnim', true)
   setProperty('boyfriend.specialAnim', true)
  end
if getProperty('dad.animation.curAnim.name') == 'talk2' or getProperty('boyfriend.animation.curAnim.name') == 'talk2' then
   setProperty('boyfriend.specialAnim', true)
   setProperty('dad.specialAnim', true)
  end
frames = frames + (elapsed/0.016)
if curStep < 80 and curStep > 0 then --sync animation //fazz('oooooohh') i sure hope this works on psych
setProperty('dad.animation.curAnim.curFrame',math.floor(24*getProperty('vocals.time')/1000))
setProperty('boyfriend.animation.curAnim.curFrame',math.floor(24*getProperty('vocals.time')/1000))
end

if frames > 190 then
if not walkaway then
objectPlayAnimation('rainbowdash','blink'..watchALT)
objectPlayAnimation('sonic','blink'..watchALT)
end
end

if frames > 194 then
frames = 0
dashsonic()
end
if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchar == true then
        if mustHitSection == false then
             watchALT = '_left' --doomed
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',px-ofs,py)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',px+ofs,py)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',px,py-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',px,py+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',px-ofs,py)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',px+ofs,py)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',px,py-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',px,py+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',px,py)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',px,py)
            end
        else
            watchALT = '_right'
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',bx-ofs,by)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',bx+ofs,by)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',bx,by-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',bx,by+ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',bx-ofs,by)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT-alr' then
                triggerEvent('Camera Follow Pos',bx+ofs,by)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',bx,by-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',bx,by+ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',bx,by)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',bx,by)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
    
end
--just in 8:57am TIMEZONE -_- kaoh just posted new thing ^_^
--[[function opponentNoteHit(id, direction, noteType, isSustainNote)

	if followchar and not mustHit or mustHitSection == false then

		if direction == 0 then
			
			--setCamPos(px-ofs, py)
			setProperty('camFollow.x', px-ofs)
			setProperty('camFollow.y', py)
		end
		if direction == 1 then
			
			--setCamPos(px, py+ofs)
			setProperty('camFollow.x', px)
			setProperty('camFollow.y', py+ofs)
		end
		if direction == 2 then
			
			--setCamPos(px, py-ofs)
			setProperty('camFollow.x', px)
			setProperty('camFollow.y', py-ofs)
		end
		if direction == 3 then
			
			--setCamPos(px+ofs, py)
			setProperty('camFollow.x', px+ofs)
			setProperty('camFollow.y', py)
		end


	end


end 

function goodNoteHit(id, direction, noteType, isSustainNote)


	if followchar and mustHit or mustHitSection == true then

		if direction == 0 then
			
			--setCamPos(bx-ofs, by)
			setProperty('camFollow.x', bx-ofs)
			setProperty('camFollow.y', by)
		end
		if direction == 1 then
			
			--setCamPos(bx, by+ofs)
			setProperty('camFollow.x', bx)
			setProperty('camFollow.y', by+ofs)
		end
		if direction == 2 then
			
			--setCamPos(bx, by-ofs)
			setProperty('camFollow.x', bx)
			setProperty('camFollow.y', by-ofs)
		end
		if direction == 3 then
			
			--setCamPos(bx+ofs, by)
			setProperty('camFollow.x', bx+ofs)
			setProperty('camFollow.y', by)
		end


	end

end]]


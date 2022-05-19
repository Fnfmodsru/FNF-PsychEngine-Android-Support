function onCreate()
	-- background shit
	makeLuaSprite('school', 'school', -300, -120);
        scaleLuaSprite('school', 1, 1);
	setLuaSpriteScrollFactor('school', 0.9, 0.9);
        addLuaSprite('school', false);

	makeLuaSprite('bananas', 'bananas', -300, -120);
        scaleLuaSprite('bananas', 1, 1);
	setLuaSpriteScrollFactor('bananas', 0.9, 0.9);
        addLuaSprite('bananas', false);


	setProperty('bananas.visible', false)
	setProperty('school.visible', true)
end


function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
		
		if value1 == 'gobananas' then
			setProperty('bananas.visible', true);
			setProperty('school.visible', false);
		end
		if value1 == 'ewschool' then
			setProperty('bananas.visible',false);
			setProperty('school.visible', true);
		end
	end
end

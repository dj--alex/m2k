GestureLib_Mouse_X = 0;	--Mouse position at X
GestureLib_Mouse_Y = 0;	--Mouse position at Y
GestureLib_global_count_instances = 0; --Counts instances which uses mouse
		
function GestureLib()
	local self = {};

		self.gesturing = false;	--Chekcs that is user gesturing
		self.dir_x = 0;	--Distance beetwen preMouse_X and Mouse_X
		self.dir_y = 0;	--Distance beetwen preMouse_Y and Mouse_Y

		self.gestures = {};	--Gestures array
		self.gesturesBuffer = '';	--Gestures Buffer
		self.gestureCheck = '';	--Checks which gesture must be complete

		self.minDistance = 0;		--Minimal distance for gesture works
		self.minCrossDistance = 0;	--Minimal distance in cross
		
		self.preMouse_X = 0;	--Starting position at X
		self.preMouse_Y = 0;	--Starting position at Y

		self.minTime = 0;	--Minimal time for gesture works (miliseconds)
		self.nowTime = 0.0;	--Local time in miliseconds

		self.count_instances = 0;	--Give own number for else instance which need mouse

	function self.mousepressed(x, y, button, istouch)
		if button == 1 then
			self.preMouse_X = GestureLib_Mouse_X;
			self.preMouse_Y = GestureLib_Mouse_Y;
			self.gesturing = true;
			for k,v in pairs(self.gestures) do self.gestures[k]=nil end
			self.gesturesBuffer = 'TP';
			self.nowTime = love.timer.getTime() * 1000;
		end
	end

	function self.mousereleased(x, y, button, istouch)
		if (button == 1) then 
			if (self.gesturing == true) then		
				self.gesturesBuffer = 'TR';
			end
			self.gesturing = false;
		end
	end

	return self
end

function GestureLib_Dist(x1, x2, y1, y2)
		dx = x1 - x2;
		dy = y1 - y2;
		return math.sqrt ( dx * dx + dy * dy );	
end

function GestureLib_ArrayToString(array)
	out = "[";
	for i,v in pairs (array) do
		if (i ~= table.getn(array)) and (array[i] ~= '') then
				out = out .. array[i] .. ',';
		elseif (i == table.getn(array)) and (array[i] ~= '') then
				out = out .. array[i];
		end
	end
	out = out .. "]";
	return out;
end

require "lib/GestureLib/GestureLib"

function Tap(a,t)
	--[[
		@param	a	amount of taps
		@param	t	minimal time
	]]--
	local self = GestureLib();
	
	self.gestureCheck = '[';
	for i = 1, a do
		if i == a then
			self.gestureCheck = self.gestureCheck .. 'TP,TR';
		end
		if i ~= a then
			self.gestureCheck = self.gestureCheck .. 'TP,TR,';
		end
	end
	
	self.gestureCheck = self.gestureCheck .. "]";	
	self.minTime = t;
	self.timer = 0;		

	function self.mousepressed(x, y, button, istouch)	--override
		if button == 1 then
			self.gesturing = true;
			self.gesturesBuffer = 'TP';
			if self.timer >= self.minTime then
				for k,v in pairs(self.gestures) do self.gestures[k]=nil end
			end
			self.nowTime = love.timer.getTime() * 1000;
		end
	end

	function self.Check()
		if (GestureLib_ArrayToString(self.gestures) ~= "[]") and (self.minTime > 0) then
			self.timer = -(self.nowTime - (love.timer.getTime() * 1000));

			if (self.timer >= self.minTime) and (self.gestureCheck ~= GestureLib_ArrayToString(self.gestures)) then
				self.gesturing = false; 	
				for k,v in pairs(self.gestures) do self.gestures[k]=nil end
				self.gesturesBuffer = '';
			end
		end
	
	
		if self.gestureCheck ~= GestureLib_ArrayToString(self.gestures) then 
			return false; 
		end 
		
		return true;
	end

	function self:update()	
		if self.gestures[table.getn(self.gestures)] ~= self.gesturesBuffer then
			--[[Prevents from duplicate the same value
				Last performed gesture must be other than last gesture at array, 
				otherwise value from gesturesBuffer is not pushed to array--]]
			table.insert(self.gestures, self.gesturesBuffer);
		end
	end
		
	return self
end

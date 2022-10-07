require "lib/GestureLib/GestureLib"

function Swipe(g,d,t)
	--[[
		@param	g	Gesture
		@param	d	Minimal Distance
		@param	t	minimal time
	]]--
	local self = GestureLib();
	
	self.gestureCheck = g;
	self.minDistance = d;
	self.minTime = t;
	self.count_instances = GestureLib_global_count_instances + 1;
	GestureLib_global_count_instances = self.count_instances;
			
	if d < 0 then
		self.minDistance = (2 / 9) * (love.graphics.getWidth() + love.graphics.getHeight()) / 2;
	end
	self.minCrossDistance = (1 / 4) * self.minDistance;

	function self.Check()
	
		self.timer = 0;		
	
		if (self.gesturing == true) and (self.minTime > 0) then
			self.timer = -(self.nowTime - (love.timer.getTime() * 1000));
	
		if self.timer >= self.minTime then
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

		if self.count_instances == 1 then
			GestureLib_Mouse_X, GestureLib_Mouse_Y = love.mouse.getPosition();
		end
		
		self.dir_x = -(GestureLib_Mouse_X - self.preMouse_X);
		self.dir_y = -(GestureLib_Mouse_Y - self.preMouse_Y);
		
		if (self.gestures[table.getn(self.gestures)] ~= self.gesturesBuffer) then
			--[[Prevents from duplicate the same value
				Last performed gesture must be other than last gesture at array, 
				otherwise value from gesturesBuffer is not pushed to array--]]
			table.insert(self.gestures, self.gesturesBuffer);
		end
		
			--[[Fixing wrong position--]]
		if (self.dir_y > 0) and not( (self.dir_x < -self.minCrossDistance) or (self.dir_x > self.minCrossDistance) )then
			if self.gestures[table.getn(self.gestures)] == 'N' then 
				self.preMouse_Y = GestureLib_Mouse_Y; 
			end	
		end
		if (self.dir_y > self.minCrossDistance) and (self.dir_x < self.minCrossDistance) then
			if self.gestures[table.getn(self.gestures)] == 'NE' then	
				self.preMouse_X = GestureLib_Mouse_X;
				self.preMouse_Y = GestureLib_Mouse_Y; 
			end	
		end
		if (self.dir_x < 0) and not( (self.dir_y < -self.minCrossDistance) or (self.dir_y > self.minCrossDistance) )then
			if self.gestures[table.getn(self.gestures)] == 'E' then	
				self.preMouse_X = GestureLib_Mouse_X; 
			end	
		end
		if (self.dir_y < -self.minCrossDistance) and (self.dir_x < -self.minCrossDistance) then
			if self.gestures[table.getn(self.gestures)] == 'SE' then	
				self.preMouse_X = GestureLib_Mouse_X;
				self.preMouse_Y = GestureLib_Mouse_Y; 
			end	
		end
		if (self.dir_y < 0) and not( (self.dir_x < -self.minCrossDistance) or (self.dir_x > self.minCrossDistance) )then
			if self.gestures[table.getn(self.gestures)] == 'S' then 
				self.preMouse_Y = GestureLib_Mouse_Y; 
			end	
		end
		if (self.dir_y < -self.minCrossDistance) and (self.dir_x > self.minCrossDistance) then
			if self.gestures[table.getn(self.gestures)] == 'SW' then	
				self.preMouse_X = GestureLib_Mouse_X;
				self.preMouse_Y = GestureLib_Mouse_Y; 
			end	
		end
		if (self.dir_x > 0) and not( (self.dir_y < -self.minCrossDistance) or (self.dir_y > self.minCrossDistance) )then
			if self.gestures[table.getn(self.gestures)] == 'W' then 
				self.preMouse_X = GestureLib_Mouse_X; 
			end	
		end	
		if (self.dir_y > self.minCrossDistance) and (self.dir_x > self.minCrossDistance)then
			if self.gestures[table.getn(self.gestures)] == 'NW' then	
				self.preMouse_X = GestureLib_Mouse_X;
				self.preMouse_Y = GestureLib_Mouse_Y; 
			end	
		end
		
		if (self.gesturing == true) then
			--[[ Here are we choose the gesture --]]
			if (self.dir_y >= self.minDistance) and (self.dir_x < self.minCrossDistance) and (self.dir_x > -self.minCrossDistance ) then
					self.gesturesBuffer = 'N';
					self.preMouse_X = GestureLib_Mouse_X;
					self.preMouse_Y = GestureLib_Mouse_Y;		
			end
			if (self.dir_y > self.minDistance) and (self.dir_x < -self.minDistance) then
					self.gesturesBuffer = 'NE';
					self.preMouse_X = GestureLib_Mouse_X;
					self.preMouse_Y = GestureLib_Mouse_Y;		
			end
			if (self.dir_x <= -self.minDistance) and (self.dir_y < self.minCrossDistance) and (self.dir_y > -self.minCrossDistance) then
					self.gesturesBuffer = 'E';
					self.preMouse_X = GestureLib_Mouse_X;
					self.preMouse_Y = GestureLib_Mouse_Y;
			end
			if (self.dir_y < -self.minDistance) and (self.dir_x < -self.minDistance) then
					self.gesturesBuffer = 'SE';
					self.preMouse_X = GestureLib_Mouse_X;
					self.preMouse_Y = GestureLib_Mouse_Y;
			end
			if (self.dir_y <= -self.minDistance) and (self.dir_x < self.minCrossDistance) and (self.dir_x > -self.minCrossDistance) then
					self.gesturesBuffer = 'S';
					self.preMouse_X = GestureLib_Mouse_X;
					self.preMouse_Y = GestureLib_Mouse_Y;
			end
			if (self.dir_y < -self.minDistance) and (self.dir_x > self.minDistance) then
					self.gesturesBuffer = 'SW';
					self.preMouse_X = GestureLib_Mouse_X;
					self.preMouse_Y = GestureLib_Mouse_Y;
			end
			if (self.dir_y < self.minCrossDistance) and (self.dir_y > -self.minCrossDistance) and (self.dir_x >= self.minDistance) then
					self.gesturesBuffer = 'W';
					self.preMouse_X = GestureLib_Mouse_X;
					self.preMouse_Y = GestureLib_Mouse_Y;	
			end
			if (self.dir_y > self.minDistance) and (self.dir_x > self.minDistance) then
					self.gesturesBuffer = 'NW';
					self.preMouse_X = GestureLib_Mouse_X;
					self.preMouse_Y = GestureLib_Mouse_Y;		
			end
		end
	end
	
	return self
end

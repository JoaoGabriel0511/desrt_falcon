load "Box.rb"

class ObstacleBox < Box
	def move
		@velx = Gosu.offset_x(225, 1)
		@vely = Gosu.offset_y(225, 1)
		@x += @velx
		@y += @vely 
	end
end	
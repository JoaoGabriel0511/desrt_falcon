require 'gosu'
load 'Box.rb'
class EnemyBox < Box
	def move
		@velx = Gosu.offset_x(225, 3)
		@vely = Gosu.offset_y(225, 3)
		@x += @velx
		@y += @vely 
	end	
end	
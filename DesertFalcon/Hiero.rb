require 'gosu'
load "GameObject.rb"
load "Sprites.rb"
class Hiero < GameObject
	def move
		@velx = Gosu.offset_x(225, 1)
		@vely = Gosu.offset_y(225, 1)
		@x += @velx
		@y += @vely 
	end
	private
		def define_sprite
			@sprite = Sprite.new("hiero")
			@sprite.diret
		end	
end	
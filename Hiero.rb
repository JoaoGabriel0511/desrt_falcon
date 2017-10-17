require 'gosu'
load "GameObject.rb"
load "Sprites.rb"
class Hiero < GameObject
	def initialize
		@image = Gosu::Image.new(define_sprite)
		@x = @y = @velx = @vely = @angle = @height = 0.0
		@box = Box.new
		@box.warp(640 + rand(30), 480 + rand(30), 0)
	end	
	def move
		@velx = Gosu.offset_x(225, 1)
		@vely = Gosu.offset_y(225, 1)
		@box.x += @velx
		@box.y += @vely 
	end
	private
		def define_sprite
			@sprite = Sprite.new("hiero")
			@sprite.diret
		end	
end	
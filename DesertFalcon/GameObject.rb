require 'gosu'
load "Sprites.rb"

class GameObject

	def initialize
		@image = Gosu::Image.new(define_sprite)
		@x = @y = @velx = @vely = @angle = @height = 0.0
	end
	def move
	end
	def warp(x, y, height)
    	@x, @y, @height = x, y, height
  	end	
	def draw
		@sprite.draw(@image, @x, @y) 
	end
	private
		def define_sprite
		end	
end

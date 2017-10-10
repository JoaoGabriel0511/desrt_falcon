require 'gosu'
load "Sprites.rb"
load "Box.rb"
class GameObject
	attr_reader :box
	attr_reader :sprite
	attr_reader :image
	def initialize
		@image = Gosu::Image.new(define_sprite)
		@x = @y = @velx = @vely = @angle = @height = 0.0
		@box = Box.new
	end
	def move
	end	
	def draw_params
		{image: @image, x: @box.x, y: @box.y}
	end	
	private
		def define_sprite
		end	
end

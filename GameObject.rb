require 'gosu'
load "Sprites.rb"
load "Box.rb"
class GameObject
	attr_reader :box
	attr_reader :sprite
	attr_reader :image
    def initialize
    end	
	def draw_params
		{image: @image, x: @box.x, y: @box.y}
	end	
	private
		def define_sprite
		end	
end

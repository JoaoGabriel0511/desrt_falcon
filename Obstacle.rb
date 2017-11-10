require 'gosu'
load 'GameObject.rb'
load 'ObstacleBox.rb'

class Obstacle < GameObject
	def initialize
		@image = Gosu::Image.new(define_sprite)
		@box = ObstacleBox.new
	end
	private 
		def define_sprite
			@sprite = Sprite.new("obstacle")
			@sprite.diret
		end		
end
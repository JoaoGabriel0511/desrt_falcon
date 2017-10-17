load "GameObject.rb"
load "ShadowBox.rb"
require 'gosu'
class Shadow < GameObject
	def initialize
		@image = Gosu::Image.new(define_sprite)
		@box = ShadowBox.new
	end
	private
		def define_sprite
			@sprite = Sprite.new("shadow")
   			@sprite.diret
		end 	
end	
require 'gosu'
load "GameObject.rb"
load "HieroBox.rb"
class Hiero < GameObject
	def initialize
		@image = Gosu::Image.new(define_sprite)
		@box = HieroBox.new
	end	
	private
		def define_sprite
			@sprite = Sprite.new("hiero")
			@sprite.diret
		end	
end	
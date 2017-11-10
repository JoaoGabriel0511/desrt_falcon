require 'gosu'
load 'GameObject.rb'
load 'EnemyBox.rb'

class Enemy < GameObject
	def initialize
		@image = Gosu::Image.new(define_sprite)
		@box = EnemyBox.new
	end
	private 
		def define_sprite
			@sprite = Sprite.new("enemy")
			@sprite.diret
		end		
end
load "GameObject.rb"
require 'gosu'
class Shadow < GameObject
	def move(velx, vely)
		@box.x += velx
		@box.y += vely
	end
	private
		def define_sprite
			@sprite = Sprite.new("shadow")
   			@sprite.diret
		end 	
end	
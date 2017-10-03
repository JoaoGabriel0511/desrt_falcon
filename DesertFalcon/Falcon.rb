require 'gosu'
load "GameObject.rb"
load "Sprites_Fal.rb"


class Falcon < GameObject
	def rigth
		if @y < 435
			@velx = Gosu.offset_x(135, 5)
			@vely = Gosu.offset_y(135, 5)
		end	
	end
	def left
		if @y > 35
			@velx = Gosu.offset_x(315, 5)
			@vely = Gosu.offset_y(315, 5)
		end	
	end
	def up
		if(@height < 2)
			@height += 1
		end	
	end
	def draw_shadow
		@sprite.draw_shadow(@x, @y, @height)
	end	
	def down
		if(@height > 0)
			@height -=1
		end	
	end	
	def move 
		@x += @velx
	    @y += @vely
	    @velx *= 0.75
    	@vely *= 0.75	
	end
	private
		def define_sprite
   			@sprite = Sprite_Fal.new("falcon")
   			@sprite.diret
   		end
end	
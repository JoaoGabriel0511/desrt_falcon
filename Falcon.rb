require 'gosu'
load "GameObject.rb"
load "Sprites.rb"


class Falcon < GameObject
	def rigth
		if @box.y < 435
			@velx = Gosu.offset_x(135, 5)
			@vely = Gosu.offset_y(135, 5)
		end	
	end
	def left
		if @box.y > 35
			@velx = Gosu.offset_x(315, 5)
			@vely = Gosu.offset_y(315, 5)
		end	
	end
	def up
		if(@box.height < 2)
			@height += 1
		end	
	end
	def down
		if(@box.height > 0)
			@height -=1
		end	
	end	
	def move 
		@box.x += @velx
	    @box.y += @vely
	    @velx *= 0.75
    	@vely *= 0.75	
	end
	private
		def define_sprite
   			@sprite = Sprite.new("falcon")
   			@sprite.diret
   		end
end	
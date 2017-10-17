require 'gosu'
load "GameObject.rb"
load "Sprites.rb"
load "Shadow.rb"
load "Hiero.rb"


class Falcon < GameObject
	attr_reader :shadow
	def initialize
		@image = Gosu::Image.new(define_sprite)
		@x = @y = @velx = @vely = @angle = @height = 0.0
		@box = Box.new
		@shadow = Shadow.new
		@height_change = 0
	end
	def right
		if @shadow.box.y < 435
			@velx = Gosu.offset_x(135, 5)
			@vely = Gosu.offset_y(135, 5)
			@height_change = 0
		end	
	end
	def left
		if @shadow.box.y > 110
			@velx = Gosu.offset_x(315, 5)
			@vely = Gosu.offset_y(315, 5)
			@height_change = 0
		end	
	end
	def up
		if(@box.height < 2)
			@vely = Gosu.offset_y(80, 70)
			@box.height += 1
			@height_change = 1
		end	
	end
	def down
		if(@box.height > 0)
			@vely = Gosu.offset_y(260, 70)
			@box.height -=1
			@height_change = 1 
		end	
	end	
	def move 
		@box.x += @velx
	    @box.y += @vely
    	if(@height_change == 0)
    		@shadow.move(@velx, @vely)
    	end	
	    @velx *= 0.75
    	@vely *= 0.75
	end
	def collect_hieros hieros
		hieros.reject! do |hiero|
			if @box.height == 0
				if Gosu.distance(@box.x, @box.y, hiero.box.x, hiero.box.y) < 20
	        		true
	      		else
	        		false
	      		end
			end
		end		
	end	
	private
		def define_sprite
   			@sprite = Sprite.new("falcon")
   			@sprite.diret
   		end
end	
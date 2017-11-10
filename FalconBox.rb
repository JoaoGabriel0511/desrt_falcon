load "Box.rb"

class FalconBox < Box
	def initialize shadow
		initializeBox
		@shadow = shadow
		@height_change = 0
	end

	def collect_hieros hieros
		hieros.reject! do |hiero|
			if @height == 0
				if Gosu.distance(@x, @y, hiero.box.x, hiero.box.y) < 20
	        		true
	      		else
	        		false
	      		end
			end
		end		
	end

	def hit(game_objects)
		hit = false
		game_objects.each do |game_object|
			if @height == game_object.box.height
				if Gosu.distance(@x, @y, game_object.box.x, game_object.box.y) < 15
	        		hit = true
	        	end
			end
		end
		return hit		
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
		if(@height < 2)
			@vely = Gosu.offset_y(80, 70)
			@height += 1
			@height_change = 1
		end	
	end

	def down
		if(@height > 0)
			@vely = Gosu.offset_y(260, 70)
			@height -=1
			@height_change = 1 
		end	
	end

	def move 
		@x += @velx
	    @y += @vely
    	if(@height_change == 0)
    		@shadow.box.move(@velx, @vely)
    	end	
	    @velx *= 0.75
    	@vely *= 0.75
	end

end	
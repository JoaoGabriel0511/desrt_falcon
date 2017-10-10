class Sprite
	def initialize(name = "generic")
		@name = name
	end
	def diret 
		"Media/#{@name}.png"
	end
	def draw (image, x, y) 
		if(@name == "falcon")
			image.draw_rot(x,y,2,0)
		elsif(@name == "hiero")
			image.draw_rot(x,y,1,0)
		end					
	end 
end	
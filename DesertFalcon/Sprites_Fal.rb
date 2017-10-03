load "Sprites.rb"
class Sprite_Fal < Sprite
	def draw_shadow(x, y, height)
		@shadow = Gosu::Image.new("Media/shadow.png")
		if height == 2
			dist = 15
		elsif height == 1
			dist = 10
		elsif height == 0
			dist = 2		
		end			
		@shadow.draw_rot(x + dist.to_i, y + dist.to_i, 0, 0)
	end
end
load "Box.rb"

class ShadowBox < Box
	def move(velx, vely)
		@x += velx
		@y += vely
	end
end	
class Box
	attr_accessor :x
	attr_accessor :y
	attr_accessor :height
	def initialize
		@x = 0, @y = 0, height = 0
	end
	def warp(x, y, height)
    	@x, @y, @height = x, y, height
  	end	
end	
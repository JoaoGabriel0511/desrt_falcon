class Box
	attr_accessor :x
	attr_accessor :y
	attr_accessor :height
	def initialize
		initializeBox
	end
	def warp(x, y, height)
    	@x, @y, @height = x, y, height
  	end
  	def move
  	end
  	private
  		def initializeBox
  			@x = 0, @y = 0, height = 0
			@velx = @vely = 0.0
  		end	
end	
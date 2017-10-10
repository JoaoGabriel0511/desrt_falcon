require 'gosu'
load "Falcon.rb"
load "Hiero.rb"

class Jogo < Gosu::Window
	def initialize
		super 640, 480
		self.caption = "Desert Falcon"
		@background = Gosu::Image.new("Media/desert.png", :tileable => true)
		@falcon = Falcon.new
		@hiero = Hiero.new
		@falcon.warp(80, 60, 2)
		@hiero.warp(500, 30, 0)
	end
	def update
		if Gosu.button_down? Gosu::KB_RIGHT or Gosu::button_down? Gosu::GP_RIGHT
      		@falcon.rigth	
      	elsif Gosu.button_down? Gosu::KB_LEFT or Gosu::button_down? Gosu::GP_LEFT
      		@falcon.left		
    	elsif Gosu.button_down? Gosu::KB_UP or Gosu::button_down? Gosu::GP_UP
      		@falcon.up		
    	elsif Gosu.button_down? Gosu::KB_DOWN or Gosu::button_down? Gosu::GP_DOWN
      		@falcon.down		
    	end
    	@hiero.move
    	@falcon.move
	end
	def draw
		@background.draw(0,0,0)
		@falcon.draw
		@falcon.draw_shadow
		@hiero.draw
	end
	def end
	end	
end
Jogo.new.show
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
		@hieros = Array.new
		@falcon.box.warp(80, 60, 2)
		@falcon.shadow.box.warp(80, 158, 0)
	end
	def button_down(id)
		case id	
		when Gosu::KbUp
			@falcon.box.up
		when Gosu::KbDown
			@falcon.box.down
		end											
	end 
	def update
		if Gosu.button_down? Gosu::KB_RIGHT 
      		@falcon.box.right
      	elsif Gosu.button_down? Gosu::KB_LEFT 
      		@falcon.box.left		
    	end
    	if rand(200) < 1 and @hieros.size < 5
      		@hieros << Hiero.new
      		@hieros.last.box.warp(rand(680),0,0)
    	end
    	@hieros.each{|hiero| hiero.box.move}
    	@falcon.box.move
    	@falcon.box.collect_hieros(@hieros) 
	end
	def draw
		@background.draw(0,0,0)
		@falcon.sprite.draw(@falcon.draw_params)
		@falcon.shadow.sprite.draw(@falcon.shadow.draw_params)
		@hieros.each{|hiero| hiero.sprite.draw(hiero.draw_params)}
	end
end
Jogo.new.show
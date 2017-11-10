require 'gosu'

class GameOver < Gosu::Window
	def initialize
		super 640, 480
		self.caption = "Desert Falcon"
		@game_over = Gosu::Font.new(20)
	end
	def update
		if Gosu.button_down? Gosu::KB_ENTER
			puts('oi')
		end	 
	end
	def draw
		@game_over.draw("GAME  OVER", 170, 150, 0, 3.0, 3.0, Gosu::Color::RED, :additive)
	end	
end
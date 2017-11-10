require 'gosu'
load "Falcon.rb"
load "Hiero.rb"
load "Enemy.rb"
load "Obstacle.rb"
load "GameOver.rb"

class Jogo < Gosu::Window
	def initialize 
		super 640, 480
		self.caption = "Desert Falcon"
		@background = Gosu::Image.new("Media/desert.png", :tileable => true)
		@falcon = Falcon.new
		@hieros = Array.new
		@enemys = Array.new
		@obstacles = Array.new
		@points = Gosu::Font.new(20)
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
    	generate(@enemys, 'enemy')
    	generate(@hieros, 'hiero')
    	generate(@obstacles, 'obstacle')
    	@falcon.box.move
    	if(@falcon.box.hit(@enemys) || @falcon.box.hit(@obstacles)) 
    		GameOver.new.show
    		close!
    	end
    	aux1 = @hieros.size
    	@falcon.box.collect_hieros(@hieros)
    	aux2 = @hieros.size
    	colected_hieros = aux1 - aux2 
    	@falcon.score += colected_hieros * 10
	end
	def draw
		@background.draw(0,0,-1)
		@points.draw("Score: #{@falcon.score}", 10, 10, 0, 1.0, 1.0, Gosu::Color::BLACK)
		@falcon.sprite.draw(@falcon.draw_params)
		@falcon.shadow.sprite.draw(@falcon.shadow.draw_params)
		@hieros.each{|hiero| hiero.sprite.draw(hiero.draw_params)}
		@enemys.each{|enemy| enemy.sprite.draw(enemy.draw_params)}
		@obstacles.each{|obstacle| obstacle.sprite.draw(obstacle.draw_params)}
	end
	private 
		def generate(array, name)
			if rand(200) < 1 and array.size < 5
				if(name == 'hiero')
	      			array << Hiero.new
	      			array.last.box.warp(rand(680),0,0)
	      		elsif(name == 'enemy')
	      			array << Enemy.new
	      			array.last.box.warp(rand(680),0,2)
	      		elsif(name == 'obstacle')
	      			array << Obstacle.new
	      			array.last.box.warp(rand(680),0,0)		
	      		end			
    		end
	    	array.each{|game_object| game_object.box.move}
	    	array.reject! do |game_object|
    	 	if(game_object.box.x > 640 || game_object.box.y > 480)
    	 		true
    		else
    			false
    		end	
		end
	end		
end
Jogo.new.show
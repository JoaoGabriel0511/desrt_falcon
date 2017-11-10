class Sprite
	def initialize(name = "generic")
		@name = name
	end
	def diret 
		"Media/#{@name}.png"
	end
	def draw (params) 
		if(@name == "falcon" || @name == "enemy")
			params[:image].draw_rot(params[:x],params[:y],2,0)
		elsif (@name == "obstacle")
			params[:image].draw_rot(params[:x],params[:y],1,0)		
		elsif(@name == "hiero")
			params[:image].draw_rot(params[:x],params[:y],0,0)
		elsif(@name == "shadow") 
			params[:image].draw_rot(params[:x],params[:y],-1,0)
		end					
	end 
end	
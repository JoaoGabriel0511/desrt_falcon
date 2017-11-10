require 'gosu'
load "GameObject.rb"
load "Shadow.rb"
load "FalconBox.rb"


class Falcon < GameObject
	attr_reader :shadow
	attr_accessor :score
	def initialize
		@image = Gosu::Image.new(define_sprite)
		@shadow = Shadow.new 
		@box = FalconBox.new(@shadow)
		@score = 0
	end
	private
		def define_sprite
   			@sprite = Sprite.new("falcon")
   			@sprite.diret
   		end
end	
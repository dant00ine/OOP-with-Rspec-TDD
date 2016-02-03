class Samurai < Human
	def initialize
		@health = 150
		@strength = 100
	end

	def mightysacrifice(target)
		self.health -= 10
		target.health -= 25
	end
end
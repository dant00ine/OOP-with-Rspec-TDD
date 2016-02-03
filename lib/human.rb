class Human
	attr_accessor :intelligence, :strength, :stealth, :health
	def initialize
		@strength = 3
		@intelligence = 3
		@stealth = 3
		@health = 100
		puts "I am breathing!!"
	end

	def attack(target)
		if target.class.ancestors.include? Human
			target.health -= 10
			true
		else
			false
		end
	end
end

bob = Human.new
require 'rspec'
require 'samurai'

RSpec.describe Samurai do
	it "has a default strength of 100 and base health of 150"do
		samurai = Samurai.new
		expect(samurai.health).to eq(150)
		expect(samurai.strength).to eq(100)
	end

	it "has a mighty sacrifice attack swapping 10 health for 25 bonus damage"do
		samurai1 = Samurai.new
		samurai2 = Samurai.new
		samurai1.mightysacrifice(samurai2)
		expect(samurai2.health).to eq(125)
		expect(samurai1.health).to eq(140)
	end
end
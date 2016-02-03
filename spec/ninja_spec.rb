require 'rspec'
require 'ninja'

RSpec.describe Ninja do
  it "has an ancestor chain that includes Human" do
  	human = Ninja.ancestors.include?Human
  	expect(human).to eq(true)
  end

  it "has a steal method that increases its stealth by 10" do
    ninja = Ninja.new
    ninja.stealth = 10
    ninja.steal
    expect(ninja.stealth).to eq(20)
  end

  it "has a default stealth of 175" do
  	ninja = Ninja.new
  	stealth = ninja.stealth
  	expect(stealth).to eq(175)
  end
end
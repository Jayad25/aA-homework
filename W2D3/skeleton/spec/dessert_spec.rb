require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  subject(:gulabjamun) {Dessert.new("gulabjamun",100,chef)}
  describe "#initialize" do
    it "sets a type"  do
    expect(gulabjamun.type).to eq('gulabjamun')
  end
    it "sets a quantity" do
      expect(gulabjamun.quantity).to eq(100)
    end

    it "starts ingredients as an empty array" do
      expect(gulabjamun.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do
    expect { Dessert.new("choclate","",chef)}.to raise_error(ArgumentError)
  end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      gulabjamun.add_ingredient("Sugar")
      expect(gulabjamun.ingredients).to include("Sugar")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      ingredients = ["sugar","cashews","butter"]
      ingredients.each do |ing|
        gulabjamun.add_ingredient(ing)
      end
       expect(gulabjamun.ingredients).to eq(ingredients)
       gulabjamun.mix!
       expect(gulabjamun.ingredients).not_to eq(ingredients)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      gulabjamun.eat(12)
      expect(gulabjamun.quantity).to eq(88)
    end

    it "raises an error if the amount is greater than the quantity" do
     # gulabjamun.eat(101)
    expect { gulabjamun.eat(120)}.to raise_error("not enough left!")
  end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      expect(gulabjamun.serve).to eq("chef has made 100 gulabjamun")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(:bake).with(gulabjamun)
      gulabjamun.make_more
    end
  end
end

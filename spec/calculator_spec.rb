require './lib/calculator.rb'

describe Calculator do
  # declaring a calculator variable that can be used by every test
  before(:each) do
    @calc = Calculator.new
  end

  
  context "Given two numbers" do
    # testing that we can add two numbers 
    it "adds the numbers using the add method" do
      sum = @calc.add(2,3)
      expect(sum).to eql(5)
    end

    it "can add two different numbers" do
      sum = @calc.add(8,23)
      expect(sum).to eql(31)
    end

    # testing that we can subtract two numbers
    it "subtracts the numbers using the subtract method" do
      diff = @calc.subtract(10, 5) 
      expect(diff).to eql(5)
    end

    it "can subtract two different numbers" do 
      diff = @calc.subtract(24, 12)
      expect(diff).to eql(12)
    end

    # testing that we can add an array of numbers 
    it "can add all numbers in a given array" do
      sum = @calc.reduce_sum([2, 4, 6, 8])
      expect(sum).to eql(20)
    end

    # testing that we can subtract an array of numbers
    it "can subtract all numbers in a given array" do
      diff = @calc.reduce_diff(20, [10, 2, 2, 2])
      expect(diff).to eql(4)
    end
  end
end
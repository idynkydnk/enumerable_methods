require "enumerable_methods"

describe Enumerable do
  before :all do
    @array = [1,2,3,4]
  end

  describe ".my_all?" do
    context "given an array" do
      it "responds to the array" do
        expect(@array).to respond_to(:my_all?)
      end

      it "returns true if block is true for all elements" do
        expect(@array.my_all? { |x| x < 5 }).to be(true)
      end

      it "returns false if block is false for all elements" do
        expect(@array.my_all? { |x| x > 5 }).to be(false)
      end
    end
  end
end

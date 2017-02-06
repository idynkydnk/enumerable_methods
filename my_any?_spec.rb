require "enumerable_methods"

describe Enumerable do
  before :all do
    @array = [1,2,3,4]
  end

  describe ".my_any?" do
    context "given an array" do
      it "responds to array" do
        expect(@array).to respond_to(:my_any?)
      end

      it "returns true if argument is found in array" do
        expect(@array.my_any? { |x| x = 2 }).to be(true)
      end

      it "returns false it argument is not found" do
        expect(@array.my_any? { |x| x == 23 }).to be(false)
      end
    end
  end
end

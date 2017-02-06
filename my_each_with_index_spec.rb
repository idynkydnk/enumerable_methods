require "enumerable_methods"

describe Enumerable do
  before :all do
    @array = [10,20,30,34]
  end

  describe ".my_each_with_index" do
    context "given an array" do
      it "responds to the array" do
        expect(@array).to respond_to(:my_each_with_index)
      end

      it "prints the index of each element, 0 through 3" do
        expect{ @array.my_each_with_index { |x, y| print y }}.to output("0123").to_stdout
      end

      it "prints the element plus the index" do
        expect{ @array.my_each_with_index { |x, y| print x + y }}.to output("10213237").to_stdout
      end
    end
  end

end

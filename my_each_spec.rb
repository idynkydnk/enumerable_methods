require "enumerable_methods"

describe Enumerable do
 # let(:array) { [1, 2, 3, 4] }
 # let(:hash) { {one: "hello", two: "hey!"} }
  before :all do
    @array = [1,2,3,4]
    @hash = { one: "hi", two: "hello" }
  end

    describe ".my_each" do
      context "given an array" do
        it "responds to the array" do
          expect(@array).to respond_to(:my_each)
        end
        
        it "sums each element" do
          sum = 0
          @array.my_each { |x| sum += x }
          expect(sum).to eql(10)
        end

        it "multiplies each element" do
          multiple = 1
          @array.my_each { |x| multiple *= x }
          expect(multiple).to eql(24)
        end
      end

      context "given a hash" do
        it "responds to hash" do
          expect(@hash).to respond_to(:my_each)
        end

        it "sets keys as 'one' and 'two' and values as 'hello' and 'hey!'" do
          values = []
          keys = []
          @hash.each do |key, value| 
            keys << key
            values << value
          end
          expect(keys).to eql([:one, :two])
          expect(values).to eql(["hi", "hello"])
        end
      end
    end
end

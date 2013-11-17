require_relative '../string_calculator'

describe StringCalculator do
  it "should have an add instance method" do
    StringCalculator.should respond_to :add
  end

  describe StringCalculator, '.add' do
    it "should return 0 if given no summands" do
      StringCalculator.add('').should eq 0
    end

    it "should return the integer given if only given one" do
      StringCalculator.add('2').should eq 2
    end

    it "should be able to add two integers" do
      StringCalculator.add('2,3').should eq 5
    end

    it "should handle more than 2 summands" do
      StringCalculator.add('2,3,4,5,1000').should eq 1014
    end

    it "should be able to handle new lines" do
      StringCalculator.add("2\n3").should eq 5
    end
  end

  describe '.homogenize' do
    it "should replace newline characters with commas" do
      StringCalculator.homogenize("2\n3").should eq "2,3"
    end
  end

  describe '.find_delimeter' do
    it "should find a delimeter at the beginning of the summand string" do
      StringCalculator.find_delimeter("//hello\n23hello4").should eq 'hello'
    end
  end
end

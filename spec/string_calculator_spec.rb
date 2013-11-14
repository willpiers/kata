require_relative '../string_calculator'

describe StringCalculator do
	it "should have an add instance method" do
		StringCalculator.new.should respond_to :add
	end

	describe StringCalculator, '#add' do
		it "should return 0 if given no summands" do
		  StringCalculator.new.add('').should eq 0
		end

		it "should return the integer given if only given one" do
		  StringCalculator.new.add('2').should eq 2
		end

		it "should be able to add two integers" do
		  StringCalculator.new.add('2,3').should eq 5
		end
	end
end

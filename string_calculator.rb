class StringCalculator
	def add(summands)
		return 0 if summands.empty?
		summands.split(',').map {|summand| summand.to_i}.reduce(:+)
	end
end

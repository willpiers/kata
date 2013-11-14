class StringCalculator
	def self.add summand_string
		return 0 if summand_string.empty?
		summands = homogenize summand_string
		summands.split(',').map {|summand| summand.to_i}.reduce(:+)
	end

	def self.homogenize summand_string
		summand_string.gsub(/\s/, ',')
	end
end

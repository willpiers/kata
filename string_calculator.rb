class StringCalculator
	def self.add summand_string
		return 0 if summand_string.empty?

		delimeter = find_delimeter summand_string

		summands = if delimeter
			homogenize(summand_string, delimeter)
		else
			homogenize(summand_string)
		end

		summands.split(',').map {|summand| summand.to_i}.reduce(:+)
	end

	def self.homogenize summand_string, delimeter=nil
		summand_string.gsub!(/\s/, ',')
		if delimeter
			summand_string.gsub!(delimeter, ',')
		end
		summand_string
	end

	def self.find_delimeter summand_string
		first_line = summand_string.split(/\n/).first
		if first_line[0..1] == '//'
			return first_line[2..-1]
		end
		nil
	end
end

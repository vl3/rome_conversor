module RomeConversor
  refine Fixnum do
    # converts an integer into a rome numeral
    # to_r was already used for to_rational
    def to_rome
      rome_numeral = ""
      times_of_number_occurrences = self
      RomeConversor::TRANSFORMATIONS.reverse_each do |numeral, number|
        rome_numeral << numeral.to_s * (times_of_number_occurrences / number)
        times_of_number_occurrences = times_of_number_occurrences % number
      end
      RomeNumeral.new(rome_numeral).numeral
    end
  end
end

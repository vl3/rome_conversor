module RomeConversor
  class RomeNumeral
    attr :numeral

    def initialize numeral
      @numeral = numeral.downcase
      @numeral.split("").each do |single_numeral|
        raise InvalidRomeNumeral.new(single_numeral) unless TRANSFORMATIONS.keys.include? single_numeral.to_sym
      end
    end

    def to_s
      @numeral
    end

    def to_decimal
      result = @numeral.split('').reverse
      total = 0
      maximum_number = nil
      result.map! do |single_numeral|
        number = TRANSFORMATIONS[single_numeral.to_sym]
        if number >= maximum_number.to_i
          maximum_number = number
          total += number
        else
          total -= number
        end
      end
      total
    end
  end

  class InvalidRomeNumeral < ArgumentError
    def initialize char
      @message = "#{char} is not a valid rome numeral. Valid numerals are #{TRANSFORMATIONS.keys.join(", ")}"
      super(@message)
    end
  end
end

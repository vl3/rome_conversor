require "rome_conversor/version"
require "rome_conversor/rome_numeral"
require "rome_conversor/fixnum"

using RomeConversor

module RomeConversor
  TRANSFORMATIONS = {i: 1, v: 5, x: 10, l: 50, c: 100, d: 500, m: 1000}

  def self.parse num_or_numeral
    if num_or_numeral.is_a? String
      parse_rome_numeral num_or_numeral
    elsif num_or_numeral.is_a? ::Fixnum
      parse_fixnum num_or_numeral
    end
  end

  private

  def self.parse_rome_numeral str
    rome = RomeNumeral.new str
    rome.to_decimal
  end

  def self.parse_fixnum num
    num.to_rome
  end
end

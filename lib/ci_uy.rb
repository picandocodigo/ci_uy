# frozen_string_literal: true

# CiUY main validation. The gem receives a string and doesn't care what you use
# to separate the digits, it gets the numbers from the string and checks the
# verification digit. So all of these formats are valid: `1.111.111-1`,
# `1_111_111_1`, `1.111.111/1`.
# The validation algorithm is:
# Multiply each digit by 2, 9, 8, 7, 6, 3, 4 one to one
# Then do 10 - (sum mod 10), that's the verification digit
module CiUY
  def self.validation_digit(input)
    ci = transform(input)
    a = []
    (0..6).each do |i|
      a << ('2987634'[i].to_i * ci[i].to_i)
    end
    (10 - (a.inject(:+) % 10)).to_s[-1]
  end

  def self.validate_ci(input)
    # Using to_a to keep 1.9.3 compatibility
    ci = transform(input).chars.to_a
    return false if ci.length < 6

    digit = ci[-1]
    ci = ci[0..-2]
    get_validation_digit(ci.join) == digit
  end

  def self.random
    ci = rand(1_000_000..9_999_999).to_s
    ci + get_validation_digit(ci)
  end

  def self.transform(cedula)
    cedula = '0' + cedula if cedula.size == 6
    cedula = cedula.to_s if cedula.is_a? Integer
    cedula.chars.reject { |i| i.match(/\D/) }.join
  end

  class << self
    alias get_validation_digit validation_digit
    alias validate validate_ci
    alias get_random_ci random
  end
end

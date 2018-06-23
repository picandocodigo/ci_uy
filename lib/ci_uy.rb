# CiUY main validation. The gem receives a string and doesn't care what you use
# to separate the digits, it gets the numbers from the string and checks the
# verification digit. So all of these formats are valid: `1.111.111-1`,
# `1_111_111_1`, `1.111.111/1`.
# rubocop:disable Naming/UncommunicativeMethodParamName
module CiUY
  def self.validation_digit(ci)
    ci = transform(ci)
    ci = '0' + ci if ci.size == 6
    a = 0
    (0..6).each do |i|
      a += ('2987634'[i].to_i * ci[i].to_i)
    end
    (10 - (a % 10)).to_s[-1]
  end

  def self.validate_ci(ci)
    ci = transform(ci)
    return false if ci.length < 6
    dig = ci[-1]
    ci = ci[0..-2]
    get_validation_digit(ci) == dig
  end

  def self.random
    ci = rand(1_000_000..9_999_999).to_s
    ci += get_validation_digit(ci)
    ci
  end

  def self.transform(ci)
    ci = ci.to_s if ci.is_a? Integer
    ci.gsub!(/\D/, '')
    ci
  end

  class << self
    alias get_validation_digit validation_digit
    alias validate validate_ci
    alias get_random_ci random
  end
end
# rubocop:enable Naming/UncommunicativeMethodParamName

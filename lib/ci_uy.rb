module CiUY
  def self.get_validation_digit(ci)
    ci = transform(ci)
    ci = '0' + ci if ci.size == 6
    a = 0
    (0..6).each do |i|
      a += ("2987634"[i].to_i * ci[i].to_i)
    end
    (10 - (a % 10)).to_s[-1]
  end

  def self.validate_ci(ci)
    ci = transform(ci)
    dig = ci[-1]
    ci = ci[0..-2]
    self.get_validation_digit(ci) == dig
  end

  def self.get_random_ci
    ci = rand(1000000..9999999).to_s
    ci += get_validation_digit(ci)
    ci
  end

  def self.transform(ci)
    if ci.is_a? Integer
      ci = ci.to_s
    end
    ci.gsub!(/\D/, '')
    ci
  end

  class << self
    alias_method :validation_digit, :get_validation_digit
    alias_method :validate, :validate_ci
    alias_method :random, :get_random_ci
  end
end

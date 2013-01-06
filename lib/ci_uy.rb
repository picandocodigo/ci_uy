module CiUY
  def self.get_validation_digit(ci)
    ci.gsub!(/\D/, '')
    a = 0
    (0..6).each do |i|
      a += ("2987634"[i].to_i * ci[i].to_i)
    end
    (10 - (a % 10)).to_s[-1]
  end

  def self.validate_ci(ci)
    ci.gsub!(/\D/, '')
    dig = ci[-1]
    self.get_validation_digit(ci) == dig
  end

  def self.get_random_ci
    ci = rand(1000000..9999999).to_s
    ci += get_validation_digit(ci)
    ci
  end
end

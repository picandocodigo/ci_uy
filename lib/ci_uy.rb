module CiUY
  def self.get_validation_digit(ci)
    ci.gsub!(/\D/, '')
    if ci.size == 6 
      ci = '0'+ci
    end
    a = 0
    (0..6).each do |i|
      a += ("2987634"[i].chr.to_i * ci[i].chr.to_i)
    end
    (10 - (a % 10)).to_s[-1].chr
  end

  def self.validate_ci(ci)
    ci.gsub!(/\D/, '')
    dig = ci[-1].chr
    ci = ci[0..-2]
    self.get_validation_digit(ci) == dig
  end

  def self.get_random_ci
    ci = rand(1000000..9999999).to_s
    ci += get_validation_digit(ci)
    ci
  end
end

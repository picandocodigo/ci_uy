require 'minitest/spec'
require 'minitest/pride'
require 'minitest/autorun'
require 'ci_uy'

describe CiUY do
  it "should return a valid checker digit" do
    ci = "1111111"
    assert 1, CiUY.get_validation_digit(ci)

    ci = "2222222"
    assert 2, CiUY.get_validation_digit(ci)
  end

  it "should validate numbers" do
    ci = "11111111"
    assert CiUY.validate_ci(ci)
  end

  it "should validate numbers even when using dots and dashes" do
    ci = "1.111.111-1"
    assert CiUY.validate_ci(ci)

    ci = "1-111/111/1"
    assert CiUY.validate_ci(ci)
  end

  it "should not validate wrong numbers" do
    ci = "1.111.222.1"
    assert !CiUY.validate_ci(ci)
  end

  it "should get a valid random ci number" do
    ci = CiUY.get_random_ci
    assert CiUY.validate_ci(ci)
  end
end

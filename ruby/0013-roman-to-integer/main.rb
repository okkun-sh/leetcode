# @param {String} s
# @return {Integer}
def roman_to_int(s)
  h = {
    I: 1,
    V: 5,
    X: 10,
    L: 50,
    C: 100,
    D: 500,
    M: 1000,
  }
  res = 0
  ary = s.chars
  ary.each_with_index do |v, i|
    n = h[v.to_sym]
    n2 = ary[i+1]
    if n2 && n < h[n2.to_sym]
      res -= n
    else
      res += n
    end
  end

  return res
end

require 'minitest/autorun'

class Test < Minitest::Test
  def test_roman_to_int
    assert_equal 3, roman_to_int("III")
    assert_equal 58, roman_to_int("LVIII")
    assert_equal 1994, roman_to_int("MCMXCIV")
  end
end

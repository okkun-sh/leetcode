# @param {String} s
# @return {Boolean}
def is_valid(s)
  ary = []
  s.chars.each do |str|
    puts ary
    if str == "(" || str == "{" || str == "["
      ary.push str
    elsif str == ")"
      return false if ary.pop != "(" 
    elsif str == "}"
      return false if ary.pop != "{"
    elsif str == "]"
      return false if ary.pop != "["
    end
  end
  true
end

require 'minitest/autorun'

class Test < Minitest::Test
  def test_is_valid
    assert_equal true, is_valid("()")
    assert_equal true, is_valid("()[]{}")
    assert_equal false, is_valid("(]")
    assert_equal true, is_valid("{[]}")
  end
end

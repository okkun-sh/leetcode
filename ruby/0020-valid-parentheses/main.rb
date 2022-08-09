# @param {String}
# @return {Boolean}
def is_valid(s)
  ary = []
  s.chars.each do |str|
    case str
    when "(", "{", "["
      ary.push str
    when ")"
      return false if ary.pop != "(" 
    when "}"
      return false if ary.pop != "{"
    when "]"
      return false if ary.pop != "["
    end
  end
  ary.length === 0 ? true : false
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

# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  res = 0
  str = strs.shift
  str.chars.each_with_index do |c, i|
    break if strs[0..-1].any? {|s| s[i] != c}
    res += 1
  end
  return "" unless res
  str[0, res]
end

require 'minitest/autorun'

class Test < Minitest::Test
  def test_longest_common_prefix
    assert_equal "fl", longest_common_prefix(["flower","flow","flight"])
    assert_equal "", longest_common_prefix(["dog","racecar","car"])
  end
end

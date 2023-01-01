# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} list1
# @param {ListNode} list2
# @return {ListNode}
def merge_two_lists(list1, list2)
  list1.concat(list2).sort
end

require 'minitest/autorun'

class Test < Minitest::Test
  def test_is_valid
    assert_equal [1,1,2,3,4,4], merge_two_lists([1,2,4], [1,3,4])
    assert_equal [], merge_two_lists([], [])
    assert_equal [0], merge_two_lists([], [0])
  end
end

# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
  c = 0
  nums.each_with_index do |x, i|
    if nums[i] != val
      nums[c] = nums[i]
      c += 1
    end
  end
  c
end

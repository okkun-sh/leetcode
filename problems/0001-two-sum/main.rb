def two_sum(nums, target)
  hash = {}
  nums.each_with_index do |n, i|
    hash[n] = i
  end

  nums.each_with_index do |n, i|
    complement = target - n

    return [i, hash[complement]] if hash[complement] && hash[complement] != i
  end
end

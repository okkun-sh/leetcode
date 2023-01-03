# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
    nums.each_with_index do |num, i|
        if num == target
            return i
        end
    end
    nums.push(target).sort!
    nums.each_with_index { |num, i| return i if num == target } 
end

use std::collections::HashMap;

pub struct Solution;

impl Solution {
    pub fn two_sum(nums: Vec<i32>, target: i32) -> Vec<i32> {
        let mut map = HashMap::new();
        for (index, val) in nums.iter().enumerate() {
            let i = target - val;
            match map.get(&i) {
                None => {
                    map.insert(val, index);
                }
                Some (s) => return vec![*s as i32, index as i32]
            }
        }
        vec![]
    }
}
#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn ex1() {
        assert_eq!(
            vec![0, 1], Solution::two_sum(vec![2, 7, 11, 15], 9)
        );
    }

    #[test]
    fn ex2() {
        assert_eq!(
            vec![1, 2], Solution::two_sum(vec![3, 2, 4], 6)
        );
    }

    #[test]
    fn ex3() {
        assert_eq!(
            vec![0, 1], Solution::two_sum(vec![3, 3], 6)
        );
    }
}

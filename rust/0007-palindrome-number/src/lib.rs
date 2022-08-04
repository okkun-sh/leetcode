pub struct Solution;

impl Solution {
    pub fn is_palindrome(x: i32) -> bool {
        if x < 0 {
            return false
        }

        let str: String = x.to_string().chars().rev().collect();
        let num = match str.parse::<i32>() {
            Ok(n) => n,
            Err(_) => return false            
        };

        if x == num {
            return true
        }

        false
    }
}
#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn ex1() {
        assert_eq!(
            true, Solution::is_palindrome(121)
        );
    }

    #[test]
    fn ex2() {
        assert_eq!(
            false, Solution::is_palindrome(-121)
        );
    }

    #[test]
    fn ex3() {
        assert_eq!(
            false, Solution::is_palindrome(10)
        );
    }
}

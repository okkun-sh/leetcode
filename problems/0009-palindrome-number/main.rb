def is_palindrome(number)
  reverse_number = number.to_s.reverse
  number.to_s == reverse_number ? true : false
end

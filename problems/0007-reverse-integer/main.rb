def reverse(x)
  if x < 0
    i = -(x.to_s.reverse.to_i)
    return 0 if -2 ** 31 > i
  else
    i =  x.to_s.reverse.to_i
    return 0 if (2 ** 31 - 1) < i
  end
  i
end

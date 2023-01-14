# @param {String} s
# @return {Integer}
def length_of_last_word(s)
  res = ""
  s.strip.chars.each do |str|
    if str == " "
      res = ""
    else
      res += str
    end
  end

  res.length    
end

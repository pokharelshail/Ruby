
def caesar_cipher(str, cipher)
  result = ""
  str.each_char do |char|
    if char.match(/[a-z]/)
      result+=shift_char(char,cipher,'a','z')
    elsif char.match(/[A-Z]/)
      result += shift_char(char,cipher,'A','Z')
    else
      result += char
    end
  end
  result  
end

def shift_char(char,cipher,lower_bound,upper_bound)
  shifted = char.ord + cipher
  if shifted > upper_bound.ord
    (lower_bound.ord-1 + (shifted-upper_bound.ord)).chr
  else
    shifted.chr
  end  
end

puts caesar_cipher("What a string!", 5)

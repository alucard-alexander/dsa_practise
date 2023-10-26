def caesarCipher(s, k)
  # Write your code here
  # 65 - 90
  # 97 - 122

  # 48 - 57
  decipher_string = ''
  string_length = s.length
  i = 0
  while i < string_length
    ascii = s[i].ord
    if ascii > 64 && ascii < 91
      ascii += k
      while ascii > 90
        diff = ascii % 90
        ascii = 64 + diff
      end
    end
    if ascii > 96 && ascii < 123
      ascii += k
      while ascii > 122
        diff = ascii % 122
        ascii = 96 + diff
      end
    end
    if ascii > 47 && ascii < 58
      ascii += k
      # ascii = ascii % 57
      while ascii > 57
        diff = ascii % 57
        ascii = 47 + diff
      end
    end
    # p ascii, 'text --', ascii.chr
    decipher_string += ascii.chr
    i += 1
    p ascii
  end
  decipher_string
end
p caesarCipher('www.abc.xy', 87)
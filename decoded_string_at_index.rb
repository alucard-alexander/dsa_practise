def decode_at_index(s, k)
  s = s.chars
  decode = ''
  number_regex = /\A[+-]?\d+(\.\d+)?\z/
  for elem in s
    if number_regex.match elem
      d = elem.to_i
      length = decode.length
      (d - 1).times do
        decode += decode[0...length]
      end
    else
      decode += elem
    end
    return decode[k - 1] unless decode[k - 1].nil?
  end
  decode[k - 1]
end

p decode_at_index('y959q969u3hb22odq595', 222_280_369)

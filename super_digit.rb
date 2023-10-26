def superDigit(n, k)
  # Write your code here
  len = n.length
  super_digit = 0
  for i in 0..len
    super_digit += n[i].to_i
  end
  p super_digit * k
  supert_digit_integer(super_digit * k)
end

def supert_digit_integer(k)
  return k if k % 10 == k

  super_digit = 0
  while k.positive?
    super_digit += k % 10
    k /= 10
  end
  # p super_digit
  supert_digit_integer(super_digit)
end

p supert_digit_integer(116)

# p superDigit('9875', 4)
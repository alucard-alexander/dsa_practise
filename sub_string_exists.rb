# @param {String} s
# @param {String} t
# @return {Boolean}
def is_subsequence(s, t)
  s = s.chars
  t = t.chars
  elem_index = 0
  s.each do |elem|
    # elem_index = t.index(elem, elem_index)
    found = false
    t[elem_index..].each_with_index do |sub_elem, index|
      next unless sub_elem == elem

      elem_index = index + elem_index + 1
      found = true
      break
    end
    p elem_index
    return false unless found
  end
  true
end

p is_subsequence('aaaaaa', 'bbaaaa')

class ListNode
  attr_accessor :val, :next

  def initialize(val = 0, _next = nil)
    @val = val
    @next = _next
  end
end

l13 = ListNode.new(4)
l12 = ListNode.new(8, l13)
l11 = ListNode.new(7, l12)
l1 = ListNode.new(5, l11)

l23 = ListNode.new(1)
l22 = ListNode.new(1, l23)
l21 = ListNode.new(3, l22)
l2 = ListNode.new(2, l21)

# l1_number = ''
# while l1.next
#   l1_number += l1.val.to_s
#   l1 = l1.next
# end
# l1_number += l1.val.to_s
# l1_number = l1_number.reverse.to_i

# l2_number = ''
# while l2.next
#   l2_number += l2.val.to_s
#   l2 = l2.next
# end
# l2_number += l2.val.to_s
# l2_number = l2_number.reverse.to_i

# output = l1_number + l2_number
# p l1_number
# p l2_number
# p output
# output = output.to_s.chars.map(&:to_i)

# l3 = ListNode.new(output[0])
# output[1..-1].each do |elem|
#   l3 = ListNode.new(elem, l3)
# end



# p l1_number
# p l2_number

def add_two_numbers(l1, l2)
  add_two_numbers_with_overflow(l1, l2, false)
end

def add_two_numbers_with_overflow(l1, l2, overflow)
  return unless l1 || l2 || overflow
  val = (l1&.val || 0) + (l2&.val || 0) + (overflow ? 1 : 0)
  val -= 10 if (overflow = val >= 10)
  ListNode.new(val, add_two_numbers_with_overflow(l1&.next, l2&.next, overflow))
end

l3 = add_two_numbers(l1, l2)

while l3.next
  p l3.val
  l3 = l3.next
end
p l3.val

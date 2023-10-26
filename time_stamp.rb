def timeConversion(s)
  # Write your code here
  time = s.split(':')
  if time[2][2..] == 'PM' && time[0].to_i != 12
    time[0] = time[0].to_i + 12
  elsif time[0] == '12' && time[2][2..] == 'AM'
    time[0] = time[0].to_i - 12
  end
  if time[0].to_i < 10
    time[0] = "0#{time[0].to_i}"
  end

  p time.join(':')[..-3]
end

timeConversion('12:45:54PM')

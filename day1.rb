

def day1_part1(digits)
  sum = 0
  a = digits.split('')
  a.each_with_index do |d, index|
    # lookahead = 0
    # lookahead = index+1 if index != a.length-1
    # sum += d.to_i if d == a[lookahead]

    lookahead = 0

    if index != a.length-1
      lookahead = index+1
    else
      lookahead = 0
    end

    sum += d.to_i if d == a[lookahead]
  end

  puts sum

  return sum
end

def day1_part2(digits)
  sum = 0
  a = digits.split('')
  a.each_with_index do |d, index|
    lookahead = a.length/2

    next_num = (index + lookahead) % a.length

    # if index != a.length-1
    #   lookahead = index+1
    # else
    #   lookahead = 0
    # end

    sum += d.to_i if d == a[next_num]
  end

  puts sum

  return sum
end

day1_part2(ARGV[0])

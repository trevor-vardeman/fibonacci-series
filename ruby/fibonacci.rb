def fibonacci(num)
  first_num = 0
  second_num = 0
  current_sum = 0
  count = 0
  until count == num
    if count == 0
      second_num += 1
      current_sum = first_num + second_num
      count += 1
    else
      current_sum = first_num + second_num
      first_num = second_num
      second_num = current_sum
      count += 1
    end
  end
  current_sum
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: 0"
  puts "=>", fibonacci(0)

  puts

  puts "Expecting: 1"
  puts "=>", fibonacci(2)

  puts

  puts "Expecting: 55"
  puts "=>", fibonacci(10)
end
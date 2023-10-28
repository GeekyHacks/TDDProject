class Solver
  def factorial(anynum)
    if anynum.is_a?(Integer) && anynum >= 0
      result = 1
      (1..anynum).each do |num|
        result *= num
      end
      result
    else
      puts 'Invalid input. Please provide a positive integer.'
    end
  end

  def reverse(str)
    if str.is_a?(String)
      str.reverse

    else
      puts 'Invalid input. Please provide a string '

    end
  end
end

solver = Solver.new
puts solver.factorial(5)
puts solver.factorial(0)
puts solver.factorial(-2)
puts solver.reverse('word')
puts solver.reverse(23)

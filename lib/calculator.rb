class Calculator
  def add(x, y)
    x + y
  end

  def subtract(x, y)
    x - y
  end

  def reduce_sum(array)
    array.reduce { |sum, num| sum + num }
    # reduce argument gives the number at which to start.
    # the two parameters are provided (sum and num) where sum is the running total and num is the current number as we iterate through the array.
    # the argument sum + num tells the reduce method which operation to perform to update the sum
    # we can also write the shorthand array.reduce(:+), which does the same as the above
  end

  def reduce_diff(array)
    array.reduce { |diff, num| diff - num }
    # start is the number to begin subtracting from, the array is the numbers you wish to subtract. So start = 20, and array = [10, 2, 2, 2]. So diff = 4
  end
end
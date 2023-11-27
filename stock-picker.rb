# a method takes in an array of stock prices, one for each hypothetical day
# return a pair of days representing the best day to buy and the best day to sell
def stock_picker(array)
  # start with the first num in array
  min = array[0]
  min_index = 0
  difference = 0
  result = []

  # go through every num in array
  array.each_with_index do |num, index|
    # store the value & index if it is the lowest
    if num < min
      min = num
      min_index = index
    end

    # store the biggest profit encountered, update the result
    if num - min > difference
      difference = num - min
      result = [min_index, index]
    end
  end
  result
end

stock_picker([17,3,6,9,15,8,6,1,10])


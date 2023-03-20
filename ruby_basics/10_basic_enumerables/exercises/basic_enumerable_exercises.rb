def display_current_inventory(inventory_list)
  # use #each to iterate through each item of the inventory_list (a hash)
  # use puts to output each list item "<key>, quantity: <value>" to console
  inventory_list.each {|key, value| puts "#{key}, quantity: #{value}"}
end

def display_guess_order(guesses)
  # use #each_with_index to iterate through each item of the guesses (an array)
  # use puts to output each list item "Guess #<number> is <item>" to console
  # hint: the number should start with 1
  guesses.each_with_index {|item, number| puts "Guess ##{number+1} is #{item}"}
end

def find_absolute_values(numbers)
  # use #map to iterate through each item of the numbers (an array)
  # return an array of absolute values of each number
  return numbers.map{|number| (number).abs}
  # (number).abs means absolute number
end

def find_low_inventory(inventory_list)
  # use #select to iterate through each item of the inventory_list (a hash)
  # return a hash of items with values less than 4
  return inventory_list.select {|key, value| value < 4}
  # tried this just item but got can't compare symbol to 4, I had to split it out into keys and values to compare
end

def find_word_lengths(word_list)
  # use #reduce to iterate through each item of the word_list (an array)
  # return a hash with each word as the key and its length as the value
  # hint: look at the documentation and review the reduce examples in basic enumerable lesson
  word_list.reduce(Hash.new(0)) do |key, value|
    # (0) of the Hash.new is optional here
    key[value] = value.size
    # first half adds the value as the key
    # second half assigns the length of value as the new value
    key
    # ruby returns the last item, so we need to return the full item so that it is actually included in the new Hash we are creating
  end
end

def coffee_drink?(drink_list)
  # use #include? to return true when the drink_list (array) contains the string "coffee" or "espresso"
  drink_list.include?("coffee")|| drink_list.include?("espresso")
  # tried grouping the terms, however include? only searches for one thing
  # can't put the evaluations one after the other as only one would be caught
  # therefore, all that is left is to set them up as an OR statement
end

def correct_guess?(guess_list, answer)
  # use #any? to return true when any element of the guess_list (array) equals the answer (number)
  guess_list.any?(answer)
  # any doesn't need a false condition built in for an empty array, it says no elements match code block therefore false
end

def twenty_first_century_years?(year_list)
  # use #all? to return true when all of the years in the year_list (array) are between 2001 and 2100
  # return false if year_list.empty?
  # removed the above as this function doesn't need to catch this edge case
  year_list.all? {|year| year.between?(2001, 2100)}
end

def correct_format?(word_list)
  # use #none? to return true when none of the words in the word_list (array) are in upcase
  word_list.none? {|word| word == word.upcase}
  # we want none of the words to be upcase
  # so, we check to say does this word match this word completely upcase
  # if none of the words match, then return true
end

def valid_scores?(score_list, perfect_score)
  # use #one? to return true when only one value in the score_list (hash) is equal to the perfect_score (number)
  score_list.one?{|key, value| value == perfect_score}
  # can't find much about this method
  # however, looks like you can split key and value apart, which means for each element we are iterating over, we can compare the value to perfect_score full array
end

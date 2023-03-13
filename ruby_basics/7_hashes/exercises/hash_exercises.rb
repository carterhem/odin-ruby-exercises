def create_favorite_hash(color, number)
  # return a hash with the following key/value pairs:
  # key of color (as a symbol) with value of the color argument
  # key of number (as a symbol) with the value of the number argument
  my_hash = {
    color: color,
    number: number
  }
end

def favorite_color(favorite_list)
  # return the value of the color key
  favorite_list[:color]
  # had it right the first time, forgot that no quotes needed when pulling a key that is a symbol
end

def favorite_number(favorite_list)
  # use #fetch to return the value of the number key or 42 if the key is not found
  favorite_list.fetch(:number, 42)
  # syntax is hash.fetch("ask", "default")
  # this one was tricky cause I made two mistakes: 1. number was a symbol and it took me forever to figure that out, 2 the number 42 wasn't supposed to be in quotes
end

def update_favorite_movie(favorite_list, movie)
  # Step 1: add/update the key of movie (as a symbol)
  favorite_list[:movie] = movie
  # reminder to look for symbol when redefining - and keep inputs top of mind
  # Step 2: return the hash (because Step 1 returns the value of the movie key)
  favorite_list
end

def remove_favorite_number(favorite_list)
  # Step 1: delete the number data
  favorite_list.delete(:number)
  # Step 2: return the hash (because Step 1 returns the value of the number key)
  favorite_list
end

def favorite_categories(favorite_list)
  # return the keys of favorite_list
  favorite_list.keys
  # simple.keys method
end

def favorite_items(favorite_list)
  # return the values of favorite_list
  favorite_list.values
  # simple.values method
end

def merge_favorites(original_list, additional_list)
  # merge the two hashes: original_list and additional_list
  original_list.merge(additional_list)
  # hash + hash2 does not work here, even defining a new one wont work as the third edge case has duplicate key. with merge incoming hash key has precedence
end

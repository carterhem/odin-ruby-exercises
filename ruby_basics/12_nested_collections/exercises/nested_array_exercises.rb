def blank_seating_chart(number_of_rows, seats_per_row)
  # return a 2d array to represent a seating chart that contains
  # number_of_rows nested arrays, each with seats_per_row entries of nil to
  # represent that each seat is empty.

  # Example: blank_seating_chart(2, 3) should return:
  # [
  #   [nil, nil, nil],
  #   [nil, nil, nil]
  # ]

  # NOTE: if one of the nested arrays is changed, the others should **not**
  # change with it

  seating_chart = Array.new(number_of_rows) {Array.new(seats_per_row)}
end

def add_seat_to_row(chart, row_index, seat_to_add)
  # take a chart (2d array)  and add seat_to_add to the end of the row that is
  # at row_index index of the chart, then return the chart
  chart[row_index].push(seat_to_add)
  chart
end

def add_another_row(chart, row_to_add)
  # take a chart and add row_to_add to the end of the chart,
  # then return the chart.
  # chart << row_to_add # either this method OR the below work
  chart.push(row_to_add)
  chart
end

def delete_seat_from_row(chart, row_index, seat_index)
  # take a chart and delete the seat at seat_index of the row at row_index of
  # the chart, then return the chart

  # Hint: explore the ruby docs to find a method for deleting from an array!
  chart[row_index].delete_at(seat_index)
  # find the position of the intended row in the chart
  # use delete_at to use seat_index to delete
  chart
  # return chart as always as I haven't saved it in a variable
end

def delete_row_from_chart(chart, row_index)
  # take a chart and delete the row at row_index of the chart,
  chart.delete_at(row_index)
  # remember that since we are using index we need to use delete_at, NOT delete
  # then return the chart
  chart
end

def count_empty_seats(chart)
  # take a chart and return the number of empty (nil) seats in it
  # NOTE: `chart` should **not** be mutated
  count = 0
  # initial variable to hold number
  chart.flatten.each do |name|
    # flatten the chart and walk through
    if name.nil? 
      count += 1
      # add to count if condition met
    end
  end
  count
  # must pass count back out with implicit return
end

def find_favorite(array_of_hash_objects)
  # take an array_of_hash_objects and return the hash which has the key/value
  # pair :is_my_favorite? => true. If no hash returns the value true to the key
  # :is_my_favorite? it should return nil

  # array_of_hash_objects will look something like this:
  # [
  #   { name: 'Ruby', is_my_favorite?: true },
  #   { name: 'JavaScript', is_my_favorite?: false },
  #   { name: 'HTML', is_my_favorite?: false }
  # ]

  # TIP: there will only be a maximum of one hash in the array that will
  # return true to the :is_my_favorite? key

  array_of_hash_objects.each do |hash_object|
    # p hash_object[:is_my_favorite?]
    if hash_object[:is_my_favorite?] == true
      return hash_object
    end
  end
  return nil
  # had to move this outside the each loop as otherwise if there were any times when :is_my_favorite? was false, then it would return nil and not check another pair
end

class String
  define_method(:word_count) do |string|

  target_word = self
  string_to_array = string.split(" ")
  array_length = string_to_array.length

  idx = 0
  target_word_counter = 0
  message_array = []

  while idx < (array_length)
    if target_word == string_to_array[idx]
      target_word_counter += 1
      idx += 1
    else
      idx += 1
    end
  end
  # string_to_array


  if target_word_counter == 1
    message_array.push("There is")
  elsif target_word_counter == 0
    message_array.push("There were none found.")
    stwing = message_array.join(" ")
    return stwing
  else
    message_array.push("There are")
  end

  message_array.push(target_word_counter)
  message_array.push(target_word)
  message_array.push("(s) found in that sentence.")

  stwing = message_array.join(" ")

  return stwing

  end
end

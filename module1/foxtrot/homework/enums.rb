def test_shortest_word
  words = ["apple", "banana", "cherry", "date", "eggplant"]

  found_word = words.max_by do |word|
    puts -word.length
  end
  "date" == found_word
end

test_shortest_word

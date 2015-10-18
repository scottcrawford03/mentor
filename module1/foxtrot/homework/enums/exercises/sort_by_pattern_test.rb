gem 'minitest'              # => true
require 'minitest/autorun'  # => true
require 'minitest/pride'    # => true

class SortByPatternTest < Minitest::Test

  def test_sort_alphabetically
    skip
    words = ["broccoli", "Carrots", "FISH", "Bacon", "candy"]
    transformed = []
    words.each do |word|
      transformed << [word.downcase, word]
    end
    transformed = transformed.sort
    sorted = []
    transformed.each do |sort_key, word|
      sorted << word
    end
    assert_equal ["Bacon", "broccoli", "candy", "Carrots", "FISH"], sorted
  end

  def test_sort_alphabetically_by_last_letter
    things = ["pill", "box", "glass", "water", "sponge"]              # => ["pill", "box", "glass", "water", "sponge"]
    transformed = []                                                  # => []
    things.each do |thing|                                            # => ["pill", "box", "glass", "water", "sponge"]
      transformed << [thing[-1], thing]                               # => [["l", "pill"]], [["l", "pill"], ["x", "box"]], [["l", "pill"], ["x", "box"], ["s", "glass"]], [["l", "pill"], ["x", "box"], ["s", "glass"], ["r", "water"]], [["l", "pill"], ["x", "box"], ["s", "glass"], ["r", "water"], ["e", "sponge"]]
    end                                                               # => ["pill", "box", "glass", "water", "sponge"]
    transformed = transformed.sort                                    # => [["e", "sponge"], ["l", "pill"], ["r", "water"], ["s", "glass"], ["x", "box"]]
    sorted = []                                                       # => []
    transformed.each do |sort_key, thing|
      puts sort_key
      puts thing                           # => [["e", "sponge"], ["l", "pill"], ["r", "water"], ["s", "glass"], ["x", "box"]]
      sorted << thing                                                 # => ["sponge"], ["sponge", "pill"], ["sponge", "pill", "water"], ["sponge", "pill", "water", "glass"], ["sponge", "pill", "water", "glass", "box"]
    end                                                               # => [["e", "sponge"], ["l", "pill"], ["r", "water"], ["s", "glass"], ["x", "box"]]
    assert_equal ["sponge", "pill", "water", "glass", "box"], sorted  # => true
  end

  def test_sort_by_distance
    skip
    distances = ["1cm", "9cm", "30cm", "4cm", "2cm"]
    transformed = []
    # Your code goes here
    transformed = transformed.sort
    sorted = []
    transformed.each do |sort_key, distance|
      sorted << distance
    end
    assert_equal ["1cm", "2cm", "4cm", "9cm", "30cm"], sorted
  end

  def test_sort_by_length
    skip
    words = ["heteromorph", "ancyloceratina", "bioengineering", "mathematical", "bug"]
    # Your code goes here
    assert_equal ["bug", "heteromorph", "mathematical", "ancyloceratina", "bioengineering"], sorted
  end

  def test_sort_by_proximity_to_ten
    skip
    prices = [3.02, 9.91, 17.9, 10.01, 11.0]
    # Your code goes here
    assert_equal [10.01, 9.91, 11.0, 3.02, 17.9], sorted
  end

  def test_sort_by_number_of_cents
    skip
    prices = [3.02, 9.91, 7.9, 10.01, 11.0]
    # Your code goes here
    assert_equal [11.0, 10.01, 3.02, 7.9, 9.91], sorted
  end

end

# >> Run options: --seed 40603
# >>
# >> # Running:
# >>
# >> .SSSSS
# >>
# >> Finished in 0.001321s, 4543.3067 runs/s, 757.2178 assertions/s.
# >>
# >> 6 runs, 1 assertions, 0 failures, 0 errors, 5 skips
# >>
# >> You have skipped tests. Run with --verbose for details.
# >> 6 tests (5 skipped)
# >> 1 assertions, 0 failures, 0 errors
# >>
# >> 4402.82 tests/s, 733.80 assertions/s
# >>
# >> Finished in 0.0014 seconds

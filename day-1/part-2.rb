=begin
Considering every single measurement isn't as useful as you expected: there's just too much noise in the data.

Instead, consider sums of a three-measurement sliding window.

Your goal now is to count the number of times the sum of measurements in this sliding window increases from the previous sum. So, compare A with B, then compare B with C, then C with D, and so on. Stop when there aren't enough measurements left to create a new three-measurement sum.

Consider sums of a three-measurement sliding window. How many sums are larger than the previous sum?
=end


INPUT_FILE = 'input'
WINDOW_SIZE = 3


def main
  inputs = File.readlines(INPUT_FILE, chomp: true).map(&:to_i).each_cons(WINDOW_SIZE).map(&:sum)

  inputs.select.with_index { |e, i| inputs.fetch(i+1,0) > e }.length
end

puts main

=begin
As the submarine drops below the surface of the ocean, it automatically performs a sonar sweep of the nearby sea floor. On a small screen, the sonar sweep report (your puzzle input) appears: each line is a measurement of the sea floor depth as the sweep looks further and further away from the submarine.

The first order of business is to figure out how quickly the depth increases, just so you know what you're dealing with - you never know if the keys will get carried into deeper water by an ocean current or a fish or something.

To do this, count the number of times a depth measurement increases from the previous measurement. (There is no measurement before the first measurement.)

How many measurements are larger than the previous measurement?
=end



INPUT_FILE = 'input'


def main
  inputs = File.readlines(INPUT_FILE, chomp: true).map(&:to_i)

  inputs.select.with_index { |e, i| inputs.fetch(i+1,0) > e }.length
end

puts main

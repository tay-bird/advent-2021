=begin
Based on your calculations, the planned course doesn't seem to make any sense.
You find the submarine manual and discover that the process is actually slightly
more complicated.

In addition to horizontal position and depth, you'll also need to track a third
value, aim, which also starts at 0. The commands also mean something entirely
different than you first thought:

- down X increases your aim by X units.
- up X decreases your aim by X units.
- forward X does two things:
  - It increases your horizontal position by X units.
  - It increases your depth by your aim multiplied by X.

Again note that since you're on a submarine, down and up do the opposite of what
you might expect: "down" means aiming in the positive direction.

Using this new interpretation of the commands, calculate the horizontal position
and depth you would have after following the planned course. What do you get if
you multiply your final horizontal position by your final depth?
=end


INPUT_FILE = 'input'

def main
  inputs = File.readlines(INPUT_FILE, chomp: true)
  parser = -> (d) { inputs.collect { |e| e.start_with?(d) ? e[-1].to_i : 0 } }
  
  nav = [parser.call('forward'), parser.call('up'), parser.call('down')]
  nav.transpose.collect{ |e| e[0] }.sum * nav.transpose.collect.with_index{ |e, i| e[0] * (nav[2][0..i].sum - nav[1][0..i].sum)}.sum
end

puts main

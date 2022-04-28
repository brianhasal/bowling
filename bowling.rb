def reduce_pins(start_pins, pins_hit) # Returns Pins Still Standing
  start_pins -= pins_hit
end


def bowling
  score = 0
  # pins_left = reduce_pins(10, 7)
  # return "Wahoo, #{pins_left} pins left!"
  score = round(score)
  p score
end

# puts bowling

# def round # Returns Score of player in round
#   p pins_left = 10
#   pnrg = Random.new
#   p pins_hit = pnrg.rand(0..pins_left)
#   # score = reduce_pins(pins_left, pins_hit)
#   reduce_pins(pins_left, pins_hit)
#   # return score
# end

def round(input_score) #returns score of current player
  score = input_score
  pins_left = 10
  pnrg = Random.new
  pins_hit = pnrg.rand(0..pins_left)
  puts "Rolled and hit #{pins_hit} pins."
  roll1 = reduce_pins(pins_left, pins_hit) #Returns pins left

  if pins_hit < 10
    if pins_hit == 0
      puts "Gutter ball! Womp, womp"
    end
    pins_left = roll1
    pins_hit = pnrg.rand(0..pins_left)
    puts "Rolled again and hit #{pins_hit} pins."
    roll2 = reduce_pins(pins_left, pins_hit) #Returns pins left
    puts "I have #{roll2} pins left standing."
    if roll1 == 10 && roll2 == 10
      puts "Jesus Christ, man."
      return "The score for this round is #{10 - roll2}"
    elsif roll2 > 0 
      puts "Shucks, I still have pins left."   
      return "The score for this round is #{10 - roll2}"
    elsif roll2 == 0
      puts "You picked up the spare!"
      return "The score for this round is #{10 - roll2}"
    end




  elsif pins_hit == 10
    return "That's a strike!"
  end

end

puts round(0)
# bowling()
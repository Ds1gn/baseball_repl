@location = ["high", "middle", "low"]
@r_location = @location.sample

@pitch_type = ["fastball", "curveball", "change-up"]
@r_pitch_type = @pitch_type.sample

@hit = ["single"]

@foul = ["foul-ball"]

xtra_hit = ["double", "triple", "Home-Run"]
@r_xtra_hit = xtra_hit.sample     

out = ["grounded-out", "flied-out", "lined-out"] 
@r_out = out.sample

p "Welcome to Ruby Baseball!"

p "May I have your name please"
@name = gets.chomp

while name = ~/\d/ #checking for a digit
  p "Was that a typo?"
  p "What's your name?"
  @name = gets.chomp
end

p "Hello #{@name}! My name is Ruby Foo. Prepare yourself for a journey back in time - to a period in time when computer graphics didn't exist and your parents used an abacus to solve math problems. Ruby is the ultimate text baseball game! Press 'enter' to learn how to play."
enter = gets.chomp

puts "Ruby Baseball is simple. As batter, you will guess the type of pitch and its location. There are only hits and outs. There is no score and no balls. Press 'enter' to hit some baseballs!"
enter = gets.chomp

    while true

      p "Guess location. Options: high or middle or low"
      location = gets.chomp
      @r_location = @location.sample

    #checking for correct input
      if !["high", "middle", "low"].include?(location)
        p "That's not a location"
        redo
      end


      p "Guess pitch type. Options: fastball or curveball or change-up"  
      pitch_type = gets.chomp
      @r_pitch_type = @pitch_type.sample

    #checking for correct input
      unless ["fastball", "curveball", "change-up"].include?(pitch_type)
        p "That's not a pitch"
        p "Guess pitch type. Options: fastball or curveball or change-up"
        pitch_type = gets.chomp
      end  

      pitcher = @r_location, @r_pitch_type
      hitter = location, pitch_type

      puts "The pitch was a #{pitcher}, you guessed #{hitter}"

      if location == @r_location && pitch_type == @r_pitch_type
        puts "You guessed right! Home-Run"

      elsif location != @r_location && pitch_type != @r_pitch_type
        puts "You #{@r_out}"

      elsif location != @r_location && pitch_type == @r_pitch_type
        p "You hit a #{@hit}"

      elsif location == @r_location && pitch_type != @r_pitch_type
        p "You hit a #{@foul}"

      else location == @r_location || pitch_type == @r_pitch_type
        puts "You hit a #{@r_xtra_hit}"
      end
    redo
end


#need to add weighted sample. i.e. [1,2,3,4].weighted_sample([1,1,1,1000])    
    

#   elsif @pitch_type == "fastball" and r_pitch_type == "curveball"
#     puts "#{r_neg_result}"

#   elsif @pitch_type == "fastball" and r_pitch_type == "change-up"
#     puts "#{r_neg_result}"

#   elsif @pitch_type == "curveball" and r_pitch_type == "fastball"
#     puts "#{r_neg_result}"

#   elsif @pitch_type == "curveball" and r_pitch_type == "change-up"
#     puts "#{r_pos_result}"

#   elsif @pitch_type == "change-up" and r_pitch_type == "fastball"
#     puts "#{r_neg_result}"

#   elsif @pitch_type == "change-up" and r_pitch_type == "curveball"
#     puts "#{r_pos_result}"
#   end    
# end

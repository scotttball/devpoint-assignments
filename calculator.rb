
def main_menu
  puts " "
  puts "SCOTT'S MAGICAL CALCULATOR"
  puts "**************************"
  puts "I am a simple calculator application.  I can add, subtract, multiply, and divide."
end

def first_number
  puts " "
  puts "What is your first value?"
  @firstvalue = gets.to_i
end

def second_number
  puts " "
  puts "What is your second value?"
  @secondvalue = gets.to_i
end

def computation
  puts " "
  puts "Type 1 to add, 2 to subtract, 3 to multiply, or 4 to divide: "
  operation_selection = gets.to_i
  case operation_selection
    when 1
      add
    when 2
      substract
    when 3
      multiply
    when 4
      divide
    else
      puts "Error: please choose a listed type"
  end
end

def add
  answer = @firstvalue + @secondvalue
  puts " "
  puts "Answer: #{answer}" 
  want_to_try_again
end

def substract
  answer = @firstvalue - @secondvalue
  puts " "
  puts "Answer: #{answer}"
  want_to_try_again
end

def multiply
  answer = @firstvalue * @secondvalue
  puts " "
  puts "Answer: #{answer}"
  want_to_try_again
end

def divide
  answer = @firstvalue / @secondvalue
  puts " "
  puts "Answer: #{answer}"
  want_to_try_again
end 

def want_to_try_again
  puts " "
  puts "Want to try again? Y/N"
  ynvalue = gets.strip.upcase
  if ynvalue == "Y"
    run_stuff
  else
    exit 0
  end
end

def run_stuff
  main_menu
  first_number
  second_number
  computation
end
run_stuff
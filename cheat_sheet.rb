def main_menu
  puts " "
  puts "Cheat Sheet"
  puts "------------"
  puts "1. Command Line"
  puts "2. Sublime Text"
  puts "3. Search"
  puts "4. Quit"
  puts "What is your choice?"
  choice = gets.to_i
  if choice == 1
    command_line_menu
  elsif choice == 2
    sublime_text_menu
  elsif choice == 3
    search_menu
  elsif choice == 4
    exit
  else 
    puts " "
    puts "*************************************"
    puts "Please choose one of the open choices"
    puts "*************************************"
    main_menu
  end
end

def command_line_menu
  puts " "
  puts "Command Line"
  puts "------------"
  puts "1. cd"
  puts "2. mv"
  puts "3. pwd"
  puts "4. mkdir"
  puts "5. Return to main menu"
  puts "6. Quit"
  puts "What is your choice?"
  choice2 = gets.to_i
  if choice2 == 1 
    puts `man cd`
    command_line_menu
  elsif choice2 == 2
    puts `man mv`
    command_line_menu
  elsif choice2 == 3
    puts `man pwd`
    command_line_menu
  elsif choice2 == 4
    puts `man mkdir`
    command_line_menu
  elsif choice2 == 5
    main_menu
  elsif choice2 == 6
    exit
  else
    puts " "
    puts "*************************************"
    puts "Please choose one of the open choices"
    puts "*************************************"
    command_line_menu
  end
end

def sublime_text_menu
  puts `open https://www.sublimetext.com/docs/commands`
  main_menu
end

def search_menu
  puts " "
  puts "Search"
  puts "------------"
  puts "1. Return to main menu"
  puts "2. Quit"
  puts "What would you like to search? (eg. pwd, cd, ls, mkdir, rm, mv, etc.)"
  choice3 = gets.strip
    if choice3 == "1"
      main_menu
    elsif choice3 == "2"
      exit
    else
      puts `man #{choice3}`
      search_menu 
    end
end
main_menu
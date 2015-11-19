# require "pry"
# cmd_line = -> { command_line }
# sub_lime = -> { sublime_text_menu }
search = -> (input) {puts `man #{input}`}
main = -> { main_menu }
quit = -> { exit(0) }

@menus = {
  main: {
    '1' => {text: 'Command Line', method: Proc.new { command_line }},
    '2' => {text: 'Sublime Text', method: Proc.new { sublime_text_menu }},
    '3' => {text: 'Search', method: search},
    '4' => {text: 'Quit', method: quit}
  },
  cmd_line_menu: {
    '1' => {text: 'mv', method: search},
    '2' => {text: 'pwd', method: search},
    '3' => {text: 'mkdir', method: search},
    '4' => {text: 'Return to main menu', method: main},
    '5' => {text: 'Quit', method: quit}
  },
  search_menu: {
    '1' => {text: 'Return to main menu', method: main},
    '2' => {text: 'Quit', method: quit},
    '3' => {text: 'What would you like to search? (eg. pwd, cd, ls, mkdir, rm, mv, etc.)'}
  }

}
# binding.pry
def main_menu
  hash = @menus[:main]
  puts " "
  puts "Welcome to the Main Menu!"
  @menus[:main].each {|key, value| puts "#{key}: #{value[:text]}"}
  # hash.each do |key, value|
  #   puts "#{key}: #{value[:text]}"
  # end
  puts " "
  puts "Make a selection:"
  selection = gets.strip
  case selection
  when '1','2','3','4'
    hash[selection][:method].call
  else
    puts "Please choose a valid selection"
    main_menu
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
  @menus[:search_menu].each do {|key, value| puts "#{key}: #{value[:text]}"}
  selection = gets.strip
  case selection
  when '1','2'
    hash[selection][:method].call
  else
    puts `man #{selection}`
  end
end

def command_line
  hash = @menus[:cmd_line_menu]
  puts "Command Line Menu"
  hash.each do |key, value|
    puts "#{key}: #{value[:text]}"
    end
  puts "Make a selection..."
  selection = gets.strip
  case selection
  when '1','2','3'
    puts `man #{hash[selection][:text]}`
  when '4','5'
    hash[selection][:method].call
  else
    puts "Please enter a valid response"
  end
  command_line
end

# def search_menu
#   hash = @menus[:search_menu]
#   puts "Search Menu"
#   hash.each do |key, value|
#     puts "#{key}: #{value}"
#   end
#   puts "What would you like to search?"
#   search_input =



main_menu


# def main_menu
#   puts " "
#   puts "Cheat Sheet"
#   puts "------------"
#   puts "1. Command Line"
#   puts "2. Sublime Text"
#   puts "3. Search"
#   puts "4. Quit"
#   puts "What is your choice?"
#   choice = gets.to_i
#   if choice == 1
#     command_line_menu
#   elsif choice == 2
#     sublime_text_menu
#   elsif choice == 3
#     search_menu
#   elsif choice == 4
#     exit
#   else 
#     puts " "
#     puts "*************************************"
#     puts "Please choose one of the open choices"
#     puts "*************************************"
#     main_menu
#   end
# end

# def command_line_menu
#   puts " "
#   puts "Command Line"
#   puts "------------"
#   puts "1. cd"
#   puts "2. mv"
#   puts "3. pwd"
#   puts "4. mkdir"
#   puts "5. Return to main menu"
#   puts "6. Quit"
#   puts "What is your choice?"
#   choice2 = gets.to_i
#   if choice2 == 1 
#     puts `man cd`
#     command_line_menu
#   elsif choice2 == 2
#     puts `man mv`
#     command_line_menu
#   elsif choice2 == 3
#     puts `man pwd`
#     command_line_menu
#   elsif choice2 == 4
#     puts `man mkdir`
#     command_line_menu
#   elsif choice2 == 5
#     main_menu
#   elsif choice2 == 6
#     exit
#   else
#     puts " "
#     puts "*************************************"
#     puts "Please choose one of the open choices"
#     puts "*************************************"
#     command_line_menu
#   end
# end

# def sublime_text_menu
#   puts `open https://www.sublimetext.com/docs/commands`
#   main_menu
# end

# def search_menu
#   puts " "
#   puts "Search"
#   puts "------------"
#   puts "1. Return to main menu"
#   puts "2. Quit"
#   puts "What would you like to search? (eg. pwd, cd, ls, mkdir, rm, mv, etc.)"
#   choice3 = gets.strip
#     if choice3 == "1"
#       main_menu
#     elsif choice3 == "2"
#       exit
#     else
#       puts `man #{choice3}`
#       search_menu 
#     end
# end
# main_menu
module Prompter

  def main_menu
  	puts '------- MAIN MENU -------'
	puts 'create -create a new diary'
	puts 'login -log in to an existing diary'
	puts 'quit -exit the program'
	puts 'Enter a command'
	gets.chomp.strip
  end
  
  def diary_menu(name)
  	puts '---------' + name.upcase + '---------'
    puts 'display -display entries' 
	puts 'append -add an entry' 
    puts 'back -back to main menu'
    puts 'quit -exit the program'
	puts 'Enter a command'
	response = gets.chomp
  end

end
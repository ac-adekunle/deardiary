require 'date'
require_relative 'diary'
require_relative 'prompter'

class Session
  extend Prompter
  def run
	loop do
	  main_menu_response = Session.main_menu
		
		if main_menu_response == 'create' || main_menu_response == 'login'
		  puts 'Enter the diary name'
		  name = gets.chomp.downcase.split.join
		  loop do
		  	diary = Diary.new({name: name})
		  	diary_menu_response = Session.diary_menu(name)
		  	  if diary_menu_response == 'append'    
		  	    puts 'Type entry and press enter to save'
		  	    diary_entry = gets.chomp
		 	    diary.append(diary_entry)
		      elsif diary_menu_response == 'display'
		  	    diary.display
		  	  elsif diary_menu_response == 'back'
		  	  	break
		      elsif diary_menu_response == 'quit'
		      	exit
		      else
		      	puts 'Command not found. Would you like to "append","display", or go "back" to the main menu?'
		      end
		    diary.close	
		   end

	    elsif main_menu_response == 'quit'
	      break
	    else
		  puts 'Command not found. Would you like to "create", "login", or "quit"?'
	    end

	end
  end

end

a = Session.new
a.run




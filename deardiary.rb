require 'date'
require_relative 'diary'

class Session

  def run
	loop do
	  puts '------- MAIN MENU -------'
	  puts 'create -create a new diary'
	  puts 'login -log in to an existing diary'
	  puts 'quit -exit the program'
	  puts 'Enter a command'
	  
	  response = gets.chomp
		
		if response == 'create' || response == 'login'
		  puts 'Enter the diary name'
		  name = gets.chomp.downcase.split.join

		  loop do
		  	diary = Diary.new({name: name})
		    puts '****** '+ name + ' ******'
		    puts 'display -display entries' 
		    puts 'append -add an entry' 
		    puts 'back -back to main menu'
		    puts 'quit -exit the program'
		    puts 'Enter a command'
		    response = gets.chomp
		  	  if response == 'append'    
		  	    puts 'Type entry and press enter to save'
		  	    response = gets.chomp
		 	    diary.append(response)
		      elsif response == 'display'
		  	    diary.display
		  	  elsif response == 'back'
		  	  	break
		      elsif response == 'quit'
		      	exit
		      else
		      	puts 'Command not found. Would you like to "append","display", or go "back" to the main menu?'
		      end
		    diary.close	

		   end

	    elsif response == 'quit'
	      break
	    else
		  puts 'Command not found. Would you like to "create", "login", or "cancel"?'
	    end

	end
  end

end

a = Session.new
a.run




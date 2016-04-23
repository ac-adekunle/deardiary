require_relative 'diary'
class Session

	def run
	  puts 'create or login?'
	  response = gets.chomp
		if response == 'create'
		  puts 'Provide a name.'
		  name = gets.chomp
		  Diary.new({name: name})
		elsif response == 'login'
		  puts 'Name?'
		  name = gets.chomp
		  a = Diary.new({name: name})
		  puts 'display, append, exit'
		  response = gets.chomp
		  if response == 'append'
		  	puts 'Type entry and press enter'
		  	entry = gets.chomp
		 	a.append(entry)
		 	exit
		  elsif response == 'display'
		  	a.display
		  	exit
		  end
		else
		  'Unrecognized command'
		  exit
		end
	end
end

a = Session.new
a.run

#start

#ask for create or login
	#if create, create new diary, ask for login or exit

		#if exit, exit
		#if login, authenticate - ask for username and password
			#if incorrect, ask to reenter

			#if correct, show menu of options 
				#display
				#add
				#exit

			#Exit
				#Exit program

			#Add
				#ask for entry, to cancel, enter 'cancel'
					#if cancel, show menu of options
					#else
						#open diary.txt 
						#if already an entry from same day, ask whether to overwrite or cancel
							#if cancel,show menu of options
							#else if overwrite, delete last entry, add new entry, close
						#else, add entry along with today's date, close diary.txt, show confirmation, show menu of options
			#display
				#display contents of diary.text


# ruby deardiary.rb 
# >> Login or Create
# Create
# >> Name of Diary
# Lola
# >>Password
# Adekunle
# >>Login, please enter Name
# Lola
# >>Password
# Adekunle
# >>Valid. Would you like to add, display, or exit






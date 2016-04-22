#start

#ask for password

#authenticate 

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




class Diary
  attr_reader :name, :password, :file
  
  def initialize(args)
  	@name =  args.fetch(:name)
  	@file = File.open(name+".txt", "a+")
  end

  def append(entry)
  	file.puts(entry)
  	file.close
  	'Your entry has been saved.'
  end

  def display
  	File.foreach(file) {|x| print x }
  	file.close
  end

end








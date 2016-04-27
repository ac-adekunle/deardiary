require 'date'
require_relative 'encryptor'

class Diary
  attr_reader :name, :file
  
  def initialize(args)
  	@name =  args.fetch(:name)
  	@file = File.open(name+".txt", "a+")
  end

  def append(response)
  	entry = Date.today.to_s + ' | ' + response
  	encrypted_entry = self.encrypt(entry)
  	file.puts(encrypted_entry)
  	file.close
  	'Your entry has been saved.'
  end

  def encrypt(plain)
    Crypta.encrypt(plain)
  end

  def decrypt(encrypted)
  	Crypta.decrypt(encrypted)
  end

  def display
  	File.foreach(file) do |x| 
  	  print self.decrypt(x.chomp) + "\n"
  	end
  	file.close
  end
  
end








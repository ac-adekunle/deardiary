require 'openssl'

module Crypta
  KEY = "\xE3\xB3\x89\x92\xF8\xB0\x1C\xEC\x03:\f-\xA2\xA3J\xA1"
  IV = "\xB3\x91\xA3]\xFF\xCB\x15\x91-0y\xBC\xCCW9\xA7"

  def encrypt(plain)
    cipher = OpenSSL::Cipher::AES.new(128, :CBC)
    cipher.encrypt
    cipher.key = KEY
    cipher.iv =  IV
    cipher.update(plain) + cipher.final 
  end

  def decrypt(encrypted)
    cipher = OpenSSL::Cipher::AES.new(128, :CBC)  
    cipher.decrypt
    cipher.key = KEY
    cipher.iv = IV
    cipher.update(encrypted) + cipher.final
  end

end





require 'openssl'

class Crypta
  @@cipher = OpenSSL::Cipher::AES.new(128, :CBC)
  @@key = "\xE3\xB3\x89\x92\xF8\xB0\x1C\xEC\x03:\f-\xA2\xA3J\xA1"
  @@iv = "\xB3\x91\xA3]\xFF\xCB\x15\x91-0y\xBC\xCCW9\xA7"

  def self.encrypt(entry)
    @@cipher.encrypt
    @@cipher.key = @@key
    @@cipher.iv =  @@iv
    @@cipher.update(entry) + @@cipher.final 
  end

  def self.decrypt(encrypted)
    @@cipher.decrypt
    @@cipher.key = @@key
    @@cipher.iv = @@iv
    @@cipher.update(encrypted) + @@cipher.final
  end

end





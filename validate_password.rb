class ValidatePassword
  def initialize(password)
    @password  = password
  end

  def perform
    return false if @password.length < 6
    return false if @password.length > 24
    return false if (@password.split("") &  ("A".."Z").to_a).empty?
    return false if (@password.split("") &  ("a".."z").to_a).empty?
    return false if (@password.split("") &  ("0".."9").to_a).empty?
    return false if (@password.split("") &  ["!","@", "#", "$", "%", "&," "*", "+", "=", ":", ";", "?", "<", ">"]).empty?

    3.upto(@password.length) do |index|
      return false if @password[index-1] == @password[index-2] && @password[index-1] == @password[index]
    end

    true
  end

end

class Document < ActiveRecord::Base

attr_accessor :file
validates_presence_of :file
validates_presence_of :password
validates_presence_of :expiry_date
def password_strength
    errors.add(:password, "password is weak ") if
       password.length = 8 
    errors.add(:password, "password is strong") if
       password.length = 12 
  end
end

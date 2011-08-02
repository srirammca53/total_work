class User < ActiveRecord::Base
 attr_accessor :user
 has_attached_file :user, :styles => { :medium => "300x300>", :thumb => "100x100>" }

end

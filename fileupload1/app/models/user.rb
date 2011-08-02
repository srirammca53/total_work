class User < ActiveRecord::Base
 has_attached_file :avatar
 attr_accessor :avatar
end

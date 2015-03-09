class Project < ActiveRecord::Base
  has_secure_password
  belongs_to :artist
end

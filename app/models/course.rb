class Course < ActiveRecord::Base
  has_many :locations
  has_many :instructors
end

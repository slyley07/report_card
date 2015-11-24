class Location < ActiveRecord::Base
  has_many :courses
  has_many :instructors
  has_many :students
end

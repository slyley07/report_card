class Instructor < ActiveRecord::Base
  belongs_to :course
  belongs_to :location
end

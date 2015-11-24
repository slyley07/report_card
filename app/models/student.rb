class Student < ActiveRecord::Base
  belongs_to :course
  belongs_to :instructor
  belongs_to :location
end

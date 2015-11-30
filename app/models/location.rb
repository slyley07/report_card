class Location < ActiveRecord::Base
  has_many :courses
  has_many :instructors
  has_many :students

  # def find_instructors(id)
  #   SELECT DISTINCT "instructors".* FROM "locations" WHERE ("instructors"."location_id" = id);
  # end
end

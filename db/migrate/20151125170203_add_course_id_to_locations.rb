class AddCourseIdToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :course_id, :integer
  end
end

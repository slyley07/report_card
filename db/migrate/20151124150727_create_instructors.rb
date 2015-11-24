class CreateInstructors < ActiveRecord::Migration
  def change
    create_table :instructors do |t|
      t.string :name
      t.integer :course_id
      t.integer :location_id
      t.string :email

      t.timestamps null: false
    end
  end
end

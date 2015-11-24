class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.integer :location_id
      t.integer :course_id
      t.integer :instructor_id
      t.integer :google_q
      t.integer :html_q
      t.integer :css_q
      t.integer :js_q
      t.integer :jq_q
      t.integer :command_q
      t.integer :git_q
      t.integer :ruby_q
      t.integer :sinatra_q
      t.integer :rails_q
      t.integer :mvc_q
      t.integer :db_q
      t.string :email

      t.timestamps null: false
    end
  end
end

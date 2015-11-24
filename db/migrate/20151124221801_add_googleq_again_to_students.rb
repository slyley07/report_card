class AddGoogleqAgainToStudents < ActiveRecord::Migration
  def change
    add_column :students, :google_q, :integer
  end
end

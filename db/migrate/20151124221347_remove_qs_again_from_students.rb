class RemoveQsAgainFromStudents < ActiveRecord::Migration
  def change
    remove_column :students, :google_q, :string
  end
end

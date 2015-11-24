class AddTaToInstructors < ActiveRecord::Migration
  def change
    add_column :instructors, :ta, :boolean
  end
end

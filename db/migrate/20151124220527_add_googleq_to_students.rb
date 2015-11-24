class AddGoogleqToStudents < ActiveRecord::Migration
  def change
    remove_column :students, :google_q, :string
    remove_column :students, :html_q, :string
    remove_column :students, :css_q, :string
    remove_column :students, :js_q, :string
    remove_column :students, :jq_q, :string
    remove_column :students, :command_q, :string
    remove_column :students, :git_q, :string
    remove_column :students, :ruby_q, :string
    remove_column :students, :sinatra_q, :string
    remove_column :students, :rails_q, :string
    remove_column :students, :mvc_q, :string
    remove_column :students, :db_q, :string

    add_column :students, :google_q, :integer
    add_column :students, :html_q, :integer
    add_column :students, :css_q, :integer
    add_column :students, :js_q, :integer
    add_column :students, :jq_q, :integer
    add_column :students, :command_q, :integer
    add_column :students, :git_q, :integer
    add_column :students, :ruby_q, :integer
    add_column :students, :sinatra_q, :integer
    add_column :students, :rails_q, :integer
    add_column :students, :mvc_q, :integer
    add_column :students, :db_q, :integer
  end
end

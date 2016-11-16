class Limit < ActiveRecord::Migration
  def change
  	change_column :users, :name, :string, :limit => 20
  	change_column :users, :email, :string, :limit => 30
  	change_column :transactions, :title, :string, :limit => 20
  	change_column :transactions, :description, :string, :limit => 255
  	change_column :accounts, :name, :string, :limit => 25
  end
end

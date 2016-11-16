class Length < ActiveRecord::Migration
  def change
  	change_column :users, :username, :string, :limit => 255
  end
end

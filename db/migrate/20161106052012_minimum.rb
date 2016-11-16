class Minimum < ActiveRecord::Migration
  def change
  	change_column(:users, :username,:string, {:minimum=>5})
  	
end
